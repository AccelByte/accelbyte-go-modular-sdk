<a name="lobby-sdk//v0.2.1"></a>
## [For AGS v0.2.1]
### test
- **lobby:** update lobby test


<a name="ags//v2025.7"></a>
## [For AGS v2025.7]
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
- **sdk:** generated from openapi spec commit: c9a1cf2c1d884560ad92b44673ca85cd10c2b23a
- **sdk:** update version for 2025.2
- **docs:** add migration guide for ags 2025.2
- **:** version bump
- **makefile:** test_broken_link - update docs portal url
- **samples:** getting started - update iam-sdk dependency
- **sdk:** add a clearer message for error in token validation
- **sdk:** - generated from openapi spec commit: a2c66653b15e9f6a946f1b0f72073f508f4f1299 - fix csm integration test: updated model name - add csm migration guide
- **sdk:** update user agent version for 2025.3
- **:** version bump + go mod tidy
- **:** revert empty variables, create new file for empty variables
- **sdk:** generated from openapi spec commit: 9ca5e9e83b5d18a9479f3a3c3c340a4d678b10ef
- **:** tidy modules
- **:** restore session browser
- **sdk:** generated from openapi spec commit: fef3c1c943d88ac8d7f32f66bb1ecba464bfb503
- **:** refresh gitignore
- **sdk:** generated from openapi spec commit: bd085b93730e32909c685723c9c75ab51167b912
- **:** version bump
- **:** mod tidy leftover modules
- **:** remove irrelevant sample apps
### docs
- **readme:** update doc links
- **common use cases:** update
- **:** fix url
- **:** add method comments for LoginOrRefresh*
- **:** add mention of WithContext login functions
- **common-use-case:** update
- **readme:** remove broken link
### feat
- **loginqueue:** add, version, gowork, cli gomod
- **loginqueue:** integration - add login queue test
- **:** remove app client id on extend app deletion
- **auth:** add WithContext variants of login functions
- **wsm:** move WSConnection and other related structs to services-api
- **:** add some util functions
### test
- **integration:** gametelemetry - remove deprecated endpoints
- **integration:** fix configuration template shared name randomization
- **integration:** change achievement stat code
- **integration:** remove create user v3 test
- **ws:** add delay in test
- **lobby:** update lobby test
### fix
- **token-validation:** remove log.Fatal in token validation
- **:** - tag other usages that will need changing function signature with todo
- **test:** use create test user endpoint for integration test
- **services-api:** fix upload http method
- **auth:** fix lint error
- **:** bring back removed variable
- **ws:** fix reading from closed connections
- **:** concurrent map access by using rwmutex
- **:** change default refresh token rate to 0.8
- **wsm:** fix core implementation and code-generated parts of the wsm packages
### ci
- **lint:** disable godox linter
- **:** consolidate extend-builder-batch linux-amd64
- **github:** change label to extend-builder-ci
- **generate:** remove cli and integration test stage
- **nightly:** add params for cli and integration test
- **nightly-starter:** remove redundant Jenkinsfile.nightly-starter
- **lint:** upgrade the linter version
- **github:** better utilize all available build machines
- **:** consolidate job channel


<a name="lobby-sdk//v0.2.1"></a>
## [For AGS v0.2.1]
### test
- **lobby:** update lobby test


<a name="services-api//v0.1.1"></a>
## [For AGS v0.1.1]
### test
- **integration:** add lobby scheme
- **integration:** add match2 option's name
- **integration:** remove deprecated services
- **integration:** gametelemetry - remove deprecated endpoints
- **integration:** fix configuration template shared name randomization
- **integration:** change achievement stat code
- **integration:** remove create user v3 test
### chore
- **integration:** add player record cloudsave test
- **integration:** fix the challenge test
### fix
- **services-api:** fix upload http method


<a name="ags//v2025.6"></a>
## [For AGS v2025.6]
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
- **sdk:** - generated from openapi spec commit: a2c66653b15e9f6a946f1b0f72073f508f4f1299 - fix csm integration test: updated model name - add csm migration guide
- **sdk:** update user agent version for 2025.3
- **:** version bump + go mod tidy
- **:** revert empty variables, create new file for empty variables
- **sdk:** generated from openapi spec commit: 9ca5e9e83b5d18a9479f3a3c3c340a4d678b10ef
- **:** tidy modules
- **:** restore session browser
- **sdk:** generated from openapi spec commit: fef3c1c943d88ac8d7f32f66bb1ecba464bfb503
- **:** refresh gitignore
### docs
- **readme:** update doc links
- **common use cases:** update
- **:** fix url
- **:** add method comments for LoginOrRefresh*
- **:** add mention of WithContext login functions
- **common-use-case:** update
### feat
- **loginqueue:** add, version, gowork, cli gomod
- **loginqueue:** integration - add login queue test
- **:** remove app client id on extend app deletion
- **auth:** add WithContext variants of login functions
- **wsm:** move WSConnection and other related structs to services-api
- **:** add some util functions
### test
- **integration:** gametelemetry - remove deprecated endpoints
- **integration:** fix configuration template shared name randomization
- **integration:** change achievement stat code
- **integration:** remove create user v3 test
- **ws:** add delay in test
- **lobby:** update lobby test
### fix
- **token-validation:** remove log.Fatal in token validation
- **:** - tag other usages that will need changing function signature with todo
- **test:** use create test user endpoint for integration test
- **services-api:** fix upload http method
- **auth:** fix lint error
- **:** bring back removed variable
- **ws:** fix reading from closed connections
- **:** concurrent map access by using rwmutex
- **:** change default refresh token rate to 0.8
- **wsm:** fix core implementation and code-generated parts of the wsm packages
### ci
- **lint:** disable godox linter
- **:** consolidate extend-builder-batch linux-amd64
- **github:** change label to extend-builder-ci
- **generate:** remove cli and integration test stage
- **nightly:** add params for cli and integration test
- **nightly-starter:** remove redundant Jenkinsfile.nightly-starter
- **lint:** upgrade the linter version
- **github:** better utilize all available build machines
- **:** consolidate job channel


<a name="lobby-sdk//v0.1.1"></a>
## [For AGS v0.1.1]
### fix
- **lobby:** remove auth token hard requirement


<a name="services-api//v0.1.1"></a>
## [For AGS v0.1.1]
### test
- **integration:** add lobby scheme
- **integration:** add match2 option's name
- **integration:** remove deprecated services
- **integration:** gametelemetry - remove deprecated endpoints
- **integration:** fix configuration template shared name randomization
- **integration:** change achievement stat code
- **integration:** remove create user v3 test
### chore
- **integration:** add player record cloudsave test
- **integration:** fix the challenge test
### fix
- **services-api:** fix upload http method


<a name="ags//v2025.5"></a>
## [For AGS v2025.5]
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
- **sdk:** - generated from openapi spec commit: a2c66653b15e9f6a946f1b0f72073f508f4f1299 - fix csm integration test: updated model name - add csm migration guide
- **sdk:** update user agent version for 2025.3
- **:** version bump + go mod tidy
- **:** revert empty variables, create new file for empty variables
- **sdk:** generated from openapi spec commit: 9ca5e9e83b5d18a9479f3a3c3c340a4d678b10ef
- **:** tidy modules
- **:** restore session browser
### docs
- **readme:** update doc links
- **common use cases:** update
- **:** fix url
- **:** add method comments for LoginOrRefresh*
- **:** add mention of WithContext login functions
### feat
- **loginqueue:** add, version, gowork, cli gomod
- **loginqueue:** integration - add login queue test
- **:** remove app client id on extend app deletion
- **auth:** add WithContext variants of login functions
### test
- **integration:** gametelemetry - remove deprecated endpoints
- **integration:** fix configuration template shared name randomization
- **integration:** change achievement stat code
- **integration:** remove create user v3 test
- **ws:** add delay in test
### fix
- **token-validation:** remove log.Fatal in token validation
- **:** - tag other usages that will need changing function signature with todo
- **test:** use create test user endpoint for integration test
- **services-api:** fix upload http method
- **auth:** fix lint error
- **:** bring back removed variable
- **ws:** fix reading from closed connections
### ci
- **lint:** disable godox linter
- **:** consolidate extend-builder-batch linux-amd64
- **github:** change label to extend-builder-ci


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