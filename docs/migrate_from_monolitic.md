# Migration from accelbyte-go-sdk to accelbyte-go-modular-sdk

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

To help the implementation, use the `auth.DefaultTokenRepositoryImpl()` from `services-api` module