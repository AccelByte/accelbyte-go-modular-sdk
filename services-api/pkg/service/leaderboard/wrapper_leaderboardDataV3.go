// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package leaderboard

import (
	"github.com/AccelByte/accelbyte-go-modular-sdk/leaderboard-sdk/pkg/leaderboardclient"
	"github.com/AccelByte/accelbyte-go-modular-sdk/leaderboard-sdk/pkg/leaderboardclient/leaderboard_data_v3"
	"github.com/AccelByte/accelbyte-go-modular-sdk/leaderboard-sdk/pkg/leaderboardclientmodels"
	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/repository"
	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/utils"
	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/utils/auth"
	"github.com/go-openapi/runtime/client"
)

// LeaderboardDataV3Service this is use for compatibility with latest modular sdk only
// Deprecated: 2023-03-30 - please use LeaderboardDataV3Service imported from "github.com/AccelByte/accelbyte-go-modular-sdk/leaderboard-sdk/pkg"
type LeaderboardDataV3Service struct {
	Client           *leaderboardclient.JusticeLeaderboardService
	ConfigRepository repository.ConfigRepository
	TokenRepository  repository.TokenRepository
}

func (aaa *LeaderboardDataV3Service) GetAuthSession() auth.Session {
	return auth.Session{
		aaa.TokenRepository,
		aaa.ConfigRepository,
		nil,
	}
}

// Deprecated: 2022-01-10 - Please use GetAllTimeLeaderboardRankingAdminV3Short instead.
func (aaa *LeaderboardDataV3Service) GetAllTimeLeaderboardRankingAdminV3(input *leaderboard_data_v3.GetAllTimeLeaderboardRankingAdminV3Params) (*leaderboardclientmodels.ModelsGetLeaderboardRankingResp, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, internalServerError, err := aaa.Client.LeaderboardDataV3.GetAllTimeLeaderboardRankingAdminV3(input, client.BearerToken(*token.AccessToken))
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

// Deprecated: 2022-01-10 - Please use GetCurrentCycleLeaderboardRankingAdminV3Short instead.
func (aaa *LeaderboardDataV3Service) GetCurrentCycleLeaderboardRankingAdminV3(input *leaderboard_data_v3.GetCurrentCycleLeaderboardRankingAdminV3Params) (*leaderboardclientmodels.ModelsGetLeaderboardRankingResp, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, internalServerError, err := aaa.Client.LeaderboardDataV3.GetCurrentCycleLeaderboardRankingAdminV3(input, client.BearerToken(*token.AccessToken))
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

// Deprecated: 2022-01-10 - Please use DeleteUserRankingByLeaderboardCodeAdminV3Short instead.
func (aaa *LeaderboardDataV3Service) DeleteUserRankingByLeaderboardCodeAdminV3(input *leaderboard_data_v3.DeleteUserRankingByLeaderboardCodeAdminV3Params) error {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, unauthorized, forbidden, notFound, internalServerError, err := aaa.Client.LeaderboardDataV3.DeleteUserRankingByLeaderboardCodeAdminV3(input, client.BearerToken(*token.AccessToken))
	if unauthorized != nil {
		return unauthorized
	}
	if forbidden != nil {
		return forbidden
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

// Deprecated: 2022-01-10 - Please use GetUserRankingAdminV3Short instead.
func (aaa *LeaderboardDataV3Service) GetUserRankingAdminV3(input *leaderboard_data_v3.GetUserRankingAdminV3Params) (*leaderboardclientmodels.ModelsUserRankingResponseV3, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, unauthorized, forbidden, notFound, internalServerError, err := aaa.Client.LeaderboardDataV3.GetUserRankingAdminV3(input, client.BearerToken(*token.AccessToken))
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

// Deprecated: 2022-01-10 - Please use DeleteUserRankingAdminV3Short instead.
func (aaa *LeaderboardDataV3Service) DeleteUserRankingAdminV3(input *leaderboard_data_v3.DeleteUserRankingAdminV3Params) error {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, unauthorized, forbidden, notFound, internalServerError, err := aaa.Client.LeaderboardDataV3.DeleteUserRankingAdminV3(input, client.BearerToken(*token.AccessToken))
	if unauthorized != nil {
		return unauthorized
	}
	if forbidden != nil {
		return forbidden
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

// Deprecated: 2022-01-10 - Please use DeleteUserRankingsAdminV3Short instead.
func (aaa *LeaderboardDataV3Service) DeleteUserRankingsAdminV3(input *leaderboard_data_v3.DeleteUserRankingsAdminV3Params) error {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, unauthorized, forbidden, notFound, internalServerError, err := aaa.Client.LeaderboardDataV3.DeleteUserRankingsAdminV3(input, client.BearerToken(*token.AccessToken))
	if unauthorized != nil {
		return unauthorized
	}
	if forbidden != nil {
		return forbidden
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

// Deprecated: 2022-01-10 - Please use GetAllTimeLeaderboardRankingPublicV3Short instead.
func (aaa *LeaderboardDataV3Service) GetAllTimeLeaderboardRankingPublicV3(input *leaderboard_data_v3.GetAllTimeLeaderboardRankingPublicV3Params) (*leaderboardclientmodels.ModelsGetLeaderboardRankingResp, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, notFound, internalServerError, err := aaa.Client.LeaderboardDataV3.GetAllTimeLeaderboardRankingPublicV3(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return nil, badRequest
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

// Deprecated: 2022-01-10 - Please use GetCurrentCycleLeaderboardRankingPublicV3Short instead.
func (aaa *LeaderboardDataV3Service) GetCurrentCycleLeaderboardRankingPublicV3(input *leaderboard_data_v3.GetCurrentCycleLeaderboardRankingPublicV3Params) (*leaderboardclientmodels.ModelsGetLeaderboardRankingResp, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, notFound, internalServerError, err := aaa.Client.LeaderboardDataV3.GetCurrentCycleLeaderboardRankingPublicV3(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return nil, badRequest
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

// Deprecated: 2022-01-10 - Please use BulkGetUsersRankingPublicV3Short instead.
func (aaa *LeaderboardDataV3Service) BulkGetUsersRankingPublicV3(input *leaderboard_data_v3.BulkGetUsersRankingPublicV3Params) (*leaderboardclientmodels.ModelsBulkUserRankingResponseV3, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, unauthorized, forbidden, notFound, internalServerError, err := aaa.Client.LeaderboardDataV3.BulkGetUsersRankingPublicV3(input, client.BearerToken(*token.AccessToken))
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

// Deprecated: 2022-01-10 - Please use GetUserRankingPublicV3Short instead.
func (aaa *LeaderboardDataV3Service) GetUserRankingPublicV3(input *leaderboard_data_v3.GetUserRankingPublicV3Params) (*leaderboardclientmodels.ModelsUserRankingResponseV3, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, unauthorized, forbidden, notFound, internalServerError, err := aaa.Client.LeaderboardDataV3.GetUserRankingPublicV3(input, client.BearerToken(*token.AccessToken))
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

func (aaa *LeaderboardDataV3Service) GetAllTimeLeaderboardRankingAdminV3Short(input *leaderboard_data_v3.GetAllTimeLeaderboardRankingAdminV3Params) (*leaderboardclientmodels.ModelsGetLeaderboardRankingResp, error) {
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

	ok, err := aaa.Client.LeaderboardDataV3.GetAllTimeLeaderboardRankingAdminV3Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *LeaderboardDataV3Service) GetCurrentCycleLeaderboardRankingAdminV3Short(input *leaderboard_data_v3.GetCurrentCycleLeaderboardRankingAdminV3Params) (*leaderboardclientmodels.ModelsGetLeaderboardRankingResp, error) {
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

	ok, err := aaa.Client.LeaderboardDataV3.GetCurrentCycleLeaderboardRankingAdminV3Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *LeaderboardDataV3Service) DeleteUserRankingByLeaderboardCodeAdminV3Short(input *leaderboard_data_v3.DeleteUserRankingByLeaderboardCodeAdminV3Params) error {
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

	_, err := aaa.Client.LeaderboardDataV3.DeleteUserRankingByLeaderboardCodeAdminV3Short(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (aaa *LeaderboardDataV3Service) GetUserRankingAdminV3Short(input *leaderboard_data_v3.GetUserRankingAdminV3Params) (*leaderboardclientmodels.ModelsUserRankingResponseV3, error) {
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

	ok, err := aaa.Client.LeaderboardDataV3.GetUserRankingAdminV3Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *LeaderboardDataV3Service) DeleteUserRankingAdminV3Short(input *leaderboard_data_v3.DeleteUserRankingAdminV3Params) error {
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

	_, err := aaa.Client.LeaderboardDataV3.DeleteUserRankingAdminV3Short(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (aaa *LeaderboardDataV3Service) DeleteUserRankingsAdminV3Short(input *leaderboard_data_v3.DeleteUserRankingsAdminV3Params) error {
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

	_, err := aaa.Client.LeaderboardDataV3.DeleteUserRankingsAdminV3Short(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (aaa *LeaderboardDataV3Service) GetAllTimeLeaderboardRankingPublicV3Short(input *leaderboard_data_v3.GetAllTimeLeaderboardRankingPublicV3Params) (*leaderboardclientmodels.ModelsGetLeaderboardRankingResp, error) {
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

	ok, err := aaa.Client.LeaderboardDataV3.GetAllTimeLeaderboardRankingPublicV3Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *LeaderboardDataV3Service) GetCurrentCycleLeaderboardRankingPublicV3Short(input *leaderboard_data_v3.GetCurrentCycleLeaderboardRankingPublicV3Params) (*leaderboardclientmodels.ModelsGetLeaderboardRankingResp, error) {
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

	ok, err := aaa.Client.LeaderboardDataV3.GetCurrentCycleLeaderboardRankingPublicV3Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *LeaderboardDataV3Service) BulkGetUsersRankingPublicV3Short(input *leaderboard_data_v3.BulkGetUsersRankingPublicV3Params) (*leaderboardclientmodels.ModelsBulkUserRankingResponseV3, error) {
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

	ok, err := aaa.Client.LeaderboardDataV3.BulkGetUsersRankingPublicV3Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *LeaderboardDataV3Service) GetUserRankingPublicV3Short(input *leaderboard_data_v3.GetUserRankingPublicV3Params) (*leaderboardclientmodels.ModelsUserRankingResponseV3, error) {
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

	ok, err := aaa.Client.LeaderboardDataV3.GetUserRankingPublicV3Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}
