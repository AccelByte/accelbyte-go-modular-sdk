// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package ams

import (
	"github.com/AccelByte/accelbyte-go-modular-sdk/ams-sdk/pkg/amsclient"
	"github.com/AccelByte/accelbyte-go-modular-sdk/ams-sdk/pkg/amsclient/operations"
	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/repository"
	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/utils"
	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/utils/auth"
	"github.com/go-openapi/runtime/client"
)

type OperationsService struct {
	Client           *amsclient.JusticeAmsService
	ConfigRepository repository.ConfigRepository
	TokenRepository  repository.TokenRepository
}

func (aaa *OperationsService) GetAuthSession() auth.Session {
	return auth.Session{
		aaa.TokenRepository,
		aaa.ConfigRepository,
		nil,
	}
}

// Deprecated: 2022-01-10 - Please use BasicHealthCheckShort instead.
func (aaa *OperationsService) BasicHealthCheck(input *operations.BasicHealthCheckParams) error {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, err = aaa.Client.Operations.BasicHealthCheck(input, client.BearerToken(*token.AccessToken))
	if err != nil {
		return err
	}

	return nil
}

func (aaa *OperationsService) BasicHealthCheckShort(input *operations.BasicHealthCheckParams) error {
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

	_, err := aaa.Client.Operations.BasicHealthCheckShort(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}
