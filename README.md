# AccelByte Modular Go SDK

> :warning: **This [accelbyte-go-modular-sdk](https://github.com/AccelByte/accelbyte-go-modular-sdk) 
> is not to be confused with [accelbyte-go-sdk](https://github.com/AccelByte/accelbyte-go-sdk):** 
> * The former (modular SDK) is **experimental** and is planned to be the sucessor for the latter (monolithic SDK).
> * The modular SDK allows developers to include only the required modules in projects.
> * If you are starting a new project, you try to use modular SDK.
> * If you use monolithic SDK in an existing project, a migration path is available via compatibility layer in modular SDK.
> * Both monolithic and modular SDK will be maintained for some time to give time for migration until monolithic SDK is deprecated in the future.

A software development kit (SDK) for interacting with AccelByte Gaming Services (AGS) written in Go.

This SDK was generated from AGS OpenAPI spec files included in the [spec](spec) directory.

## Setup

This SDK requires `go 1.18` or newer version to be installed.

### Import SDK Project

For example, add the following to your project's `go.mod`:

Instead of
```go
require (
    github.com/AccelByte/accelbyte-go-sdk {VERSION}
)
```
Migrate with
```go
require (
    github.com/AccelByte/accelbyte-go-modular-sdk/{service}-sdk {VERSION}
)
```
Instead of importing the whole package, select which AGS service we want to import in the project.
Use more than one AGS service if necessary.

Replace `{VERSION}` with a specific release version tag. When starting a new project, 
using the latest release version is recommended.

For more example, please refer to the [samples](samples) folder.

> NOTE: Here is the exhaustive list of go sdk modules available to be used - [Published Go Modules](./docs/published_go_modules.md)

### Environment Variables

The following environment variables need to be set when using `ConfigRepository`.

| Name               | Required                                               | Example                          |
|--------------------|--------------------------------------------------------|----------------------------------|
| `AB_BASE_URL`      | Yes                                                    | https://test.accelbyte.io        |
| `AB_CLIENT_ID`     | Yes                                                    | abcdef0123456789abcdef0123456789 |
| `AB_CLIENT_SECRET` | Yes, but only if you use a confidential `AB_CLIENT_ID` | ab#c,d)ef(ab#c,d)ef(ab#c,d)ef(ab |

### Migrating An Existing Project

To start migrating an existing project which uses [accelbyte-go-sdk](https://github.com/AccelByte/accelbyte-go-sdk) 
monolithic package to this [accelbyte-go-modular-sdk](https://github.com/AccelByte/accelbyte-go-modular-sdk) modular package, 
it can be done with minimum effort by importing the AGS service of choice in the go.mod files and 
use `go build -tags compat` to build it with compatibility layer. After this, the compatibility layer
can be removed bit by bit until the project is fully migrated.

## Usage

### Instantiation

```go
// example for OAuth20 in IAM service
oAuth20Service := iam.OAuth20Service{
    Client:           factory.NewIamClient(auth.DefaultConfigRepositoryImpl()), 
    ConfigRepository: auth.DefaultConfigRepositoryImpl(), 
    TokenRepository:  auth.DefaultTokenRepositoryImpl(),
}
```

## Enable HTTP Logging

To enable http logging feature, set `ENABLE_LOG` to true in the environment variables.

```
export ENABLE_LOG=true
```

#### With Custom HTTP retry in the client

Use this to get SDK instance with HTTP retry functionality.

```go
input := &o_auth2_0.TokenGrantV3Params{
		Password:  &password,
		Username:  &username,
		GrantType: o_auth2_0.TokenGrantV3PasswordConstant,
	}
input.RetryPolicy = &utils.Retry{
    Transport: OAuth20Service.Client.Runtime.Transport,
    MaxTries:  utils.MaxTries,
    Backoff:   utils.NewConstantBackoff(0),
    RetryCodes: map[int]bool{
        502: true, // add an error code for bad gateway
    },
}
ok, err := OAuth20Service.TokenGrantV3Short(input) // call the wrapper
```

### Working with Call Response

Every operation in Go Modular SDK will returns a response object. Use this object to do check whether the call is
success or not, get the response data or error object.

- `response.IsSuccess` will be `true` if the call is success, otherwise `false`.
- `response.Data` object is **optional** depending whether the endpoint has response or not.
- `response.Error<status-code>` contains error object if call failed, otherwise null.
- `response.Unpack` will return the all the responses given by the endpoint.
- `response.StatusCode` will return the int status code responses given by the endpoint.

Known errors are available in `errors.go` in each module. E.g
`<module-name>-sdk/pkg/<module-name>clientmodels/errors.go`.

```go
response, err := userProfileService.GetMyProfileInfoShort(input)
if response.Error400 != nil {
    // do something
} else {
    ok := response.Data
    // do something
    response.Unpack // do something with the return value
}
```

#### Automatic Token Refresh

The Automatic Token Refresh is invoked by `auth.RefreshTokenScheduler` inside the `login` wrapper with the Default configuration and can be override.
Use the following to get SDK instance with automatic token refresh functionality which is performed before each HTTP request but only if access token is almost expired.

```go
oAuth20Service = &iam.OAuth20Service{
    Client:           factory.NewIamClient(auth.DefaultConfigRepositoryImpl()),
    ConfigRepository: auth.DefaultConfigRepositoryImpl(),
    TokenRepository:  auth.DefaultTokenRepositoryImpl(),
    RefreshTokenRepository: &auth.RefreshTokenImpl{ // override the default refresh token. For example, enable the AutoRefresh functionality or change RefreshRate
        RefreshRate: 0.5, // refresh when 50% of the token’s lifetime remains.
        AutoRefresh: true, // automatically refresh the token in the background.
    }
}
```

If no need to customize the behavior, use the default refresh token configuration.
The default RefreshRate is `0.8`, which means the SDK will refresh the token when 20% of its lifetime remains.

```go
oAuth20Service = &iam.OAuth20Service{
    ...
    RefreshTokenRepository: auth.DefaultRefreshTokenImpl(), // use the default value
}
```
Use the `repository` to access all functions for refresh token.

#### On-demand Refresh Token

The on-demand refresh token is intended to be used in environment where automatic refresh token cannot work properly e.g. AWS Lambda. The way to initialize it
is similar to automatic refresh token except the `AutoRefresh` parameter must be set to `false`. After that, `LoginOrRefreshClient` or `LoginOrRefresh` for logging in using client token or username and password respectively can be used before calling any endpoints. These two functions are helper functions for developers to either login or refresh as required.

```go
oAuth20Service = &iam.OAuth20Service{
    Client:           factory.NewIamClient(auth.DefaultConfigRepositoryImpl()),
    ConfigRepository: auth.DefaultConfigRepositoryImpl(),
    TokenRepository:  auth.DefaultTokenRepositoryImpl(),
    RefreshTokenRepository: &auth.RefreshTokenImpl{
        RefreshRate: 0.5,
        AutoRefresh: false, // must be set to false for on demand refresh token
    },
}
...
err := oauth.LoginOrRefreshClient("clientId", "clientSecret")   // use before calling endpoints, using client token
...
err := oauth.LoginOrRefresh("username", "password")     // use before calling endpoints, using username and password
```

#### Local Token Validation
Local token validation is available since version 0.37.0. 
To enable it, import the package
```go
import (
    ...
    "github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/utils/auth/validator"
    ...
)
```
configure `authTokenValidator` struct or use the existing one `NewTokenValidator` with the default `localValidationActive` is false. Invoked them with
```
tokenValidator := validator.NewTokenValidator(authService, time.Hour)
tokenValidator.Initialize()

err = tokenValidator.Validate(accessToken, &requiredPermission, &namespace, nil)
```

if want to set `localValidationActive` is true, use a `TokenValidator` directly and do this:
```
tokenValidator := &validator.TokenValidator{
		AuthService:     *oAuth20Service,
		RefreshInterval: time.Hour,

		Filter:                nil,
		JwkSet:                nil,
		JwtClaims:             validator.JWTClaims{},
		JwtEncoding:           *base64.URLEncoding.WithPadding(base64.NoPadding),
		PublicKeys:            make(map[string]*rsa.PublicKey),
		LocalValidationActive: true, // set here to true
		RevokedUsers:          make(map[string]time.Time),
		Roles:                 make(map[string]*iamclientmodels.ModelRoleResponseV3),
	}
	
tokenValidator.Initialize()

err = tokenValidator.Validate(accessToken, &requiredPermission, &namespace, nil)
```

## Login

### Login Using Username and Password

```go
err := oAuth20Service.Login(username, password)
if err != nil {
    return err
}
```

You can also specify the scope you want for `LoginWithScope(...)`. With the `scope` parameter typed as `string`. By default the scope used is `commerce account social publishing analytics` (a space separated value string).

```go
err := oAuth20Service.LoginWithScope(username, password, scope)
if err != nil {
    return err
}
```

### Login Using OAuth Client (Public or Private)

```go
err := oAuth20Service.LoginClient(clientId, clientSecret)
if err != nil {
    return err
}
```

It’s possible to pass a context created or derived from another method into LoginClientWithContext(ctx, ...), allowing you to carry tracing information or other context-related data through the login process.

```go
ctx := context.Background()

err := oAuth20Service.LoginClientWihContext(ctx, clientId, clientSecret)
if err != nil {
    return err
}
```

:bulb: The use of a Public OAuth Client is highly discouraged! Please ensure that you both set the Client ID and Client Secret.

:bulb: There are other `WithContext` variants of the `LoginX` functions in case you want to use a specific context.

## Parse Access Token
Functionality to parse the access token is available in `v0.50.0`.
The function exist alongside the Login functionality in `OAuth20Service`. To use it, import the package
```go
import (
    ...
    "github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/service/iam"
    ...
)
```
Get the token, and use `ParseAccessToken` function. Set the second parameter as `true` if it wants to validate before parse the access token
```go
// get the access token string
accessToken, err := oAuth20Service.GetToken()
if err != nil {
    // fail here
}

// parse the token
parsedToken, err := oAuth20Service.ParseAccessToken(accessToken, true) // set true here to validate before parse the access token
if err != nil {
    // fail here
}
```
- if the boolean is `false`, it will not validate the token at all.
- if the boolean is `true`, it will validate remotely (call `VerifyTokenV3` endpoint).
- if the boolean is `true` and call `SetLocalValidation` before `ParseAccessToken`, it will validate locally.
```go
oAuth20Service.SetLocalValidation(true) // call this also to activate local validation

// parse the token
parsedToken, err := oAuth20Service.ParseAccessToken(accessToken, true) // set true here to validate before parsing the access token
if err != nil {
// fail here
}
```

### Interacting with AccelByte Gaming Services HTTP Endpoints

As an example, we will get current user profile info using [getMyProfileInfo](https://docs.accelbyte.io/api-explorer/#Basic/getMyProfileInfo) endpoint available in [basic](https://docs.accelbyte.io/api-explorer/#Basic) service.

```go
// Instantiate UserProfile (Basic service) and input model as the global variable
var (
    userProfileService = &basic.UserProfileService{
        Client:          factory.NewBasicClient(auth.DefaultConfigRepositoryImpl()), 
        TokenRepository: auth.DefaultTokenRepositoryImpl(),
    }
    input = &user_profile.GetUserProfileInfoParams{
        Namespace: namespace,
    }
)

// Login using username and password
err := oAuth20Service.Login(username, password)
if err != nil {
    return err
}

// Make a call to getMyProfileInfo endpoint through the wrapper
ok, err := userProfileService.GetMyProfileInfoShort(input)
if err != nil {
    return err
}
```
The `basic-sdk` contains 2 directories:
- `basicclient` contains the logic to make requests.
- `basicclientmodels` contains the models such as request and response models.

Client must create a struct that implement following interface:

- `ConfigRepository` is responsible to store configuration.
- `TokenRepository` is responsible to store access token.

For more details, see [repository](samples/cli/pkg/repository) for the interface and [cli samples](samples/cli/cmd) on how to use it.

### Interacting with AccelByte Gaming Services WebSocket Endpoints

To interact with AccelByte Gaming Services services which use WebSocket endpoints e.g. AccelByte Gaming Services Lobby
Service, use an existing Initialisation code or implement custom `wsm/ConnectionManager` interface.
`ConnectionManager` manages WebSocket connection that save, get and close the WebSocket connection. In other words,
client should maintain WebSocket connection using `ConnectionManager`.

```go
connMgr = &wsm.DefaultConnectionManagerImpl{}
conn, err := wsm.NewWSConnection(
    oAuth20Service.ConfigRepository,
	oAuth20Service.TokenRepository,
    wsm.WithEnableAutoReconnect(),
	wsm.WithMessageHandler(lobbyMessageHandler), // do optionals
)
if err != nil {
// error
}
lobbyClient := connectionutils.NewLobbyWebSocketClient(conn)

// [optional] do something before Connecting

success, err := lobbyClient.Connect(false) // Connecting
if err != nil {
// error
}

connMgr.Save(conn)

// CASE Lobby get a notification
err = notificationService.GetNotificationMessage()
// error
```

For reference, see [connectionutils_test.go](lobby-sdk/pkg/connectionutils/connectionutils_test.go)
or [services-api/pkg/wsm/connection.go](services-api/pkg/wsm/connection.go).

### Refresh Token
```go
getToken, errGetToken := oAuth20Service.TokenRepository.GetToken()
    if errGetToken != nil {
        // failed to get token
    }
	
hasExpired := repository.HasTokenExpired(*getToken) // use the repository of the sdk to get the available functions
```

## Logout
```go
err := oAuth20Service.Logout()
if err != nil {
    return err
}
```

## FlightID

Since ags/v3.67.0, Go Extend SDK enable support for FlightID transmission during Http request. By default, new flight id
will be generated when the sdk is loaded. There will be some case that this default value need to be updated with new
value.

- To update default flight id globally, use following code:
  ```go
  utils.GetDefaultFlightID().SetFlightID("<new flight id value>");
  ```
  This will update the default flight id, and will be used by newly created sdk object (this example use "
  userProfileService").

  or

  ```go
  userProfileService.FlightIdRepository = &utils.FlightIdContainer{Value: "<new flight id value>"}
  ```
  This will update the default flight id, and will be used by newly created sdk object (won't affect existing sdk object
  created before this code get executed).
- To update flight id value in sdk object, use following code:
  ```go
  userProfileService.UpdateFlightId("<new flight id value>")
  ```
  This will update the flight id value stored inside the sdk object. Will be used for all operations executed by the sdk
  object.
- To update flight id value for specific operation, use `UpdateFlightId` parameter when building the operation object.
  ```go
  // Make a call to GetMyProfileInfo endpoint
  input := &user_profile.GetMyProfileInfoParams{
      Namespace: admin,
  }
  input.XFlightId = "<new flight id value>"
  ok, err := userProfileService.GetMyProfileInfoShort(input)
  ```

## Samples

Sample apps are available in the [samples](samples) directory.

## Documentation

Reference about AccelByte service endpoints and their corresponding SDK API is available in [docs/operations](docs/operations) directory.

Sample app documentations are available in the [docs/samples](docs/samples/) directory.

For more information on how to use AccelByte services and SDKs, see [docs.accelbyte.io](https://docs.accelbyte.io/).