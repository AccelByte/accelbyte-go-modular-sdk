// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package inventory

import (
	"github.com/AccelByte/accelbyte-go-modular-sdk/inventory-sdk/pkg/inventoryclient"
	"github.com/AccelByte/accelbyte-go-modular-sdk/inventory-sdk/pkg/inventoryclient/admin_chaining_operations"
	"github.com/AccelByte/accelbyte-go-modular-sdk/inventory-sdk/pkg/inventoryclientmodels"
	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/repository"
	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/utils"
	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/utils/auth"
	"github.com/go-openapi/runtime/client"
)

// AdminChainingOperationsService this is use for compatibility with latest modular sdk only
// Deprecated: 2023-03-30 - please use AdminChainingOperationsService imported from "github.com/AccelByte/accelbyte-go-modular-sdk/inventory-sdk/pkg"
type AdminChainingOperationsService struct {
	Client           *inventoryclient.JusticeInventoryService
	ConfigRepository repository.ConfigRepository
	TokenRepository  repository.TokenRepository
}

func (aaa *AdminChainingOperationsService) GetAuthSession() auth.Session {
	return auth.Session{
		aaa.TokenRepository,
		aaa.ConfigRepository,
		nil,
	}
}

// Deprecated: 2022-01-10 - Please use AdminCreateChainingOperationsShort instead.
func (aaa *AdminChainingOperationsService) AdminCreateChainingOperations(input *admin_chaining_operations.AdminCreateChainingOperationsParams) (*inventoryclientmodels.ApimodelsChainingOperationResp, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, internalServerError, err := aaa.Client.AdminChainingOperations.AdminCreateChainingOperations(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return nil, badRequest
	}
	if unauthorized != nil {
		return nil, unauthorized
	}
	if forbidden != nil {
		return nil, forbidden
	}
	if notFound != nil {
		return nil, notFound
	}
	if internalServerError != nil {
		return nil, internalServerError
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *AdminChainingOperationsService) AdminCreateChainingOperationsShort(input *admin_chaining_operations.AdminCreateChainingOperationsParams) (*inventoryclientmodels.ApimodelsChainingOperationResp, error) {
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

	ok, err := aaa.Client.AdminChainingOperations.AdminCreateChainingOperationsShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}
