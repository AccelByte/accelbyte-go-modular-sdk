// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package loginqueue

import (
	"github.com/AccelByte/accelbyte-go-modular-sdk/loginqueue-sdk/pkg/loginqueueclient"
	"github.com/AccelByte/accelbyte-go-modular-sdk/loginqueue-sdk/pkg/loginqueueclient/ticket_v1"
	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/repository"
	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/utils"
	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/utils/auth"
)

// TicketV1Service this is use for compatibility with latest modular sdk only
// Deprecated: 2023-03-30 - please use TicketV1Service imported from "github.com/AccelByte/accelbyte-go-modular-sdk/loginqueue-sdk/pkg"
type TicketV1Service struct {
	Client           *loginqueueclient.JusticeLoginqueueService
	ConfigRepository repository.ConfigRepository
	TokenRepository  repository.TokenRepository

	FlightIdRepository *utils.FlightIdContainer
}

var tempFlightIdTicketV1 *string

func (aaa *TicketV1Service) UpdateFlightId(flightId string) {
	tempFlightIdTicketV1 = &flightId
}

func (aaa *TicketV1Service) GetAuthSession() auth.Session {
	return auth.Session{
		aaa.TokenRepository,
		aaa.ConfigRepository,
		nil,
	}
}

func (aaa *TicketV1Service) RefreshTicketShort(input *ticket_v1.RefreshTicketParams) (*ticket_v1.RefreshTicketResponse, error) {
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
	if tempFlightIdTicketV1 != nil {
		input.XFlightId = tempFlightIdTicketV1
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	ok, err := aaa.Client.TicketV1.RefreshTicketShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok, nil
}

func (aaa *TicketV1Service) CancelTicketShort(input *ticket_v1.CancelTicketParams) error {
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
	if tempFlightIdTicketV1 != nil {
		input.XFlightId = tempFlightIdTicketV1
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	_, err := aaa.Client.TicketV1.CancelTicketShort(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}
