// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package reporting

import (
	"github.com/AccelByte/accelbyte-go-modular-sdk/reporting-sdk/pkg/reportingclient"
	"github.com/AccelByte/accelbyte-go-modular-sdk/reporting-sdk/pkg/reportingclient/admin_extension_categories_and_auto_moderation_actions"
	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/repository"
	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/utils"
	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/utils/auth"
)

type AdminExtensionCategoriesandAutoModerationActionsService struct {
	Client           *reportingclient.JusticeReportingService
	ConfigRepository repository.ConfigRepository
	TokenRepository  repository.TokenRepository

	FlightIdRepository *utils.FlightIdContainer
}

var tempFlightIdAdminExtensionCategoriesandAutoModerationActions *string

func (aaa *AdminExtensionCategoriesandAutoModerationActionsService) UpdateFlightId(flightId string) {
	tempFlightIdAdminExtensionCategoriesandAutoModerationActions = &flightId
}

func (aaa *AdminExtensionCategoriesandAutoModerationActionsService) GetAuthSession() auth.Session {
	return auth.Session{
		aaa.TokenRepository,
		aaa.ConfigRepository,
		nil,
	}
}

func (aaa *AdminExtensionCategoriesandAutoModerationActionsService) AdminFindActionListShort(input *admin_extension_categories_and_auto_moderation_actions.AdminFindActionListParams) (*admin_extension_categories_and_auto_moderation_actions.AdminFindActionListResponse, error) {
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
	if tempFlightIdAdminExtensionCategoriesandAutoModerationActions != nil {
		input.XFlightId = tempFlightIdAdminExtensionCategoriesandAutoModerationActions
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	ok, err := aaa.Client.AdminExtensionCategoriesAndAutoModerationActions.AdminFindActionListShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok, nil
}

func (aaa *AdminExtensionCategoriesandAutoModerationActionsService) AdminCreateModActionShort(input *admin_extension_categories_and_auto_moderation_actions.AdminCreateModActionParams) (*admin_extension_categories_and_auto_moderation_actions.AdminCreateModActionResponse, error) {
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
	if tempFlightIdAdminExtensionCategoriesandAutoModerationActions != nil {
		input.XFlightId = tempFlightIdAdminExtensionCategoriesandAutoModerationActions
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	created, err := aaa.Client.AdminExtensionCategoriesAndAutoModerationActions.AdminCreateModActionShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return created, nil
}

func (aaa *AdminExtensionCategoriesandAutoModerationActionsService) AdminFindExtensionCategoryListShort(input *admin_extension_categories_and_auto_moderation_actions.AdminFindExtensionCategoryListParams) (*admin_extension_categories_and_auto_moderation_actions.AdminFindExtensionCategoryListResponse, error) {
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
	if tempFlightIdAdminExtensionCategoriesandAutoModerationActions != nil {
		input.XFlightId = tempFlightIdAdminExtensionCategoriesandAutoModerationActions
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	ok, err := aaa.Client.AdminExtensionCategoriesAndAutoModerationActions.AdminFindExtensionCategoryListShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok, nil
}

func (aaa *AdminExtensionCategoriesandAutoModerationActionsService) AdminCreateExtensionCategoryShort(input *admin_extension_categories_and_auto_moderation_actions.AdminCreateExtensionCategoryParams) (*admin_extension_categories_and_auto_moderation_actions.AdminCreateExtensionCategoryResponse, error) {
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
	if tempFlightIdAdminExtensionCategoriesandAutoModerationActions != nil {
		input.XFlightId = tempFlightIdAdminExtensionCategoriesandAutoModerationActions
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	created, err := aaa.Client.AdminExtensionCategoriesAndAutoModerationActions.AdminCreateExtensionCategoryShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return created, nil
}
