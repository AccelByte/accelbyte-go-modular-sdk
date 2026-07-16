# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## What this repo is

The **modular AccelByte Go SDK** (`accelbyte-go-modular-sdk`) for AccelByte Gaming Services
(AGS) — successor to the monolithic `accelbyte-go-sdk`. "Modular" means each AGS service is a
**separate Go module** (`iam-sdk`, `platform-sdk`, …) so consumers import only what they need.

**This repository is almost entirely generated output.** It is produced by the Python
generator in the sibling `justice-codegen-modular-sdk/` repo (the `go-modular-extend-sdk`
template) run against the OpenAPI specs in `spec/*.json`. `codegen.txt` pins the generator
commit used for the last generation. See the parent `../CLAUDE.md` for the producer/consumer
picture.

### Do not hand-edit generated files

Files beginning with `// Code generated. DO NOT EDIT.` are overwritten on the next
generation — this includes service clients (`pkg/<svc>client/`), models
(`pkg/<svc>clientmodels/`), service wrappers (`pkg/wrapper_*.go`), **and even the per-module
`go.mod` files**. To change generated code, edit the **templates in the generator repo** and
regenerate. Hand edits here are appropriate only for genuinely non-generated, hand-maintained
files (check the header first); the shared runtime in `services-api/` and the `samples/` are
where most legitimately hand-written code lives.

## Module layout

A `go.work` multi-module workspace (`go 1.23+`). Three kinds of modules:

- **Service modules** — `<svc>-sdk/` (e.g. `iam-sdk/`). Each contains:
  - `pkg/<svc>client/` — generated request/transport logic (go-openapi runtime based)
  - `pkg/<svc>clientmodels/` — generated request/response models + `errors.go` (known errors)
  - `pkg/wrapper_*.go` — higher-level service wrappers exposing `*Short` convenience methods
- **`services-api/`** — the shared runtime used by all service modules: auth & token
  repositories (`pkg/repository`, `pkg/utils/auth`), client factory (`pkg/factory`),
  WebSocket manager (`pkg/wsm`), token validator, user-agent/FlightID utils, and tests.
- **Compatibility layer** — `services-api/pkg/service/<svc>/`, each its own module, built only
  under the `compat` build tag (`go build -tags compat`). This eases migration off the
  monolithic SDK; consumers remove it incrementally. Most `make` targets and integration
  tests use `-tags compat`.

`samples/` holds runnable example apps (also workspace modules); `docs/` holds generated
operation docs and migration guides.

## Build, lint, test

Targets in the `Makefile` run inside **Docker** (golang:1.23, golangci-lint v1.60.3) and most
require external paths/credentials passed as env vars:

```bash
make lint                                     # golangci-lint over every go.mod (.golangci.yml)
make lint-mod-tidy                            # verify go mod tidy is clean across modules
make samples                                  # build all samples/ with -tags compat
make test_core   SDK_MOCK_SERVER_PATH=<path>  # unit tests vs the mock server + httpbin
make test_cli    SDK_MOCK_SERVER_PATH=<path>  # CLI sample TAP tests vs the mock server
make test_integration ENV_FILE_PATH=<path>    # live tests against a real AGS env (needs creds)
```

`SDK_MOCK_SERVER_PATH` points at a checkout of the SDK mock-server tooling (separate repo); it
spins up HTTP and WebSocket mock servers seeded from `spec/`.

For quick local iteration without Docker, the standard toolchain works inside a single module:

```bash
cd iam-sdk && go build ./... && go test ./...
go build -tags compat ./...        # when touching the compat layer
```

## Versioning & releases

Each module is versioned and git-tagged independently (`<svc>-sdk/v<x.y.z>`,
`services-api/v<x.y.z>`, `ags/v<x.y.z>`). The repo-root `version.txt` is the AGS version;
per-module versions live in `<svc>-sdk/pkg/version.txt`. **Never hand-edit version strings or
the generated `go.mod` requires** — use the Makefile targets, which also rewrite dependent
`go.mod` files:

```bash
make version_ags [PATCH=1|MAJOR=1]                       # bump root AGS version + user agent
make version_module SERVICE=iam [PATCH=1]                # bump one service module
make version_services_api UPDATE_SERVICE=all             # bump shared runtime + fan out deps
make tag_module SERVICE=iam                              # create the module's git tag
make bumpif_module SERVICE=iam / bumpif_all               # bump+tidy modules changed this run
```

`make bumpif_all` (`scripts/bumpif.sh` under the hood) runs automatically, every nightly run, as
part of `Jenkinsfile.generate` — right after codegen regenerates files but before that job's
commit. It checks each service's uncommitted working-tree diff (codegen has written files to
disk but nothing is committed yet, so this is exactly "what changed this generation run"),
bumps the MINOR version of any changed module via `version_module`, and tidies the bumped
`<svc>-sdk` and its compat wrapper (`services-api/pkg/service/<svc>`). It does **not** tidy
`services-api` itself — that module has no `replace` directives, so its `go.mod` needs the new
`<svc>-sdk` git tags to exist first, which only happens later, manually, when cutting a release.

`make outstanding_deprecation` flags `// Deprecated: <date>` markers older than 6 months.

## Conventions

- **Commits**: Conventional Commits (`type(scope): description`) enforced by `commitlint`
  (`make check-commits`). CI runs on Jenkins (`Jenkinsfile*`); `Jenkinsfile.generate` is the
  nightly regeneration job that rebuilds this repo from the generator on `rc-nightly` and bumps
  any changed service module's version (`make bumpif_all`) in the same commit.
- **CHANGELOG.md** is curated and user-facing — not a mirror of git history.
- SDK usage (auth, automatic/on-demand token refresh, local token validation, WebSocket,
  FlightID, call-response handling) is documented in `README.md` and `docs/`.
