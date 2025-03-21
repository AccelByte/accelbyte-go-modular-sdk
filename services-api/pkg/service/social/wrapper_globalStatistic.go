// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package social

import (
	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/repository"
	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/utils"
	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/utils/auth"
	"github.com/AccelByte/accelbyte-go-modular-sdk/social-sdk/pkg/socialclient"
	"github.com/AccelByte/accelbyte-go-modular-sdk/social-sdk/pkg/socialclient/global_statistic"
)

// GlobalStatisticService this is use for compatibility with latest modular sdk only
// Deprecated: 2023-03-30 - please use GlobalStatisticService imported from "github.com/AccelByte/accelbyte-go-modular-sdk/social-sdk/pkg"
type GlobalStatisticService struct {
	Client           *socialclient.JusticeSocialService
	ConfigRepository repository.ConfigRepository
	TokenRepository  repository.TokenRepository

	FlightIdRepository *utils.FlightIdContainer
}

var tempFlightIdGlobalStatistic *string

func (aaa *GlobalStatisticService) UpdateFlightId(flightId string) {
	tempFlightIdGlobalStatistic = &flightId
}

func (aaa *GlobalStatisticService) GetAuthSession() auth.Session {
	return auth.Session{
		aaa.TokenRepository,
		aaa.ConfigRepository,
		nil,
	}
}

func (aaa *GlobalStatisticService) GetGlobalStatItemsShort(input *global_statistic.GetGlobalStatItemsParams) (*global_statistic.GetGlobalStatItemsResponse, error) {
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
	if tempFlightIdGlobalStatistic != nil {
		input.XFlightId = tempFlightIdGlobalStatistic
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	ok, err := aaa.Client.GlobalStatistic.GetGlobalStatItemsShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok, nil
}

func (aaa *GlobalStatisticService) GetGlobalStatItemByStatCodeShort(input *global_statistic.GetGlobalStatItemByStatCodeParams) (*global_statistic.GetGlobalStatItemByStatCodeResponse, error) {
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
	if tempFlightIdGlobalStatistic != nil {
		input.XFlightId = tempFlightIdGlobalStatistic
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	ok, err := aaa.Client.GlobalStatistic.GetGlobalStatItemByStatCodeShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok, nil
}

func (aaa *GlobalStatisticService) GetGlobalStatItems1Short(input *global_statistic.GetGlobalStatItems1Params) (*global_statistic.GetGlobalStatItems1Response, error) {
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
	if tempFlightIdGlobalStatistic != nil {
		input.XFlightId = tempFlightIdGlobalStatistic
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	ok, err := aaa.Client.GlobalStatistic.GetGlobalStatItems1Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok, nil
}

func (aaa *GlobalStatisticService) GetGlobalStatItemByStatCode1Short(input *global_statistic.GetGlobalStatItemByStatCode1Params) (*global_statistic.GetGlobalStatItemByStatCode1Response, error) {
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
	if tempFlightIdGlobalStatistic != nil {
		input.XFlightId = tempFlightIdGlobalStatistic
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	ok, err := aaa.Client.GlobalStatistic.GetGlobalStatItemByStatCode1Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok, nil
}
