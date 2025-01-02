// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package iam

import (
	"net/url"

	"github.com/AccelByte/accelbyte-go-modular-sdk/iam-sdk/pkg/iamclient"
	"github.com/AccelByte/accelbyte-go-modular-sdk/iam-sdk/pkg/iamclient/o_auth2_0_extension"
	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/repository"
	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/utils"
	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/utils/auth"
)

// OAuth20ExtensionService this is use for compatibility with latest modular sdk only
// Deprecated: 2023-03-30 - please use OAuth20ExtensionService imported from "github.com/AccelByte/accelbyte-go-modular-sdk/iam-sdk/pkg"
type OAuth20ExtensionService struct {
	Client           *iamclient.JusticeIamService
	ConfigRepository repository.ConfigRepository
	TokenRepository  repository.TokenRepository

	FlightIdRepository *utils.FlightIdContainer
}

var tempFlightIdOAuth20Extension *string

func (aaa *OAuth20ExtensionService) UpdateFlightId(flightId string) {
	tempFlightIdOAuth20Extension = &flightId
}

func (aaa *OAuth20ExtensionService) GetAuthSession() auth.Session {
	return auth.Session{
		aaa.TokenRepository,
		aaa.ConfigRepository,
		nil,
	}
}

func (aaa *OAuth20ExtensionService) UserAuthenticationV3Short(input *o_auth2_0_extension.UserAuthenticationV3Params) (string, error) {
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
	if tempFlightIdOAuth20Extension != nil {
		input.XFlightId = tempFlightIdOAuth20Extension
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	found, err := aaa.Client.OAuth20Extension.UserAuthenticationV3Short(input, authInfoWriter)
	if err != nil {
		return "", err
	}

	parsedURL, err := url.Parse(found.Data)
	if err != nil {
		return "", err
	}
	query, err := url.ParseQuery(parsedURL.RawQuery)
	if err != nil {
		return "", err
	}
	code := query["code"][0]

	return code, nil
}

func (aaa *OAuth20ExtensionService) AuthenticationWithPlatformLinkV3Short(input *o_auth2_0_extension.AuthenticationWithPlatformLinkV3Params) (*o_auth2_0_extension.AuthenticationWithPlatformLinkV3Response, error) {
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
	if tempFlightIdOAuth20Extension != nil {
		input.XFlightId = tempFlightIdOAuth20Extension
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	ok, err := aaa.Client.OAuth20Extension.AuthenticationWithPlatformLinkV3Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok, nil
}

func (aaa *OAuth20ExtensionService) AuthenticateAndLinkForwardV3Short(input *o_auth2_0_extension.AuthenticateAndLinkForwardV3Params) (string, error) {
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
	if tempFlightIdOAuth20Extension != nil {
		input.XFlightId = tempFlightIdOAuth20Extension
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	found, err := aaa.Client.OAuth20Extension.AuthenticateAndLinkForwardV3Short(input, authInfoWriter)
	if err != nil {
		return "", err
	}

	return found.Data, nil
}

func (aaa *OAuth20ExtensionService) GenerateTokenByNewHeadlessAccountV3Short(input *o_auth2_0_extension.GenerateTokenByNewHeadlessAccountV3Params) (*o_auth2_0_extension.GenerateTokenByNewHeadlessAccountV3Response, error) {
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
	if tempFlightIdOAuth20Extension != nil {
		input.XFlightId = tempFlightIdOAuth20Extension
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	ok, err := aaa.Client.OAuth20Extension.GenerateTokenByNewHeadlessAccountV3Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok, nil
}

func (aaa *OAuth20ExtensionService) RequestOneTimeLinkingCodeV3Short(input *o_auth2_0_extension.RequestOneTimeLinkingCodeV3Params) (*o_auth2_0_extension.RequestOneTimeLinkingCodeV3Response, error) {
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
	if tempFlightIdOAuth20Extension != nil {
		input.XFlightId = tempFlightIdOAuth20Extension
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	ok, err := aaa.Client.OAuth20Extension.RequestOneTimeLinkingCodeV3Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok, nil
}

func (aaa *OAuth20ExtensionService) ValidateOneTimeLinkingCodeV3Short(input *o_auth2_0_extension.ValidateOneTimeLinkingCodeV3Params) (*o_auth2_0_extension.ValidateOneTimeLinkingCodeV3Response, error) {
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}
	if tempFlightIdOAuth20Extension != nil {
		input.XFlightId = tempFlightIdOAuth20Extension
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	ok, err := aaa.Client.OAuth20Extension.ValidateOneTimeLinkingCodeV3Short(input)
	if err != nil {
		return nil, err
	}

	return ok, nil
}

func (aaa *OAuth20ExtensionService) RequestTokenByOneTimeLinkCodeResponseV3Short(input *o_auth2_0_extension.RequestTokenByOneTimeLinkCodeResponseV3Params) (*o_auth2_0_extension.RequestTokenByOneTimeLinkCodeResponseV3Response, error) {
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}
	if tempFlightIdOAuth20Extension != nil {
		input.XFlightId = tempFlightIdOAuth20Extension
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	ok, err := aaa.Client.OAuth20Extension.RequestTokenByOneTimeLinkCodeResponseV3Short(input)
	if err != nil {
		return nil, err
	}

	return ok, nil
}

func (aaa *OAuth20ExtensionService) GetCountryLocationV3Short(input *o_auth2_0_extension.GetCountryLocationV3Params) (*o_auth2_0_extension.GetCountryLocationV3Response, error) {
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
	if tempFlightIdOAuth20Extension != nil {
		input.XFlightId = tempFlightIdOAuth20Extension
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	ok, err := aaa.Client.OAuth20Extension.GetCountryLocationV3Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok, nil
}

func (aaa *OAuth20ExtensionService) LogoutShort(input *o_auth2_0_extension.LogoutParams) error {
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
	if tempFlightIdOAuth20Extension != nil {
		input.XFlightId = tempFlightIdOAuth20Extension
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	_, err := aaa.Client.OAuth20Extension.LogoutShort(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (aaa *OAuth20ExtensionService) RequestTokenExchangeCodeV3Short(input *o_auth2_0_extension.RequestTokenExchangeCodeV3Params) (*o_auth2_0_extension.RequestTokenExchangeCodeV3Response, error) {
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
	if tempFlightIdOAuth20Extension != nil {
		input.XFlightId = tempFlightIdOAuth20Extension
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	ok, err := aaa.Client.OAuth20Extension.RequestTokenExchangeCodeV3Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok, nil
}

func (aaa *OAuth20ExtensionService) PlatformAuthenticationV3Short(input *o_auth2_0_extension.PlatformAuthenticationV3Params) (string, error) {
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
	if tempFlightIdOAuth20Extension != nil {
		input.XFlightId = tempFlightIdOAuth20Extension
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	found, err := aaa.Client.OAuth20Extension.PlatformAuthenticationV3Short(input, authInfoWriter)
	if err != nil {
		return "", err
	}

	return found.Data, nil
}

func (aaa *OAuth20ExtensionService) PlatformTokenRefreshV3Short(input *o_auth2_0_extension.PlatformTokenRefreshV3Params) (*o_auth2_0_extension.PlatformTokenRefreshV3Response, error) {
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
	if tempFlightIdOAuth20Extension != nil {
		input.XFlightId = tempFlightIdOAuth20Extension
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	ok, err := aaa.Client.OAuth20Extension.PlatformTokenRefreshV3Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok, nil
}

func (aaa *OAuth20ExtensionService) RequestTargetTokenResponseV3Short(input *o_auth2_0_extension.RequestTargetTokenResponseV3Params) (*o_auth2_0_extension.RequestTargetTokenResponseV3Response, error) {
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
	if tempFlightIdOAuth20Extension != nil {
		input.XFlightId = tempFlightIdOAuth20Extension
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	ok, err := aaa.Client.OAuth20Extension.RequestTargetTokenResponseV3Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok, nil
}

func (aaa *OAuth20ExtensionService) UpgradeAndAuthenticateForwardV3Short(input *o_auth2_0_extension.UpgradeAndAuthenticateForwardV3Params) (string, error) {
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
	if tempFlightIdOAuth20Extension != nil {
		input.XFlightId = tempFlightIdOAuth20Extension
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	found, err := aaa.Client.OAuth20Extension.UpgradeAndAuthenticateForwardV3Short(input, authInfoWriter)
	if err != nil {
		return "", err
	}

	return found.Data, nil
}
