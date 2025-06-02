// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package iam

import (
	"github.com/AccelByte/accelbyte-go-modular-sdk/iam-sdk/pkg/iamclient"
	"github.com/AccelByte/accelbyte-go-modular-sdk/iam-sdk/pkg/iamclient/account_identifier_tag"
	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/repository"
	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/utils"
	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/utils/auth"
)

type AccountIdentifierTagService struct {
	Client           *iamclient.JusticeIamService
	ConfigRepository repository.ConfigRepository
	TokenRepository  repository.TokenRepository

	FlightIdRepository *utils.FlightIdContainer
}

var tempFlightIdAccountIdentifierTag *string

func (aaa *AccountIdentifierTagService) UpdateFlightId(flightId string) {
	tempFlightIdAccountIdentifierTag = &flightId
}

func (aaa *AccountIdentifierTagService) GetAuthSession() auth.Session {
	return auth.Session{
		aaa.TokenRepository,
		aaa.ConfigRepository,
		nil,
	}
}

func (aaa *AccountIdentifierTagService) AdminQueryTagV3Short(input *account_identifier_tag.AdminQueryTagV3Params) (*account_identifier_tag.AdminQueryTagV3Response, error) {
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
	if tempFlightIdAccountIdentifierTag != nil {
		input.XFlightId = tempFlightIdAccountIdentifierTag
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	ok, err := aaa.Client.AccountIdentifierTag.AdminQueryTagV3Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok, nil
}

func (aaa *AccountIdentifierTagService) AdminCreateTagV3Short(input *account_identifier_tag.AdminCreateTagV3Params) (*account_identifier_tag.AdminCreateTagV3Response, error) {
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
	if tempFlightIdAccountIdentifierTag != nil {
		input.XFlightId = tempFlightIdAccountIdentifierTag
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	created, err := aaa.Client.AccountIdentifierTag.AdminCreateTagV3Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return created, nil
}

func (aaa *AccountIdentifierTagService) AdminUpdateTagV3Short(input *account_identifier_tag.AdminUpdateTagV3Params) (*account_identifier_tag.AdminUpdateTagV3Response, error) {
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
	if tempFlightIdAccountIdentifierTag != nil {
		input.XFlightId = tempFlightIdAccountIdentifierTag
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	ok, err := aaa.Client.AccountIdentifierTag.AdminUpdateTagV3Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok, nil
}

func (aaa *AccountIdentifierTagService) AdminDeleteTagV3Short(input *account_identifier_tag.AdminDeleteTagV3Params) error {
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
	if tempFlightIdAccountIdentifierTag != nil {
		input.XFlightId = tempFlightIdAccountIdentifierTag
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	_, err := aaa.Client.AccountIdentifierTag.AdminDeleteTagV3Short(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}
