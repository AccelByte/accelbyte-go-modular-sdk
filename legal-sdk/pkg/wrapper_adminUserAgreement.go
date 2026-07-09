// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package legal

import (
	"github.com/AccelByte/accelbyte-go-modular-sdk/legal-sdk/pkg/legalclient"
	"github.com/AccelByte/accelbyte-go-modular-sdk/legal-sdk/pkg/legalclient/admin_user_agreement"
	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/repository"
	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/utils"
	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/utils/auth"
)

type AdminUserAgreementService struct {
	Client  *legalclient.JusticeLegalService
	Session repository.Session
}

var tempFlightIdAdminUserAgreement *string

func (aaa *AdminUserAgreementService) UpdateFlightId(flightId string) {
	tempFlightIdAdminUserAgreement = &flightId
}

func (aaa *AdminUserAgreementService) GetAuthSession() auth.Session {
	return auth.Session{
		Token:   aaa.Session.TokenRepository,
		Config:  aaa.Session.ConfigRepository,
		Refresh: nil,
	}
}

func (aaa *AdminUserAgreementService) IndirectBulkAcceptVersionedPolicyShort(input *admin_user_agreement.IndirectBulkAcceptVersionedPolicyParams) (*admin_user_agreement.IndirectBulkAcceptVersionedPolicyResponse, error) {
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
	if tempFlightIdAdminUserAgreement != nil {
		input.XFlightId = tempFlightIdAdminUserAgreement
	} else if aaa.Session.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.Session.FlightIdRepository.Value)
	}

	created, err := aaa.Client.AdminUserAgreement.IndirectBulkAcceptVersionedPolicyShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	if created == nil {
		return nil, nil
	}

	return created, nil
}
