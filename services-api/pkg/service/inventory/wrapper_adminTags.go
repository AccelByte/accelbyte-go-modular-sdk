// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package inventory

import (
	"github.com/AccelByte/accelbyte-go-modular-sdk/inventory-sdk/pkg/inventoryclient"
	"github.com/AccelByte/accelbyte-go-modular-sdk/inventory-sdk/pkg/inventoryclient/admin_tags"
	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/repository"
	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/utils"
	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/utils/auth"
)

// AdminTagsService this is use for compatibility with latest modular sdk only
// Deprecated: 2023-03-30 - please use AdminTagsService imported from "github.com/AccelByte/accelbyte-go-modular-sdk/inventory-sdk/pkg"
type AdminTagsService struct {
	Client  *inventoryclient.JusticeInventoryService
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

func (aaa *AdminTagsService) AdminListTagsShort(input *admin_tags.AdminListTagsParams) (*admin_tags.AdminListTagsResponse, error) {
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

	ok, err := aaa.Client.AdminTags.AdminListTagsShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok, nil
}

func (aaa *AdminTagsService) AdminCreateTagShort(input *admin_tags.AdminCreateTagParams) (*admin_tags.AdminCreateTagResponse, error) {
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

	created, err := aaa.Client.AdminTags.AdminCreateTagShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return created, nil
}

func (aaa *AdminTagsService) AdminDeleteTagShort(input *admin_tags.AdminDeleteTagParams) error {
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

	_, err := aaa.Client.AdminTags.AdminDeleteTagShort(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}
