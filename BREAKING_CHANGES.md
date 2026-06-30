# Breaking Changes

## Introduce `repository.Session` and Per-SDK Client Struct

### Summary

A `Session` type is introduced in `services-api/pkg/repository` to bundle all repository dependencies. Every generated `*Service` wrapper struct and every SDK factory function now uses this type instead of individual repository fields.

### `services-api/pkg/repository` — New Type

```go
// New type: services-api/pkg/repository/session.go
type Session struct {
    ConfigRepository       ConfigRepository
    TokenRepository        TokenRepository
    RefreshTokenRepository RefreshTokenRepository
    FlightIdRepository     *utils.FlightIdContainer
}
```

### All `*Service` Wrapper Structs — Field Change

Every generated wrapper struct (e.g. `OAuth20Service`, `NamespaceService`, `CampaignService`, …) had individual repository fields replaced by a single `Session` field:

```go
// Before
type OAuth20Service struct {
    Client                 *iamclient.JusticeIamService
    ConfigRepository       repository.ConfigRepository
    TokenRepository        repository.TokenRepository
    RefreshTokenRepository repository.RefreshTokenRepository
    FlightIdRepository     *utils.FlightIdContainer
}

// After
type OAuth20Service struct {
    Client  *iamclient.JusticeIamService
    Session repository.Session
}
```

**Migration**: replace individual field assignments with a nested `Session` struct literal:

```go
// Before
svc := &iam.OAuth20Service{
    Client:                 httpClient,
    ConfigRepository:       cfgRepo,
    TokenRepository:        tokRepo,
    RefreshTokenRepository: refreshRepo,
    FlightIdRepository:     flightId,
}

// After
svc := &iam.OAuth20Service{
    Client: httpClient,
    Session: repository.Session{
        ConfigRepository:       cfgRepo,
        TokenRepository:        tokRepo,
        RefreshTokenRepository: refreshRepo,
        FlightIdRepository:     flightId,
    },
}
```

### Per-SDK Factory Functions — Signature and Return Type Change

Every SDK now has a top-level client struct with named fields for each service tag, and two factory functions:

```go
// New top-level client struct (example: IAM)
type IamClient struct {
    OAuth20          *OAuth20Service
    OAuth20Extension *OAuth20ExtensionService
    Bans             *BansService
    Clients          *ClientsService
    Config           *ConfigService
    // ... one field per tag
}

// New factory: accepts Session, returns *IamClient
func NewIamClient(session repository.Session) *IamClient

// HTTP-transport-only factory (was the old NewIamClient)
func NewIamHttpClient(configRepository repository.ConfigRepository) *iamclient.JusticeIamService
```

**Migration**:

```go
// Before: create HTTP client + each wrapper manually
httpClient := iam.NewIamClient(cfgRepo)
oAuth20Svc := &iam.OAuth20Service{Client: httpClient, ConfigRepository: cfgRepo, TokenRepository: tokRepo}
oAuth20ExtSvc := &iam.OAuth20ExtensionService{Client: httpClient, ConfigRepository: cfgRepo, TokenRepository: tokRepo}

// After: one call creates everything
session := repository.Session{ConfigRepository: cfgRepo, TokenRepository: tokRepo}
iamClient := iam.NewIamClient(session)
// Access services via named fields:
iamClient.OAuth20.TokenGrantV3Short(...)
iamClient.OAuth20Extension.UserAuthenticationV3Short(...)
```

If you need only the raw HTTP transport (e.g. for advanced use cases), use:

```go
httpClient := iam.NewIamHttpClient(cfgRepo)
```
