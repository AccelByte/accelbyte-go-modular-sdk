<a name="ags//v2025.4"></a>
## [For AGS v2025.4]
### chore
- **!:** remove matchmaking, session browser and history services (breaking)
- **:** revert empty variables, create new file for empty variables
### test
- **integration:** change achievement stat code
- **integration:** remove create user v3 test
### fix
- **test:** use create test user endpoint for integration test
- **sdk!:** change return type of AuthTokenValidator.Initialize to return an error


<a name="ags//v2025.3"></a>
## [For AGS v2025.3]
### chore
- **:** add readme for response error
- **loginqueue:** add spec for login queue service
- **loginqueue:** regenerate sdk, cli, docs
- **sdk:** generated from openapi spec commit: 79683a20ff945862cdc0c4aef8d903a0f30bf2f5
- **integration:** fix the challenge test
- **docs:** add migration guide for ags 2025.1
- **sdk:** update version for 2025.1
- **:** version bump
- **:** update go work for csm
- **:** go mod tidy
- **docs:** update CHANGELOG
- **sdk:** generated from openapi spec commit: c9a1cf2c1d884560ad92b44673ca85cd10c2b23a
- **sdk:** update version for 2025.2
- **docs:** add migration guide for ags 2025.2
- **:** version bump
- **makefile:** test_broken_link - update docs portal url
- **samples:** getting started - update iam-sdk dependency
- **sdk:** add a clearer message for error in token validation
### docs
- **readme:** update doc links
- **common use cases:** update
### feat
- **loginqueue:** add, version, gowork, cli gomod
- **loginqueue:** integration - add login queue test
### test
- **integration:** gametelemetry - remove deprecated endpoints
- **integration:** fix configuration template shared name randomization
### fix
- **token-validation:** remove log.Fatal in token validation
- **:** - tag other usages that will need changing function signature with todo
### ci
- **lint:** disable godox linter


<a name="ags//v2025.2"></a>
## [For AGS v2025.2]
### chore
- **:** add readme for response error
- **loginqueue:** add spec for login queue service
- **loginqueue:** regenerate sdk, cli, docs
- **sdk:** generated from openapi spec commit: 79683a20ff945862cdc0c4aef8d903a0f30bf2f5
- **integration:** fix the challenge test
- **docs:** add migration guide for ags 2025.1
- **sdk:** update version for 2025.1
- **:** update go work for csm
- **:** version bump
- **:** go mod tidy
- **docs:** update CHANGELOG
### docs
- **readme:** update doc links
### feat
- **loginqueue:** add, version, gowork, cli gomod
- **loginqueue:** integration - add login queue test


<a name="loginqueue-sdk/v0.1.0"></a>
## [For AGS v0.1.1]
### chore
- **loginqueue:** add spec for login queue service
- **loginqueue:** regenerate sdk, cli, docs
### feat
- **loginqueue:** add, version, gowork, cli gomod
- **loginqueue:** integration - add login queue test

<a name="ags/v2025.1"></a>

## [For AGS v2025.1]

### chore

- **:** add readme for response error
- **:** version bump
- **:** go mod tidy
- **:** update go work for csm
- **sdk:** generate go extend sdk (2025-02-06T22:42:54+00:00)
- **sdk:** update version for 2025.1
- **integration:** fix the challenge test
- **docs:** add migration guide for ags 2025.1
- **docs:** update CHANGELOG

### docs

- **readme:** update doc links

<a name="lobby-sdk/v0.1.0-alpha.8"></a>
## [For AGS v0.1.0-alpha.8]
### fix
- **lobby:** remove auth token hard requirement

<a name="services-api/v0.1.0-alpha.6"></a>
## [For AGS v0.1.0-alpha.6]
### test
- **integration:** add lobby scheme
- **integration:** add match2 option's name
- **integration:** remove deprecated services
### chore
- **integration:** add player record cloudsave test

<a name="ags/v3.80"></a>
## [For AGS v3.80]

### docs

- **:** add migration guides
- **:** update CHANGELOG.md
### chore
- **test:** integration - gametelemetry disable starter
- **docs:** regenerate common use case
- **:** regenerate sdk with the new error responses
- **:** - samples - test - docs - manual code wrapper
- **samples:** adjust the go mod temporarily
- **test:** improvement regarding response error
- **:** improvement response error
- **:** update package to address vulnerability issues
- **test:** integration - add display name on iam create user
- **cli:** add root_generated.go
- **makefile:** version_module target - remove logic to update services-api/go.mod


<a name="lobby-sdk/v0.1.0-alpha.8"></a>
## [lobby-sdk/v0.1.0-alpha.8]
### fix
- **lobby:** remove auth token hard requirement


<a name="services-api/v0.1.0-alpha.6"></a>
## [services-api/v0.1.0-alpha.6]
### test
- **integration:** add lobby scheme
- **integration:** add match2 option's name
- **integration:** remove deprecated services
### chore
- **integration:** add player record cloudsave test


<a name="ags/v3.80.0"></a>
## [ags/v3.80.0]
### feat
- **:** add challenge service integration tests
- **:** generate csm service in go sdk, cli test and docs
### chore
- **test:** add reset time in challenge integration test
- **sample:** cli - enable websocket reconnect
- **samples:** cli - use the same close handler
- **test:** integration - add missing integration test
- **docs:** integration - update common use cases docs
- **sdk:** generated from openapi spec commit: 36ae5c39dfabaa8b38695823c2a32ce307953790
### ci
- **github:** switch to new ags versioning ags/vxxxx.x
### test
- **:** add integration test for csm
- **:** temporary disable notification subscription test


<a name="lobby-sdk/v0.1.0-alpha.8"></a>

## [lobby-sdk/v0.1.0-alpha.8]

### fix

- **lobby:** remove auth token hard requirement

<a name="services-api/v0.1.0-alpha.6"></a>

## [services-api/v0.1.0-alpha.6]

### test

- **integration:** add lobby scheme
- **integration:** add match2 option's name
- **integration:** remove deprecated services

### chore

- **integration:** add player record cloudsave test

<a name="ags/v3.78.0"></a>

## [ags/v3.79.0]

### chore

- **:** remove event log integration test
- **docs:** add check broken links
- **ws:** set connect calls to reconnect: false
- **ws:** add method for locking and unlocking
- **:** remove event log
- **:** add version for ags
- **jenkinsfile:** typo for version makefile
- **docs:** update game record cloudsave integration test
- **integration:** add player record cloudsave test
- **docs:** add player record cloudsave integration test
- **sdk:** generated from openapi spec commit: 1c77a9144567c530d18bcb81c8553bd9da0bef90

### feat

- **:** change user-agent string
- **ws:** add WithScheme WSConnectionOption
- **ws:** add on status changed callback

### fix

- **docs:** check broken links
- **ws:** remove hard-coded ws scheme
- **:** remove unnecessary locks
- **ws:** clean up goroutines
- **ws:** fix lint errors
- **lobby:** remove auth token hard requirement
- **core:** add pointer in token conversion websocket

### test

- **ws:** update tests that use ws mock server
- **:** update makefile to use standalone ws mock server
- **:** update tests to use standalone ws mock server
- **ws:** update status assertion
- **:** update tests to use standalone ws mock server
- **integration:** add lobby scheme
- **integration:** add match2 option's name
- **integration:** remove deprecated services

### ci

- **:** disable lint for test for now

### docs

- **common use case:** remove deprecated services
- **:** add migration guides

<a name="ags/v3.77.0"></a>

## [ags/v3.77.0]
### feat

- **:** add websocket client base implementation

### test

- **lobby:** add tests for websocket client lobby implementation
- **integration:** match2 - update alliance ruleset
- **integration:** add inventory integration test
- **core:** improve websocket connection status
### docs

- **migrations:** add migration-guide-v0.72-to-v0.73.md
- **readme:** improve lobby implementation

### chore

- **:** improve the core and test
- **:** linter issue
- **:** refactor the code and test
- **:** update readme, migration guide, test, and samples for lobby websocket
- **:** testing using pong
- **:** update CHANGELOG.md and go sum getting started

### fix

- **utils:** data races

[ags/v3.77.0]: https://github.com/AccelByte/accelbyte-go-modular-sdk/compare/ags/v3.76.0...ags/v3.77.0