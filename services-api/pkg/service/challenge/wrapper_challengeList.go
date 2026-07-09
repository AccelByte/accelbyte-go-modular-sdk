// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package challenge

import (
	"github.com/AccelByte/accelbyte-go-modular-sdk/challenge-sdk/pkg/challengeclient"
	"github.com/AccelByte/accelbyte-go-modular-sdk/challenge-sdk/pkg/challengeclient/challenge_list"
	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/repository"
	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/utils"
	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/utils/auth"
)

// ChallengeListService this is use for compatibility with latest modular sdk only
// Deprecated: 2023-03-30 - please use ChallengeListService imported from "github.com/AccelByte/accelbyte-go-modular-sdk/challenge-sdk/pkg"
type ChallengeListService struct {
	Client  *challengeclient.JusticeChallengeService
	Session repository.Session
}

var tempFlightIdChallengeList *string

func (aaa *ChallengeListService) UpdateFlightId(flightId string) {
	tempFlightIdChallengeList = &flightId
}

func (aaa *ChallengeListService) GetAuthSession() auth.Session {
	return auth.Session{
		Token:   aaa.Session.TokenRepository,
		Config:  aaa.Session.ConfigRepository,
		Refresh: nil,
	}
}

func (aaa *ChallengeListService) PublicGetChallengesShort(input *challenge_list.PublicGetChallengesParams) (*challenge_list.PublicGetChallengesResponse, error) {
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
	if tempFlightIdChallengeList != nil {
		input.XFlightId = tempFlightIdChallengeList
	} else if aaa.Session.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.Session.FlightIdRepository.Value)
	}

	ok, err := aaa.Client.ChallengeList.PublicGetChallengesShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok, nil
}

func (aaa *ChallengeListService) PublicGetScheduledGoalsShort(input *challenge_list.PublicGetScheduledGoalsParams) (*challenge_list.PublicGetScheduledGoalsResponse, error) {
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
	if tempFlightIdChallengeList != nil {
		input.XFlightId = tempFlightIdChallengeList
	} else if aaa.Session.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.Session.FlightIdRepository.Value)
	}

	ok, err := aaa.Client.ChallengeList.PublicGetScheduledGoalsShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok, nil
}
