// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package csm

import (
	"github.com/AccelByte/accelbyte-go-modular-sdk/csm-sdk/pkg/csmclient"
	"github.com/AccelByte/accelbyte-go-modular-sdk/csm-sdk/pkg/csmclient/app_v5"
	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/repository"
	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/utils"
	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/utils/auth"
)

type AppV5Service struct {
	Client  *csmclient.JusticeCsmService
	Session repository.Session
}

var tempFlightIdAppV5 *string

func (aaa *AppV5Service) UpdateFlightId(flightId string) {
	tempFlightIdAppV5 = &flightId
}

func (aaa *AppV5Service) GetAuthSession() auth.Session {
	return auth.Session{
		Token:   aaa.Session.TokenRepository,
		Config:  aaa.Session.ConfigRepository,
		Refresh: nil,
	}
}

func (aaa *AppV5Service) CreateAppV5Short(input *app_v5.CreateAppV5Params) (*app_v5.CreateAppV5Response, error) {
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
	if tempFlightIdAppV5 != nil {
		input.XFlightId = tempFlightIdAppV5
	} else if aaa.Session.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.Session.FlightIdRepository.Value)
	}

	ok, err := aaa.Client.AppV5.CreateAppV5Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	if ok == nil {
		return nil, nil
	}

	return ok, nil
}
