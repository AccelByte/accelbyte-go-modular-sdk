// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package cloudsave

import (
	"github.com/AccelByte/accelbyte-go-modular-sdk/cloudsave-sdk/pkg/cloudsaveclient"
	"github.com/AccelByte/accelbyte-go-modular-sdk/cloudsave-sdk/pkg/cloudsaveclient/admin_game_binary_record"
	"github.com/AccelByte/accelbyte-go-modular-sdk/cloudsave-sdk/pkg/cloudsaveclientmodels"
	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/repository"
	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/utils"
	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/utils/auth"
	"github.com/go-openapi/runtime/client"
)

// AdminGameBinaryRecordService this is use for compatibility with latest modular sdk only
// Deprecated: 2023-03-30 - please use AdminGameBinaryRecordService imported from "github.com/AccelByte/accelbyte-go-modular-sdk/cloudsave-sdk/pkg"
type AdminGameBinaryRecordService struct {
	Client           *cloudsaveclient.JusticeCloudsaveService
	ConfigRepository repository.ConfigRepository
	TokenRepository  repository.TokenRepository
}

func (aaa *AdminGameBinaryRecordService) GetAuthSession() auth.Session {
	return auth.Session{
		aaa.TokenRepository,
		aaa.ConfigRepository,
		nil,
	}
}

// Deprecated: 2022-01-10 - Please use AdminListGameBinaryRecordsV1Short instead.
func (aaa *AdminGameBinaryRecordService) AdminListGameBinaryRecordsV1(input *admin_game_binary_record.AdminListGameBinaryRecordsV1Params) (*cloudsaveclientmodels.ModelsListGameBinaryRecordsResponse, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, unauthorized, internalServerError, err := aaa.Client.AdminGameBinaryRecord.AdminListGameBinaryRecordsV1(input, client.BearerToken(*token.AccessToken))
	if unauthorized != nil {
		return nil, unauthorized
	}
	if internalServerError != nil {
		return nil, internalServerError
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: 2022-01-10 - Please use AdminPostGameBinaryRecordV1Short instead.
func (aaa *AdminGameBinaryRecordService) AdminPostGameBinaryRecordV1(input *admin_game_binary_record.AdminPostGameBinaryRecordV1Params) (*cloudsaveclientmodels.ModelsUploadBinaryRecordResponse, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	created, unauthorized, internalServerError, err := aaa.Client.AdminGameBinaryRecord.AdminPostGameBinaryRecordV1(input, client.BearerToken(*token.AccessToken))
	if unauthorized != nil {
		return nil, unauthorized
	}
	if internalServerError != nil {
		return nil, internalServerError
	}
	if err != nil {
		return nil, err
	}

	return created.GetPayload(), nil
}

// Deprecated: 2022-01-10 - Please use AdminGetGameBinaryRecordV1Short instead.
func (aaa *AdminGameBinaryRecordService) AdminGetGameBinaryRecordV1(input *admin_game_binary_record.AdminGetGameBinaryRecordV1Params) (*cloudsaveclientmodels.ModelsGameBinaryRecordResponse, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, unauthorized, notFound, internalServerError, err := aaa.Client.AdminGameBinaryRecord.AdminGetGameBinaryRecordV1(input, client.BearerToken(*token.AccessToken))
	if unauthorized != nil {
		return nil, unauthorized
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

// Deprecated: 2022-01-10 - Please use AdminPutGameBinaryRecordV1Short instead.
func (aaa *AdminGameBinaryRecordService) AdminPutGameBinaryRecordV1(input *admin_game_binary_record.AdminPutGameBinaryRecordV1Params) (*cloudsaveclientmodels.ModelsGameBinaryRecordResponse, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, unauthorized, internalServerError, err := aaa.Client.AdminGameBinaryRecord.AdminPutGameBinaryRecordV1(input, client.BearerToken(*token.AccessToken))
	if unauthorized != nil {
		return nil, unauthorized
	}
	if internalServerError != nil {
		return nil, internalServerError
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: 2022-01-10 - Please use AdminDeleteGameBinaryRecordV1Short instead.
func (aaa *AdminGameBinaryRecordService) AdminDeleteGameBinaryRecordV1(input *admin_game_binary_record.AdminDeleteGameBinaryRecordV1Params) error {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, unauthorized, notFound, internalServerError, err := aaa.Client.AdminGameBinaryRecord.AdminDeleteGameBinaryRecordV1(input, client.BearerToken(*token.AccessToken))
	if unauthorized != nil {
		return unauthorized
	}
	if notFound != nil {
		return notFound
	}
	if internalServerError != nil {
		return internalServerError
	}
	if err != nil {
		return err
	}

	return nil
}

// Deprecated: 2022-01-10 - Please use AdminPutGameBinaryRecorMetadataV1Short instead.
func (aaa *AdminGameBinaryRecordService) AdminPutGameBinaryRecorMetadataV1(input *admin_game_binary_record.AdminPutGameBinaryRecorMetadataV1Params) (*cloudsaveclientmodels.ModelsGameBinaryRecordResponse, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, unauthorized, internalServerError, err := aaa.Client.AdminGameBinaryRecord.AdminPutGameBinaryRecorMetadataV1(input, client.BearerToken(*token.AccessToken))
	if unauthorized != nil {
		return nil, unauthorized
	}
	if internalServerError != nil {
		return nil, internalServerError
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: 2022-01-10 - Please use AdminPostGameBinaryPresignedURLV1Short instead.
func (aaa *AdminGameBinaryRecordService) AdminPostGameBinaryPresignedURLV1(input *admin_game_binary_record.AdminPostGameBinaryPresignedURLV1Params) (*cloudsaveclientmodels.ModelsUploadBinaryRecordResponse, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	created, unauthorized, internalServerError, err := aaa.Client.AdminGameBinaryRecord.AdminPostGameBinaryPresignedURLV1(input, client.BearerToken(*token.AccessToken))
	if unauthorized != nil {
		return nil, unauthorized
	}
	if internalServerError != nil {
		return nil, internalServerError
	}
	if err != nil {
		return nil, err
	}

	return created.GetPayload(), nil
}

func (aaa *AdminGameBinaryRecordService) AdminListGameBinaryRecordsV1Short(input *admin_game_binary_record.AdminListGameBinaryRecordsV1Params) (*cloudsaveclientmodels.ModelsListGameBinaryRecordsResponse, error) {
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

	ok, err := aaa.Client.AdminGameBinaryRecord.AdminListGameBinaryRecordsV1Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *AdminGameBinaryRecordService) AdminPostGameBinaryRecordV1Short(input *admin_game_binary_record.AdminPostGameBinaryRecordV1Params) (*cloudsaveclientmodels.ModelsUploadBinaryRecordResponse, error) {
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

	created, err := aaa.Client.AdminGameBinaryRecord.AdminPostGameBinaryRecordV1Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return created.GetPayload(), nil
}

func (aaa *AdminGameBinaryRecordService) AdminGetGameBinaryRecordV1Short(input *admin_game_binary_record.AdminGetGameBinaryRecordV1Params) (*cloudsaveclientmodels.ModelsGameBinaryRecordResponse, error) {
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

	ok, err := aaa.Client.AdminGameBinaryRecord.AdminGetGameBinaryRecordV1Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *AdminGameBinaryRecordService) AdminPutGameBinaryRecordV1Short(input *admin_game_binary_record.AdminPutGameBinaryRecordV1Params) (*cloudsaveclientmodels.ModelsGameBinaryRecordResponse, error) {
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

	ok, err := aaa.Client.AdminGameBinaryRecord.AdminPutGameBinaryRecordV1Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *AdminGameBinaryRecordService) AdminDeleteGameBinaryRecordV1Short(input *admin_game_binary_record.AdminDeleteGameBinaryRecordV1Params) error {
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

	_, err := aaa.Client.AdminGameBinaryRecord.AdminDeleteGameBinaryRecordV1Short(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (aaa *AdminGameBinaryRecordService) AdminPutGameBinaryRecorMetadataV1Short(input *admin_game_binary_record.AdminPutGameBinaryRecorMetadataV1Params) (*cloudsaveclientmodels.ModelsGameBinaryRecordResponse, error) {
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

	ok, err := aaa.Client.AdminGameBinaryRecord.AdminPutGameBinaryRecorMetadataV1Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *AdminGameBinaryRecordService) AdminPostGameBinaryPresignedURLV1Short(input *admin_game_binary_record.AdminPostGameBinaryPresignedURLV1Params) (*cloudsaveclientmodels.ModelsUploadBinaryRecordResponse, error) {
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

	created, err := aaa.Client.AdminGameBinaryRecord.AdminPostGameBinaryPresignedURLV1Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return created.GetPayload(), nil
}
