# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.

SHELL := /bin/bash

GOLANG_DOCKER_IMAGE := golang:1.18

.PHONY: samples

check-commits:
	docker run -t --rm -v $$(pwd):/data -w /data randondigital/commitlint:3.0 \
		sh -c "(npm list @commitlint/config-conventional || npm --loglevel=error install @commitlint/config-conventional@13.2.0) && commitlint --color false --verbose --from $$(git rev-parse origin/master)"

lint:
	rm -f lint.err
	find -type f -iname go.mod -not -path "*/.justice-codegen-sdk/*" -not -path "*/.cache/*" -exec dirname {} \; | while read DIRECTORY; do \
		echo "# $$DIRECTORY"; \
		docker run -t --rm -u $$(id -u):$$(id -g) -v $$(pwd):/data/ -w /data/ -e GOCACHE=/data/.cache/go-build -e GOLANGCI_LINT_CACHE=/data/.cache/go-lint golangci/golangci-lint:v1.42.1\
				sh -c "cd $$DIRECTORY && golangci-lint -v --timeout 5m --max-same-issues 0 --max-issues-per-linter 0 --color never run || (touch /data/lint.err && echo Lint Issue: $$DIRECTORY)"; \
	done
	[ ! -f lint.err ] || (rm lint.err && exit 1)

lint-mod-outdated:
	rm -f lint-mod-outdated.err
	find -type f -iname go.mod -not -path "*/.justice-codegen-sdk/*" -exec dirname {} \; | while read DIRECTORY; do \
		echo "# $$DIRECTORY"; \
		docker run -t --rm -u $$(id -u):$$(id -g) -v $$(pwd):/data/ -w /data/ -e GOCACHE=/data/.cache/go-build $(GOLANG_DOCKER_IMAGE) \
				sh -c "cd $$DIRECTORY && go list -u -m -json all 2>/dev/null -D gomodirectives" \
				| docker run -i --rm psampaz/go-mod-outdated:v0.7.0 -update -direct \
				| grep "github.com/AccelByte" && touch lint-mod-outdated.err || true; \
	done
	[ ! -f lint-mod-outdated.err ] || (rm lint-mod-outdated.err && exit 1)

lint-mod-tidy:
	rm -f lint-mod-tidy.err
	find -type f -iname go.mod -not -path "*/.justice-codegen-sdk/*" -exec dirname {} \; | while read DIRECTORY; do \
		echo "# $$DIRECTORY"; \
		docker run -t --rm -u $$(id -u):$$(id -g) -v $$(pwd):/data/ -w /data/ -e GOCACHE=/data/.cache/go-build $(GOLANG_DOCKER_IMAGE) \
				sh -c "cd $$DIRECTORY && go mod tidy || touch /data/lint.err"; \
	done
	[ ! -f lint-mod-tidy.err ] || (rm lint-mod-tidy.err && exit 1)

samples:
	rm -f samples.err
	find ./samples -type f -name main.go -exec dirname {} \; | while read DIRECTORY; do \
		echo "# $$DIRECTORY"; \
		docker run -t --rm -u $$(id -u):$$(id -g) -v $$(pwd):/data/ -w /data/ -e GOCACHE=/data/.cache/go-build $(GOLANG_DOCKER_IMAGE) \
				sh -c "cd '$$DIRECTORY' && go build -tags compat -o bin/" || touch samples.err; \
	done
	[ ! -f samples.err ]

test_core:
	@test -n "$(SDK_MOCK_SERVER_PATH)" || (echo "SDK_MOCK_SERVER_PATH is not set" ; exit 1)
	sed -i "s/\r//" "$(SDK_MOCK_SERVER_PATH)/mock-server.sh" && \
	trap "docker stop justice-codegen-sdk-mock-server; docker rm -f mylocal_httpbin" EXIT && \
	docker run -d --name mylocal_httpbin -p 8070:80 kennethreitz/httpbin && \
	(bash "$(SDK_MOCK_SERVER_PATH)/mock-server.sh" -s /data/spec &) && \
	(for i in $$(seq 1 10); do bash -c "timeout 1 echo > /dev/tcp/127.0.0.1/8080" 2>/dev/null && exit 0 || sleep 10; done; exit 1) && \
	docker run -t --rm -u $$(id -u):$$(id -g) -v $$(pwd):/data/ -w /data/ --network host \
		-e AB_HTTPBIN_URL=http://localhost -e GOCACHE=/data/.cache/go-build $(GOLANG_DOCKER_IMAGE) \
		sh -c "cd services-api && go test -v -race \
			github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/utils/... \
            github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/repository/..." && \
	docker run -t --rm -u $$(id -u):$$(id -g) -v $$(pwd):/data/ -w /data/ --network host \
		-e AB_HTTPBIN_URL=http://localhost -e GOCACHE=/data/.cache/go-build $(GOLANG_DOCKER_IMAGE) \
		sh -c "cd iam-sdk && go test -v -race github.com/AccelByte/accelbyte-go-modular-sdk/iam-sdk/pkg" && \
	docker run -t --rm -u $$(id -u):$$(id -g) -v $$(pwd):/data/ -w /data/ --network host \
		-e AB_HTTPBIN_URL=http://localhost -e GOCACHE=/data/.cache/go-build $(GOLANG_DOCKER_IMAGE) \
		sh -c "cd services-api/pkg/tests && go test -v -race \
			github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/tests/sdk"

test_integration:
	@test -n "$(ENV_FILE_PATH)" || (echo "ENV_FILE_PATH is not set" ; exit 1)
	docker run -t --rm -u $$(id -u):$$(id -g) --env-file $(ENV_FILE_PATH) -v $$(pwd):/data/ -w /data/ -e GOCACHE=/data/.cache/go-build $(GOLANG_DOCKER_IMAGE) \
			sh -c "cd services-api/pkg/tests && go test -tags compat -v github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/tests/integration"

test_cli:
	@test -n "$(SDK_MOCK_SERVER_PATH)" || (echo "SDK_MOCK_SERVER_PATH is not set" ; exit 1)
	rm -f test.err
	docker run -t --rm -u $$(id -u):$$(id -g) -v $$(pwd):/data/ -w /data/ -e GOCACHE=/data/.cache/go-build $(GOLANG_DOCKER_IMAGE) \
			sh -c "cd samples/cli && go build"
	sed -i "s/\r//" "$(SDK_MOCK_SERVER_PATH)/mock-server.sh" && \
			trap "docker stop justice-codegen-sdk-mock-server" EXIT && \
			(bash "$(SDK_MOCK_SERVER_PATH)/mock-server.sh" -s /data/spec &) && \
			(for i in $$(seq 1 10); do bash -c "timeout 1 echo > /dev/tcp/127.0.0.1/8080" 2>/dev/null && exit 0 || sleep 10; done; exit 1) && \
			sed -i "s/\r//" samples/cli/tests/* && \
			rm -f samples/cli/tests/*.tap && \
			for FILE in $$(ls samples/cli/tests/*.sh); do \
					echo "# $$(basename "$$FILE")"; \
					(set -o pipefail; PATH=samples/cli:$$PATH bash $${FILE} | tee "$${FILE}.tap") || touch test.err; \
			done
	[ ! -f test.err ]

test_broken_link:
	@test -n "$(SDK_MD_CRAWLER_PATH)" || (echo "SDK_MD_CRAWLER_PATH is not set" ; exit 1)
	rm -f test.err
	bash "$(SDK_MD_CRAWLER_PATH)/md-crawler.sh" -i README.md
	# DOCKER_SKIP_BUILD=1 bash "$(SDK_MD_CRAWLER_PATH)/md-crawler.sh" -i CHANGELOG.md
	(for FILE in $$(find docs -type f); do \
			(set -o pipefail; DOCKER_SKIP_BUILD=1 bash "$(SDK_MD_CRAWLER_PATH)/md-crawler.sh" -i $$FILE) || touch test.err; \
	done)
	DOCKER_SKIP_BUILD=1 bash "$(SDK_MD_CRAWLER_PATH)/md-crawler.sh" -i "https://docs.accelbyte.io/guides/customization/golang-sdk-guide.html"
	[ ! -f test.err ]

version_module:
	@test -n "$(SERVICE)" || (echo "SERVICE is not set" ; exit 1)
	@if [ -n "$$MAJOR" ]; then VERSION_PART=1; elif [ -n "$$PATCH" ]; then VERSION_PART=3; else VERSION_PART=2; fi && \
	if [ -n "$$CLEAR_SUFFIX" ]; then \
		VERSION_NEW=$$(sed -n "s/\([0-9]\+\.[0-9]\+\.[0-9]\+\).*/\1/p" $(SERVICE)-sdk/pkg/version.txt); \
	elif [ -n "$$SET_SUFFIX" ]; then \
		VERSION_NEW=$$(sed -n "s/\([0-9]\+\.[0-9]\+\.[0-9]\+\).*/\1/p" $(SERVICE)-sdk/pkg/version.txt); \
		VERSION_NEW=$${VERSION_NEW}$(SET_SUFFIX); \
	else \
		VERSION_NEW=$$(awk -v part=$$VERSION_PART -F. "{OFS=\".\"; \$$part+=1; print \$$0}" $(SERVICE)-sdk/pkg/version.txt); \
	fi && \
	VERSION_OLD=$$(cat $(SERVICE)-sdk/pkg/version.txt | tr -d '\n') && \
	echo "updating service $(SERVICE) version from: $$VERSION_OLD -> $$VERSION_NEW" && \
	echo $${VERSION_NEW} > $(SERVICE)-sdk/pkg/version.txt && \
	if [ $(SERVICE) = "iam" ]; then \
		echo $${VERSION_NEW} > services-api/pkg/service/iam/version.txt; \
		sed -i "s/github.com\/AccelByte\/accelbyte-go-modular-sdk\/$(SERVICE)-sdk v[0-9]\+\.[0-9]\+\.[0-9]\+.*/github.com\/AccelByte\/accelbyte-go-modular-sdk\/$(SERVICE)-sdk v$$VERSION_NEW/" services-api/go.mod; \
	fi && \
	sed -i "s/github.com\/AccelByte\/accelbyte-go-modular-sdk\/$(SERVICE)-sdk v[0-9]\+\.[0-9]\+\.[0-9]\+.*/github.com\/AccelByte\/accelbyte-go-modular-sdk\/$(SERVICE)-sdk v$$VERSION_NEW/" services-api/pkg/service/$(SERVICE)/go.mod && \
	sed -i "s/github.com\/AccelByte\/accelbyte-go-modular-sdk\/services-api\/pkg\/service\/$(SERVICE) v[0-9]\+\.[0-9]\+\.[0-9]\+.*/github.com\/AccelByte\/accelbyte-go-modular-sdk\/services-api\/pkg\/service\/$(SERVICE) v$$VERSION_NEW/" $(SERVICE)-sdk/go.mod && \
	sed -i "s/github.com\/AccelByte\/accelbyte-go-modular-sdk\/$(SERVICE)-sdk v[0-9]\+\.[0-9]\+\.[0-9]\+.*/github.com\/AccelByte\/accelbyte-go-modular-sdk\/$(SERVICE)-sdk v$$VERSION_NEW/" services-api/pkg/factory/go.mod

tag_module:
	@test -n "$(SERVICE)" || (echo "SERVICE is not set" ; exit 1)
	@VERSION_PATH=$(SERVICE)-sdk/pkg/version.txt && \
	if [ ! -f $$VERSION_PATH ]; then \
		echo "service $(SERVICE) not found cause $$VERSION_PATH does not exist"; \
		exit 1; \
	fi && \
	VERSION=$$(cat $$VERSION_PATH | tr -d '\n') && \
	GIT_TAG=$(SERVICE)-sdk/v$$VERSION && \
	if [ $$(git tag -l $$GIT_TAG) ]; then \
		echo "skip tagging cause tag: $$GIT_TAG already exist"; \
	else \
		echo "creating git tag: $$GIT_TAG"; \
		git tag -a $$GIT_TAG -m "release $(SERVICE) version: $$VERSION"; \
		git tag -a services-api/pkg/service/$(SERVICE)/v$$VERSION -m "release $(SERVICE) version: $$VERSION"; \
		if [ "$(SERVICE)" == "lobby" ]; then \
			git tag -a services-api/pkg/service/v$$VERSION -m "release $(SERVICE) version: $$VERSION"; \
		fi \
	fi

version_services_api:
	@test -n "$(UPDATE_SERVICE)" || (echo "UPDATE_SERVICE is not set" ; exit 1)
	@if [ -n "$$MAJOR" ]; then VERSION_PART=1; elif [ -n "$$PATCH" ]; then VERSION_PART=3; else VERSION_PART=2; fi && \
	if [ -n "$$CLEAR_SUFFIX" ]; then \
		VERSION_NEW=$$(sed -n "s/\([0-9]\+\.[0-9]\+\.[0-9]\+\).*/\1/p" services-api/pkg/version.txt); \
	elif [ -n "$$SET_SUFFIX" ]; then \
		VERSION_NEW=$$(sed -n "s/\([0-9]\+\.[0-9]\+\.[0-9]\+\).*/\1/p" services-api/pkg/version.txt); \
		VERSION_NEW=$${VERSION_NEW}$(SET_SUFFIX); \
	else \
		VERSION_NEW=$$(awk -v part=$$VERSION_PART -F. "{OFS=\".\"; \$$part+=1; print \$$0}" services-api/pkg/version.txt); \
	fi && \
	VERSION_OLD=$$(cat services-api/pkg/version.txt | tr -d '\n') && \
	echo "updating services-api version from: $$VERSION_OLD -> $$VERSION_NEW" && \
	echo $$VERSION_NEW > services-api/pkg/version.txt && \
	if [ "$(UPDATE_SERVICE)" == "all" ]; then \
		echo "update dependency for services-api version: $$VERSION_NEW on all services"; \
		find ./spec -type f -iname '*.json' | grep -oP '(?<=/)\w+(?=.json)' | xargs -I{} \
				sh -c 'sed -i "s/github.com\/AccelByte\/accelbyte-go-modular-sdk\/services-api v[0-9]\+\.[0-9]\+\.[0-9]\+.*/github.com\/AccelByte\/accelbyte-go-modular-sdk\/services-api v$$1/" {}-sdk/go.mod || exit 255' -- "$$VERSION_NEW"; \
		find ./spec -type f -iname '*.json' | grep -oP '(?<=/)\w+(?=.json)' | xargs -I{} \
				sh -c 'sed -i "s/github.com\/AccelByte\/accelbyte-go-modular-sdk\/services-api v[0-9]\+\.[0-9]\+\.[0-9]\+.*/github.com\/AccelByte\/accelbyte-go-modular-sdk\/services-api v$$1/" services-api/pkg/service/{}/go.mod || exit 255' -- "$$VERSION_NEW"; \
		sed -i "s/github.com\/AccelByte\/accelbyte-go-modular-sdk\/services-api v[0-9]\+\.[0-9]\+\.[0-9]\+.*/github.com\/AccelByte\/accelbyte-go-modular-sdk\/services-api v$$VERSION_NEW/" services-api/pkg/service/go.mod; \
	else \
		echo "update dependency for services-api version: $$VERSION_NEW on $(UPDATE_SERVICE) service"; \
		sed -i "s/github.com\/AccelByte\/accelbyte-go-modular-sdk\/services-api v[0-9]\+\.[0-9]\+\.[0-9]\+.*/github.com\/AccelByte\/accelbyte-go-modular-sdk\/services-api v$$VERSION_NEW/" $(UPDATE_SERVICE)-sdk/go.mod; \
		sed -i "s/github.com\/AccelByte\/accelbyte-go-modular-sdk\/services-api v[0-9]\+\.[0-9]\+\.[0-9]\+.*/github.com\/AccelByte\/accelbyte-go-modular-sdk\/services-api v$$VERSION_NEW/" services-api/pkg/service/$(UPDATE_SERVICE)/go.mod; \
		if [ "$(UPDATE_SERVICE)" == "lobby" ]; then \
			sed -i "s/github.com\/AccelByte\/accelbyte-go-modular-sdk\/services-api v[0-9]\+\.[0-9]\+\.[0-9]\+.*/github.com\/AccelByte\/accelbyte-go-modular-sdk\/services-api v$$VERSION_NEW/" services-api/pkg/service/go.mod; \
		fi \
	fi

tag_services_api:
	@VERSION=$$(cat services-api/pkg/version.txt | tr -d '\n') && \
	GIT_TAG=services-api/v$$VERSION && \
	if [ $$(git tag -l $$GIT_TAG) ]; then \
		echo "skip tagging cause tag: $$GIT_TAG already exist"; \
	else \
		echo "creating git tag: $$GIT_TAG"; \
		git tag -a $$GIT_TAG -m "release $(SERVICE) version: $$VERSION"; \
	fi

version_compat_module:
	@test -n "$(MOD_PATH)" || (echo "MOD_PATH is not set" ; exit 1)
	@test -f "$(MOD_PATH)/version.txt" || (echo "$(MOD_PATH)/version.txt not found in MOD_PATH"; exit 1)
	@if [ -n "$$MAJOR" ]; then VERSION_PART=1; elif [ -n "$$PATCH" ]; then VERSION_PART=3; else VERSION_PART=2; fi && \
	if [ -n "$$CLEAR_SUFFIX" ]; then \
		VERSION_NEW=$$(sed -n "s/\([0-9]\+\.[0-9]\+\.[0-9]\+\).*/\1/p" $(MOD_PATH)/version.txt); \
	elif [ -n "$$SET_SUFFIX" ]; then \
		VERSION_NEW=$$(sed -n "s/\([0-9]\+\.[0-9]\+\.[0-9]\+\).*/\1/p" $(MOD_PATH)/version.txt); \
		VERSION_NEW=$${VERSION_NEW}$(SET_SUFFIX); \
	else \
		VERSION_NEW=$$(awk -v part=$$VERSION_PART -F. "{OFS=\".\"; \$$part+=1; print \$$0}" $(MOD_PATH)/version.txt); \
	fi && \
	VERSION_OLD=$$(cat $(MOD_PATH)/version.txt | tr -d '\n') && \
	echo "updating $(MOD_PATH) version from: $$VERSION_OLD -> $$VERSION_NEW" && \
	echo $$VERSION_NEW > $(MOD_PATH)/version.txt

tag_compat_module:
	@test -n "$(MOD_PATH)" || (echo "MOD_PATH is not set" ; exit 1)
	@test -f "$(MOD_PATH)/version.txt" || (echo "$(MOD_PATH)/version.txt not found in MOD_PATH"; exit 1)
	@VERSION=$$(cat $(MOD_PATH)/version.txt | tr -d '\n') && \
	GO_MOD_PATH=$$(realpath --relative-to=$$(pwd) $(MOD_PATH)) && \
	GIT_TAG=$$GO_MOD_PATH/v$$VERSION && \
	if [ $$(git tag -l $$GIT_TAG) ]; then \
		echo "skip tagging cause tag: $$GIT_TAG already exist"; \
	else \
		echo "creating git tag: $$GIT_TAG"; \
		git tag -a $$GIT_TAG -m "release $$GO_MOD_PATH version: $$VERSION"; \
	fi

outstanding_deprecation:
	find * -type f -iname '*.go' \
		| xargs awk ' \
				BEGIN { \
					count_ok = 0; \
					count_not_ok = 0; \
					"date +%s -d \"6 months ago\"" | getline limit_epoch; \
				} \
				match($$0,/\/\/ *[Dd]eprecated: ([0-9]{4}-[0-9]{1,2}-[0-9]{1,2})/,since_date) { \
					"date +%s -d " since_date[1] | getline since_epoch; \
					if (limit_epoch < since_epoch) { \
						count_ok += 1; \
						print "ok - " FILENAME ":" $$0; \
					} \
					else { \
						count_not_ok += 1; \
						print "not ok - " FILENAME ":" $$0; \
					} \
				} \
				END { \
					exit (count_not_ok ? 1 : 0); \
				}' \
		| tee outstanding_deprecation.out
	@echo 1..$$(grep -c '^\(not \)\?ok' outstanding_deprecation.out) 