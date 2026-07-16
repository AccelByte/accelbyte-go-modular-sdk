#!/usr/bin/env bash
# Bump one service module's version if codegen produced uncommitted changes this run. Invoked
# per-module by `make bumpif_module SERVICE=<svc>`, fanned out over every module by
# `make bumpif_all`. Wired into Jenkinsfile.generate right after `make version_ags` and before
# `git add --all`/commit, so an uncommitted-tree diff is exactly "what codegen changed this
# generation run" — nothing is committed yet at that point, and this runs exactly once per
# nightly invocation, so no idempotency-across-reruns handling is needed.
set -euo pipefail

cd "$(git rev-parse --show-toplevel)"

SERVICE="${SERVICE:-}"
if [ -z "$SERVICE" ]; then
	echo "error: SERVICE is not set" >&2
	exit 1
fi

SVC_DIR="${SERVICE}-sdk"
VERSION_FILE="${SVC_DIR}/pkg/version.txt"
if [ ! -f "$VERSION_FILE" ]; then
	echo "error: $VERSION_FILE not found; is '$SERVICE' a valid service name?" >&2
	exit 1
fi

CHANGED=$(git status --porcelain -- "spec/${SERVICE}.json" "$SVC_DIR/pkg")

if [ -z "$CHANGED" ]; then
	echo "[bumpif] skipped $SERVICE | 0 changes found"
	exit 2
fi

VERSION_OLD=$(tr -d '\n' <"$VERSION_FILE")

make version_module SERVICE="$SERVICE"

# services-api itself is intentionally not tidied here: it has no replace directives, so its
# go.mod needs the bumped <svc>-sdk version to have a real git tag first, which only happens
# later, manually, when cutting a release.
go mod tidy -C "$SVC_DIR"
go mod tidy -C "services-api/pkg/service/${SERVICE}"

VERSION_NEW=$(tr -d '\n' <"$VERSION_FILE")

echo "[bumpif] bumped $SERVICE ($VERSION_OLD -> $VERSION_NEW) | $(echo "$CHANGED" | wc -l) change(s) found"
