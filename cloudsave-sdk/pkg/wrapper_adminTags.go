// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package cloudsave

import (
	"github.com/AccelByte/accelbyte-go-modular-sdk/cloudsave-sdk/pkg/cloudsaveclient"
	"github.com/AccelByte/accelbyte-go-modular-sdk/cloudsave-sdk/pkg/cloudsaveclient/admin_tags"
	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/repository"
	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/utils"
	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/utils/auth"
)

type AdminTagsService struct {
	Client  *cloudsaveclient.JusticeCloudsaveService
	Session repository.Session
}

var tempFlightIdAdminTags *string

func (aaa *AdminTagsService) UpdateFlightId(flightId string) {
	tempFlightIdAdminTags = &flightId
}

func (aaa *AdminTagsService) GetAuthSession() auth.Session {
	return auth.Session{
		Token:   aaa.Session.TokenRepository,
		Config:  aaa.Session.ConfigRepository,
		Refresh: nil,
	}
}

func (aaa *AdminTagsService) AdminListTagsHandlerV1Short(input *admin_tags.AdminListTagsHandlerV1Params) (*admin_tags.AdminListTagsHandlerV1Response, error) {
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
	if tempFlightIdAdminTags != nil {
		input.XFlightId = tempFlightIdAdminTags
	} else if aaa.Session.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.Session.FlightIdRepository.Value)
	}

	ok, err := aaa.Client.AdminTags.AdminListTagsHandlerV1Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	if ok == nil {
		return nil, nil
	}

	return ok, nil
}

func (aaa *AdminTagsService) AdminPostTagHandlerV1Short(input *admin_tags.AdminPostTagHandlerV1Params) error {
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
	if tempFlightIdAdminTags != nil {
		input.XFlightId = tempFlightIdAdminTags
	} else if aaa.Session.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.Session.FlightIdRepository.Value)
	}

	_, err := aaa.Client.AdminTags.AdminPostTagHandlerV1Short(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (aaa *AdminTagsService) AdminDeleteTagHandlerV1Short(input *admin_tags.AdminDeleteTagHandlerV1Params) error {
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
	if tempFlightIdAdminTags != nil {
		input.XFlightId = tempFlightIdAdminTags
	} else if aaa.Session.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.Session.FlightIdRepository.Value)
	}

	_, err := aaa.Client.AdminTags.AdminDeleteTagHandlerV1Short(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}
