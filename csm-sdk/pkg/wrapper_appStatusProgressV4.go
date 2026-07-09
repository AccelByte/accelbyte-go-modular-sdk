// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package csm

import (
	"github.com/AccelByte/accelbyte-go-modular-sdk/csm-sdk/pkg/csmclient"
	"github.com/AccelByte/accelbyte-go-modular-sdk/csm-sdk/pkg/csmclient/app_status_progress_v4"
	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/repository"
	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/utils"
	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/utils/auth"
)

type AppStatusProgressV4Service struct {
	Client  *csmclient.JusticeCsmService
	Session repository.Session
}

var tempFlightIdAppStatusProgressV4 *string

func (aaa *AppStatusProgressV4Service) UpdateFlightId(flightId string) {
	tempFlightIdAppStatusProgressV4 = &flightId
}

func (aaa *AppStatusProgressV4Service) GetAuthSession() auth.Session {
	return auth.Session{
		Token:   aaa.Session.TokenRepository,
		Config:  aaa.Session.ConfigRepository,
		Refresh: nil,
	}
}

func (aaa *AppStatusProgressV4Service) GetAppStatusProgressV4Short(input *app_status_progress_v4.GetAppStatusProgressV4Params) (*app_status_progress_v4.GetAppStatusProgressV4Response, error) {
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
	if tempFlightIdAppStatusProgressV4 != nil {
		input.XFlightId = tempFlightIdAppStatusProgressV4
	} else if aaa.Session.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.Session.FlightIdRepository.Value)
	}

	ok, err := aaa.Client.AppStatusProgressV4.GetAppStatusProgressV4Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	if ok == nil {
		return nil, nil
	}

	return ok, nil
}
