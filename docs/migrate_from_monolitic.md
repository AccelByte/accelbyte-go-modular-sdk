# Migration from accelbyte-go-sdk to accelbyte-go-modular-sdk

You can start using individual service SDKs:

**Before:**
```go
require (
    github.com/AccelByte/accelbyte-go-sdk {VERSION}
)
```

**After:**
```go
require (
    github.com/AccelByte/accelbyte-go-modular-sdk/iam-sdk {VERSION}
    github.com/AccelByte/accelbyte-go-modular-sdk/basic-sdk {VERSION}
    github.com/AccelByte/accelbyte-go-modular-sdk/services-api {VERSION}
)
```

Update your imports to use service-specific SDK packages:
```go
import "github.com/AccelByte/accelbyte-go-modular-sdk/iam-sdk/pkg/service"
import "github.com/AccelByte/accelbyte-go-modular-sdk/basic-sdk/pkg/service"
```

## Token Repository Implementation

accelbyte-go-sdk

```
type TokenRepository interface {
	Store(token interface{}) error
	GetToken() (*iamclientmodels.OauthmodelTokenResponse, error)
	RemoveToken() error
	TokenIssuedTimeUTC() time.Time
}
```

accelbyte-go-modular-sdk

```
type TokenRepository interface {
	Store(token interface{}) error
	GetToken() (*repository.Token, error) // previously *iamclientmodels.OauthmodelTokenResponseV3, now changed to *repository.Token
	RemoveToken() error
	TokenIssuedTimeUTC() time.Time
}
```

To help the implementation, use the `auth.DefaultTokenRepositoryImpl()` from `services-api` module.

## Migration Steps

### Phase 1: Update go.mod

Simply update your `go.mod` and build with compatibility tags.

### Phase 2: Update API Usage

After verifying your code works with the compatibility layer, you can gradually update specific parts:

**Service Instantiation:**
```go
oAuth20Service := &iam.OAuth20Service{
    Client:           iam.NewIamClient(auth.DefaultConfigRepositoryImpl()),  // previously factory.NewIamClient, now changed to iam.NewIamClient
    ConfigRepository: auth.DefaultConfigRepositoryImpl(), 
    TokenRepository:  auth.DefaultTokenRepositoryImpl(),
}

// New modular style (more granular control)
// Each service SDK can be used independently
```

### Phase 3: Update API Response

There's change in how to get the response:

```go
ok, errLoc := oAuth20ExtensionService.GetCountryLocationV3Short(input)
if errLoc != nil {
   fmt.Println(errLoc.Error())
} else {
   fmt.Printf("Country name: %s\n", *ok.Data.CountryName)   // previously *ok.CountryName, now changed to *ok.Data.CountryName
}
``` 

### Phase 4: Example Usage

For example usage, you can refer to [examples](../samples/getting-started)

## Full Migration (Optional)

Once your project is stable with the compatibility layer, you can fully migrate to modular imports:

1. Replace monolithic SDK with individual service SDKs in `go.mod`
2. Update import paths to service-specific packages
3. Remove compatibility tags from build commands

