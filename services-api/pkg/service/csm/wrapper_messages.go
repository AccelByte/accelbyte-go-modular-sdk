// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package csm

import (
	"github.com/AccelByte/accelbyte-go-modular-sdk/csm-sdk/pkg/csmclient"
	"github.com/AccelByte/accelbyte-go-modular-sdk/csm-sdk/pkg/csmclient/messages"
	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/repository"
	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/utils"
	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/utils/auth"
)

// MessagesService this is use for compatibility with latest modular sdk only
// Deprecated: 2023-03-30 - please use MessagesService imported from "github.com/AccelByte/accelbyte-go-modular-sdk/csm-sdk/pkg"
type MessagesService struct {
	Client  *csmclient.JusticeCsmService
	Session repository.Session
}

var tempFlightIdMessages *string

func (aaa *MessagesService) UpdateFlightId(flightId string) {
	tempFlightIdMessages = &flightId
}

func (aaa *MessagesService) GetAuthSession() auth.Session {
	return auth.Session{
		Token:   aaa.Session.TokenRepository,
		Config:  aaa.Session.ConfigRepository,
		Refresh: nil,
	}
}

func (aaa *MessagesService) PublicGetMessagesShort(input *messages.PublicGetMessagesParams) (*messages.PublicGetMessagesResponse, error) {
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
	if tempFlightIdMessages != nil {
		input.XFlightId = tempFlightIdMessages
	} else if aaa.Session.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.Session.FlightIdRepository.Value)
	}

	ok, err := aaa.Client.Messages.PublicGetMessagesShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok, nil
}
