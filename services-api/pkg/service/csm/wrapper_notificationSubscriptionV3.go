// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package csm

import (
	"github.com/AccelByte/accelbyte-go-modular-sdk/csm-sdk/pkg/csmclient"
	"github.com/AccelByte/accelbyte-go-modular-sdk/csm-sdk/pkg/csmclient/notification_subscription_v3"
	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/repository"
	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/utils"
	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/utils/auth"
)

// NotificationSubscriptionV3Service this is use for compatibility with latest modular sdk only
// Deprecated: 2023-03-30 - please use NotificationSubscriptionV3Service imported from "github.com/AccelByte/accelbyte-go-modular-sdk/csm-sdk/pkg"
type NotificationSubscriptionV3Service struct {
	Client           *csmclient.JusticeCsmService
	ConfigRepository repository.ConfigRepository
	TokenRepository  repository.TokenRepository

	FlightIdRepository *utils.FlightIdContainer
}

var tempFlightIdNotificationSubscriptionV3 *string

func (aaa *NotificationSubscriptionV3Service) UpdateFlightId(flightId string) {
	tempFlightIdNotificationSubscriptionV3 = &flightId
}

func (aaa *NotificationSubscriptionV3Service) GetAuthSession() auth.Session {
	return auth.Session{
		aaa.TokenRepository,
		aaa.ConfigRepository,
		nil,
	}
}

func (aaa *NotificationSubscriptionV3Service) GetNotificationSubscriberListV3Short(input *notification_subscription_v3.GetNotificationSubscriberListV3Params) (*notification_subscription_v3.GetNotificationSubscriberListV3Response, error) {
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
	if tempFlightIdNotificationSubscriptionV3 != nil {
		input.XFlightId = tempFlightIdNotificationSubscriptionV3
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	ok, err := aaa.Client.NotificationSubscriptionV3.GetNotificationSubscriberListV3Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok, nil
}

func (aaa *NotificationSubscriptionV3Service) DeleteSubscriptionAppNotificationV3Short(input *notification_subscription_v3.DeleteSubscriptionAppNotificationV3Params) error {
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
	if tempFlightIdNotificationSubscriptionV3 != nil {
		input.XFlightId = tempFlightIdNotificationSubscriptionV3
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	_, err := aaa.Client.NotificationSubscriptionV3.DeleteSubscriptionAppNotificationV3Short(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}
