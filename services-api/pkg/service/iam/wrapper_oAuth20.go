// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package iam

import (
	"errors"
	"net/url"

	"github.com/AccelByte/accelbyte-go-modular-sdk/iam-sdk/pkg/iamclient"
	"github.com/AccelByte/accelbyte-go-modular-sdk/iam-sdk/pkg/iamclient/o_auth2_0"
	"github.com/AccelByte/accelbyte-go-modular-sdk/iam-sdk/pkg/iamclientmodels"
	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/repository"
	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/utils"
	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/utils/auth"
	"github.com/go-openapi/runtime/client"
)

// OAuth20Service this is use for compatibility with latest modular sdk only
// Deprecated: 2023-03-30 - please use OAuth20Service imported from "github.com/AccelByte/accelbyte-go-modular-sdk/iam-sdk/pkg"
type OAuth20Service struct {
	Client                 *iamclient.JusticeIamService
	ConfigRepository       repository.ConfigRepository
	TokenRepository        repository.TokenRepository
	RefreshTokenRepository repository.RefreshTokenRepository

	tokenValidation *TokenValidator

	FlightIdRepository *utils.FlightIdContainer
}

var tempFlightIdOAuth20 *string

func (aaa *OAuth20Service) UpdateFlightId(flightId string) {
	tempFlightIdOAuth20 = &flightId
}

func (aaa *OAuth20Service) GetAuthSession() auth.Session {
	if aaa.RefreshTokenRepository != nil {
		return auth.Session{
			aaa.TokenRepository,
			aaa.ConfigRepository,
			aaa.RefreshTokenRepository,
		}
	}

	return auth.Session{
		aaa.TokenRepository,
		aaa.ConfigRepository,
		auth.DefaultRefreshTokenImpl(),
	}
}

// Deprecated: 2022-01-10 - Please use AdminRetrieveUserThirdPartyPlatformTokenV3Short instead.
func (aaa *OAuth20Service) AdminRetrieveUserThirdPartyPlatformTokenV3(input *o_auth2_0.AdminRetrieveUserThirdPartyPlatformTokenV3Params) (*iamclientmodels.OauthmodelTokenThirdPartyResponse, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, unauthorized, forbidden, notFound, err := aaa.Client.OAuth20.AdminRetrieveUserThirdPartyPlatformTokenV3(input, client.BearerToken(*token.AccessToken))
	if unauthorized != nil {
		return nil, unauthorized
	}
	if forbidden != nil {
		return nil, forbidden
	}
	if notFound != nil {
		return nil, notFound
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: 2022-01-10 - Please use RevokeUserV3Short instead.
func (aaa *OAuth20Service) RevokeUserV3(input *o_auth2_0.RevokeUserV3Params) error {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, forbidden, err := aaa.Client.OAuth20.RevokeUserV3(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return badRequest
	}
	if unauthorized != nil {
		return unauthorized
	}
	if forbidden != nil {
		return forbidden
	}
	if err != nil {
		return err
	}

	return nil
}

// Deprecated: 2022-01-10 - Please use AuthorizeV3Short instead.
func (aaa *OAuth20Service) AuthorizeV3(input *o_auth2_0.AuthorizeV3Params) (string, error) {
	clientID := aaa.ConfigRepository.GetClientId()
	clientSecret := aaa.ConfigRepository.GetClientSecret()
	found, err := aaa.Client.OAuth20.AuthorizeV3(input, client.BasicAuth(clientID, clientSecret))
	if err != nil {
		return "", err
	}

	parsedURL, err := url.Parse(found.Location)
	if err != nil {
		return "", err
	}
	query, err := url.ParseQuery(parsedURL.RawQuery)
	if err != nil {
		return "", err
	}
	requestID := query["request_id"][0]

	return requestID, nil
}

// Deprecated: 2022-01-10 - Please use TokenIntrospectionV3Short instead.
func (aaa *OAuth20Service) TokenIntrospectionV3(input *o_auth2_0.TokenIntrospectionV3Params) (*iamclientmodels.OauthmodelTokenIntrospectResponse, error) {
	clientID := aaa.ConfigRepository.GetClientId()
	clientSecret := aaa.ConfigRepository.GetClientSecret()
	ok, badRequest, unauthorized, err := aaa.Client.OAuth20.TokenIntrospectionV3(input, client.BasicAuth(clientID, clientSecret))
	if badRequest != nil {
		return nil, badRequest
	}
	if unauthorized != nil {
		return nil, unauthorized
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: 2022-01-10 - Please use GetJWKSV3Short instead.
func (aaa *OAuth20Service) GetJWKSV3(input *o_auth2_0.GetJWKSV3Params) (*iamclientmodels.OauthcommonJWKSet, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := aaa.Client.OAuth20.GetJWKSV3(input, client.BearerToken(*token.AccessToken))
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: 2022-01-10 - Please use SendMFAAuthenticationCodeShort instead.
func (aaa *OAuth20Service) SendMFAAuthenticationCode(input *o_auth2_0.SendMFAAuthenticationCodeParams) error {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, forbidden, notFound, tooManyRequests, internalServerError, err := aaa.Client.OAuth20.SendMFAAuthenticationCode(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return badRequest
	}
	if forbidden != nil {
		return forbidden
	}
	if notFound != nil {
		return notFound
	}
	if tooManyRequests != nil {
		return tooManyRequests
	}
	if internalServerError != nil {
		return internalServerError
	}
	if err != nil {
		return err
	}

	return nil
}

// Deprecated: 2022-01-10 - Please use Change2FAMethodShort instead.
func (aaa *OAuth20Service) Change2FAMethod(input *o_auth2_0.Change2FAMethodParams) error {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, tooManyRequests, internalServerError, err := aaa.Client.OAuth20.Change2FAMethod(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return badRequest
	}
	if tooManyRequests != nil {
		return tooManyRequests
	}
	if internalServerError != nil {
		return internalServerError
	}
	if err != nil {
		return err
	}

	return nil
}

// Deprecated: 2022-01-10 - Please use Verify2FACodeShort instead.
func (aaa *OAuth20Service) Verify2FACode(input *o_auth2_0.Verify2FACodeParams) (*iamclientmodels.OauthmodelTokenResponseV3, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, unauthorized, err := aaa.Client.OAuth20.Verify2FACode(input, client.BearerToken(*token.AccessToken))
	if unauthorized != nil {
		return nil, unauthorized
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: 2022-01-10 - Please use RetrieveUserThirdPartyPlatformTokenV3Short instead.
func (aaa *OAuth20Service) RetrieveUserThirdPartyPlatformTokenV3(input *o_auth2_0.RetrieveUserThirdPartyPlatformTokenV3Params) (*iamclientmodels.OauthmodelTokenThirdPartyResponse, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, unauthorized, forbidden, notFound, err := aaa.Client.OAuth20.RetrieveUserThirdPartyPlatformTokenV3(input, client.BearerToken(*token.AccessToken))
	if unauthorized != nil {
		return nil, unauthorized
	}
	if forbidden != nil {
		return nil, forbidden
	}
	if notFound != nil {
		return nil, notFound
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: 2022-01-10 - Please use AuthCodeRequestV3Short instead.
func (aaa *OAuth20Service) AuthCodeRequestV3(input *o_auth2_0.AuthCodeRequestV3Params) (string, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return "", err
	}
	found, err := aaa.Client.OAuth20.AuthCodeRequestV3(input, client.BearerToken(*token.AccessToken))
	if err != nil {
		return "", err
	}

	return found.Location, nil
}

// Deprecated: 2022-01-10 - Please use PlatformTokenGrantV3Short instead.
func (aaa *OAuth20Service) PlatformTokenGrantV3(input *o_auth2_0.PlatformTokenGrantV3Params) (*iamclientmodels.OauthmodelTokenResponse, error) {
	clientID := aaa.ConfigRepository.GetClientId()
	clientSecret := aaa.ConfigRepository.GetClientSecret()
	ok, badRequest, unauthorized, forbidden, serviceUnavailable, err := aaa.Client.OAuth20.PlatformTokenGrantV3(input, client.BasicAuth(clientID, clientSecret))
	if badRequest != nil {
		return nil, badRequest
	}
	if unauthorized != nil {
		return nil, unauthorized
	}
	if forbidden != nil {
		return nil, forbidden
	}
	if serviceUnavailable != nil {
		return nil, serviceUnavailable
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: 2022-01-10 - Please use GetRevocationListV3Short instead.
func (aaa *OAuth20Service) GetRevocationListV3(input *o_auth2_0.GetRevocationListV3Params) (*iamclientmodels.OauthapiRevocationList, error) {
	clientID := aaa.ConfigRepository.GetClientId()
	clientSecret := aaa.ConfigRepository.GetClientSecret()
	ok, unauthorized, err := aaa.Client.OAuth20.GetRevocationListV3(input, client.BasicAuth(clientID, clientSecret))
	if unauthorized != nil {
		return nil, unauthorized
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: 2022-01-10 - Please use TokenRevocationV3Short instead.
func (aaa *OAuth20Service) TokenRevocationV3(input *o_auth2_0.TokenRevocationV3Params) error {
	clientID := aaa.ConfigRepository.GetClientId()
	clientSecret := aaa.ConfigRepository.GetClientSecret()
	_, badRequest, unauthorized, err := aaa.Client.OAuth20.TokenRevocationV3(input, client.BasicAuth(clientID, clientSecret))
	if badRequest != nil {
		return badRequest
	}
	if unauthorized != nil {
		return unauthorized
	}
	if err != nil {
		return err
	}

	return nil
}

// Deprecated: 2022-01-10 - Please use SimultaneousLoginV3Short instead.
func (aaa *OAuth20Service) SimultaneousLoginV3(input *o_auth2_0.SimultaneousLoginV3Params) (*iamclientmodels.OauthmodelTokenResponseV3, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, conflict, internalServerError, err := aaa.Client.OAuth20.SimultaneousLoginV3(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return nil, badRequest
	}
	if unauthorized != nil {
		return nil, unauthorized
	}
	if conflict != nil {
		return nil, conflict
	}
	if internalServerError != nil {
		return nil, internalServerError
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: 2022-01-10 - Please use TokenGrantV3Short instead.
func (aaa *OAuth20Service) TokenGrantV3(input *o_auth2_0.TokenGrantV3Params) (*iamclientmodels.OauthmodelTokenWithDeviceCookieResponseV3, error) {
	clientID := aaa.ConfigRepository.GetClientId()
	clientSecret := aaa.ConfigRepository.GetClientSecret()
	ok, badRequest, unauthorized, forbidden, tooManyRequests, err := aaa.Client.OAuth20.TokenGrantV3(input, client.BasicAuth(clientID, clientSecret))
	if badRequest != nil {
		return nil, badRequest
	}
	if unauthorized != nil {
		return nil, unauthorized
	}
	if forbidden != nil {
		return nil, forbidden
	}
	if tooManyRequests != nil {
		return nil, tooManyRequests
	}
	if err != nil {
		return nil, err
	}

	if ok == nil {
		return nil, errors.New("empty access token")
	}
	err = aaa.TokenRepository.Store(*ok.GetPayload())
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

// Deprecated: 2022-01-10 - Please use VerifyTokenV3Short instead.
func (aaa *OAuth20Service) VerifyTokenV3(input *o_auth2_0.VerifyTokenV3Params) (*iamclientmodels.OauthmodelTokenResponseV3, error) {
	clientID := aaa.ConfigRepository.GetClientId()
	clientSecret := aaa.ConfigRepository.GetClientSecret()
	ok, badRequest, err := aaa.Client.OAuth20.VerifyTokenV3(input, client.BasicAuth(clientID, clientSecret))
	if badRequest != nil {
		return nil, badRequest
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *OAuth20Service) AdminRetrieveUserThirdPartyPlatformTokenV3Short(input *o_auth2_0.AdminRetrieveUserThirdPartyPlatformTokenV3Params) (*iamclientmodels.OauthmodelTokenThirdPartyResponse, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(aaa.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}
	if tempFlightIdOAuth20 != nil {
		input.XFlightId = tempFlightIdOAuth20
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	ok, err := aaa.Client.OAuth20.AdminRetrieveUserThirdPartyPlatformTokenV3Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *OAuth20Service) RevokeUserV3Short(input *o_auth2_0.RevokeUserV3Params) error {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(aaa.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}
	if tempFlightIdOAuth20 != nil {
		input.XFlightId = tempFlightIdOAuth20
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	_, err := aaa.Client.OAuth20.RevokeUserV3Short(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (aaa *OAuth20Service) AuthorizeV3Short(input *o_auth2_0.AuthorizeV3Params) (string, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"basic"},
		}
		authInfoWriter = auth.AuthInfoWriter(aaa.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}
	if tempFlightIdOAuth20 != nil {
		input.XFlightId = tempFlightIdOAuth20
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	found, err := aaa.Client.OAuth20.AuthorizeV3Short(input, authInfoWriter)
	if err != nil {
		return "", err
	}

	parsedURL, err := url.Parse(found.Location)
	if err != nil {
		return "", err
	}
	query, err := url.ParseQuery(parsedURL.RawQuery)
	if err != nil {
		return "", err
	}
	requestID := query["request_id"][0]

	return requestID, nil
}

func (aaa *OAuth20Service) TokenIntrospectionV3Short(input *o_auth2_0.TokenIntrospectionV3Params) (*iamclientmodels.OauthmodelTokenIntrospectResponse, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
			{"basic"},
		}
		authInfoWriter = auth.AuthInfoWriter(aaa.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}
	if tempFlightIdOAuth20 != nil {
		input.XFlightId = tempFlightIdOAuth20
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	ok, err := aaa.Client.OAuth20.TokenIntrospectionV3Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *OAuth20Service) GetJWKSV3Short(input *o_auth2_0.GetJWKSV3Params) (*iamclientmodels.OauthcommonJWKSet, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(aaa.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}
	if tempFlightIdOAuth20 != nil {
		input.XFlightId = tempFlightIdOAuth20
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	ok, err := aaa.Client.OAuth20.GetJWKSV3Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *OAuth20Service) SendMFAAuthenticationCodeShort(input *o_auth2_0.SendMFAAuthenticationCodeParams) error {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(aaa.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}
	if tempFlightIdOAuth20 != nil {
		input.XFlightId = tempFlightIdOAuth20
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	_, err := aaa.Client.OAuth20.SendMFAAuthenticationCodeShort(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (aaa *OAuth20Service) Change2FAMethodShort(input *o_auth2_0.Change2FAMethodParams) error {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(aaa.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}
	if tempFlightIdOAuth20 != nil {
		input.XFlightId = tempFlightIdOAuth20
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	_, err := aaa.Client.OAuth20.Change2FAMethodShort(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (aaa *OAuth20Service) Verify2FACodeShort(input *o_auth2_0.Verify2FACodeParams) (*iamclientmodels.OauthmodelTokenResponseV3, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(aaa.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}
	if tempFlightIdOAuth20 != nil {
		input.XFlightId = tempFlightIdOAuth20
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	ok, err := aaa.Client.OAuth20.Verify2FACodeShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *OAuth20Service) RetrieveUserThirdPartyPlatformTokenV3Short(input *o_auth2_0.RetrieveUserThirdPartyPlatformTokenV3Params) (*iamclientmodels.OauthmodelTokenThirdPartyResponse, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(aaa.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}
	if tempFlightIdOAuth20 != nil {
		input.XFlightId = tempFlightIdOAuth20
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	ok, err := aaa.Client.OAuth20.RetrieveUserThirdPartyPlatformTokenV3Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *OAuth20Service) AuthCodeRequestV3Short(input *o_auth2_0.AuthCodeRequestV3Params) (string, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(aaa.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}
	if tempFlightIdOAuth20 != nil {
		input.XFlightId = tempFlightIdOAuth20
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	found, err := aaa.Client.OAuth20.AuthCodeRequestV3Short(input, authInfoWriter)
	if err != nil {
		return "", err
	}

	return found.Location, nil
}

func (aaa *OAuth20Service) PlatformTokenGrantV3Short(input *o_auth2_0.PlatformTokenGrantV3Params) (*iamclientmodels.OauthmodelTokenResponse, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"basic"},
		}
		authInfoWriter = auth.AuthInfoWriter(aaa.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}
	if tempFlightIdOAuth20 != nil {
		input.XFlightId = tempFlightIdOAuth20
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	ok, err := aaa.Client.OAuth20.PlatformTokenGrantV3Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *OAuth20Service) GetRevocationListV3Short(input *o_auth2_0.GetRevocationListV3Params) (*iamclientmodels.OauthapiRevocationList, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"basic"},
		}
		authInfoWriter = auth.AuthInfoWriter(aaa.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}
	if tempFlightIdOAuth20 != nil {
		input.XFlightId = tempFlightIdOAuth20
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	ok, err := aaa.Client.OAuth20.GetRevocationListV3Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *OAuth20Service) TokenRevocationV3Short(input *o_auth2_0.TokenRevocationV3Params) error {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"basic"},
		}
		authInfoWriter = auth.AuthInfoWriter(aaa.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}
	if tempFlightIdOAuth20 != nil {
		input.XFlightId = tempFlightIdOAuth20
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	_, err := aaa.Client.OAuth20.TokenRevocationV3Short(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (aaa *OAuth20Service) SimultaneousLoginV3Short(input *o_auth2_0.SimultaneousLoginV3Params) (*iamclientmodels.OauthmodelTokenResponseV3, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(aaa.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}
	if tempFlightIdOAuth20 != nil {
		input.XFlightId = tempFlightIdOAuth20
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	ok, err := aaa.Client.OAuth20.SimultaneousLoginV3Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *OAuth20Service) TokenGrantV3Short(input *o_auth2_0.TokenGrantV3Params) (*iamclientmodels.OauthmodelTokenWithDeviceCookieResponseV3, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"basic"},
		}
		authInfoWriter = auth.AuthInfoWriter(aaa.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}
	if tempFlightIdOAuth20 != nil {
		input.XFlightId = tempFlightIdOAuth20
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	ok, err := aaa.Client.OAuth20.TokenGrantV3Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	if ok == nil {
		return nil, errors.New("empty access token")
	}
	err = aaa.TokenRepository.Store(*ok.GetPayload())
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (aaa *OAuth20Service) VerifyTokenV3Short(input *o_auth2_0.VerifyTokenV3Params) (*iamclientmodels.OauthmodelTokenResponseV3, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"basic"},
		}
		authInfoWriter = auth.AuthInfoWriter(aaa.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}
	if tempFlightIdOAuth20 != nil {
		input.XFlightId = tempFlightIdOAuth20
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	ok, err := aaa.Client.OAuth20.VerifyTokenV3Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}
