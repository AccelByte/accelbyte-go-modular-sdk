// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package iam

import (
	"github.com/AccelByte/accelbyte-go-modular-sdk/iam-sdk/pkg/iamclient"
	"github.com/AccelByte/accelbyte-go-modular-sdk/iam-sdk/pkg/iamclient/third_party_credential"
	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/repository"
	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/utils"
	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/utils/auth"
)

type ThirdPartyCredentialService struct {
	Client           *iamclient.JusticeIamService
	ConfigRepository repository.ConfigRepository
	TokenRepository  repository.TokenRepository

	FlightIdRepository *utils.FlightIdContainer
}

var tempFlightIdThirdPartyCredential *string

func (aaa *ThirdPartyCredentialService) UpdateFlightId(flightId string) {
	tempFlightIdThirdPartyCredential = &flightId
}

func (aaa *ThirdPartyCredentialService) GetAuthSession() auth.Session {
	return auth.Session{
		aaa.TokenRepository,
		aaa.ConfigRepository,
		nil,
	}
}

func (aaa *ThirdPartyCredentialService) RetrieveAllThirdPartyLoginPlatformCredentialV3Short(input *third_party_credential.RetrieveAllThirdPartyLoginPlatformCredentialV3Params) (*third_party_credential.RetrieveAllThirdPartyLoginPlatformCredentialV3Response, error) {
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
	if tempFlightIdThirdPartyCredential != nil {
		input.XFlightId = tempFlightIdThirdPartyCredential
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	ok, err := aaa.Client.ThirdPartyCredential.RetrieveAllThirdPartyLoginPlatformCredentialV3Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok, nil
}

func (aaa *ThirdPartyCredentialService) RetrieveAllActiveThirdPartyLoginPlatformCredentialV3Short(input *third_party_credential.RetrieveAllActiveThirdPartyLoginPlatformCredentialV3Params) (*third_party_credential.RetrieveAllActiveThirdPartyLoginPlatformCredentialV3Response, error) {
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
	if tempFlightIdThirdPartyCredential != nil {
		input.XFlightId = tempFlightIdThirdPartyCredential
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	ok, err := aaa.Client.ThirdPartyCredential.RetrieveAllActiveThirdPartyLoginPlatformCredentialV3Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok, nil
}

func (aaa *ThirdPartyCredentialService) RetrieveThirdPartyLoginPlatformCredentialV3Short(input *third_party_credential.RetrieveThirdPartyLoginPlatformCredentialV3Params) (*third_party_credential.RetrieveThirdPartyLoginPlatformCredentialV3Response, error) {
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
	if tempFlightIdThirdPartyCredential != nil {
		input.XFlightId = tempFlightIdThirdPartyCredential
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	ok, err := aaa.Client.ThirdPartyCredential.RetrieveThirdPartyLoginPlatformCredentialV3Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok, nil
}

func (aaa *ThirdPartyCredentialService) AddThirdPartyLoginPlatformCredentialV3Short(input *third_party_credential.AddThirdPartyLoginPlatformCredentialV3Params) (*third_party_credential.AddThirdPartyLoginPlatformCredentialV3Response, error) {
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
	if tempFlightIdThirdPartyCredential != nil {
		input.XFlightId = tempFlightIdThirdPartyCredential
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	created, err := aaa.Client.ThirdPartyCredential.AddThirdPartyLoginPlatformCredentialV3Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return created, nil
}

func (aaa *ThirdPartyCredentialService) DeleteThirdPartyLoginPlatformCredentialV3Short(input *third_party_credential.DeleteThirdPartyLoginPlatformCredentialV3Params) error {
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
	if tempFlightIdThirdPartyCredential != nil {
		input.XFlightId = tempFlightIdThirdPartyCredential
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	_, err := aaa.Client.ThirdPartyCredential.DeleteThirdPartyLoginPlatformCredentialV3Short(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (aaa *ThirdPartyCredentialService) UpdateThirdPartyLoginPlatformCredentialV3Short(input *third_party_credential.UpdateThirdPartyLoginPlatformCredentialV3Params) (*third_party_credential.UpdateThirdPartyLoginPlatformCredentialV3Response, error) {
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
	if tempFlightIdThirdPartyCredential != nil {
		input.XFlightId = tempFlightIdThirdPartyCredential
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	ok, err := aaa.Client.ThirdPartyCredential.UpdateThirdPartyLoginPlatformCredentialV3Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok, nil
}

func (aaa *ThirdPartyCredentialService) UpdateThirdPartyLoginPlatformDomainV3Short(input *third_party_credential.UpdateThirdPartyLoginPlatformDomainV3Params) (*third_party_credential.UpdateThirdPartyLoginPlatformDomainV3Response, error) {
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
	if tempFlightIdThirdPartyCredential != nil {
		input.XFlightId = tempFlightIdThirdPartyCredential
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	ok, err := aaa.Client.ThirdPartyCredential.UpdateThirdPartyLoginPlatformDomainV3Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok, nil
}

func (aaa *ThirdPartyCredentialService) DeleteThirdPartyLoginPlatformDomainV3Short(input *third_party_credential.DeleteThirdPartyLoginPlatformDomainV3Params) error {
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
	if tempFlightIdThirdPartyCredential != nil {
		input.XFlightId = tempFlightIdThirdPartyCredential
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	_, err := aaa.Client.ThirdPartyCredential.DeleteThirdPartyLoginPlatformDomainV3Short(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (aaa *ThirdPartyCredentialService) PartialUpdateThirdPartyLoginPlatformDomainV3Short(input *third_party_credential.PartialUpdateThirdPartyLoginPlatformDomainV3Params) (*third_party_credential.PartialUpdateThirdPartyLoginPlatformDomainV3Response, error) {
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
	if tempFlightIdThirdPartyCredential != nil {
		input.XFlightId = tempFlightIdThirdPartyCredential
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	ok, err := aaa.Client.ThirdPartyCredential.PartialUpdateThirdPartyLoginPlatformDomainV3Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok, nil
}

func (aaa *ThirdPartyCredentialService) AdminCheckThirdPartyLoginPlatformAvailabilityV3Short(input *third_party_credential.AdminCheckThirdPartyLoginPlatformAvailabilityV3Params) (*third_party_credential.AdminCheckThirdPartyLoginPlatformAvailabilityV3Response, error) {
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
	if tempFlightIdThirdPartyCredential != nil {
		input.XFlightId = tempFlightIdThirdPartyCredential
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	ok, err := aaa.Client.ThirdPartyCredential.AdminCheckThirdPartyLoginPlatformAvailabilityV3Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok, nil
}

func (aaa *ThirdPartyCredentialService) RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3Short(input *third_party_credential.RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3Params) (*third_party_credential.RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3Response, error) {
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
	if tempFlightIdThirdPartyCredential != nil {
		input.XFlightId = tempFlightIdThirdPartyCredential
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	ok, err := aaa.Client.ThirdPartyCredential.RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok, nil
}

func (aaa *ThirdPartyCredentialService) RetrieveActiveOIDCClientsPublicV3Short(input *third_party_credential.RetrieveActiveOIDCClientsPublicV3Params) (*third_party_credential.RetrieveActiveOIDCClientsPublicV3Response, error) {
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
	if tempFlightIdThirdPartyCredential != nil {
		input.XFlightId = tempFlightIdThirdPartyCredential
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	ok, err := aaa.Client.ThirdPartyCredential.RetrieveActiveOIDCClientsPublicV3Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok, nil
}
