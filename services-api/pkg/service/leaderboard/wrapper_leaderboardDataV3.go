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
)

// LeaderboardDataV3Service this is use for compatibility with latest modular sdk only
// Deprecated: 2023-03-30 - please use LeaderboardDataV3Service imported from "github.com/AccelByte/accelbyte-go-modular-sdk/leaderboard-sdk/pkg"
type LeaderboardDataV3Service struct {
	Client           *leaderboardclient.JusticeLeaderboardService
	ConfigRepository repository.ConfigRepository
	TokenRepository  repository.TokenRepository

	FlightIdRepository *utils.FlightIdContainer
}

var tempFlightIdLeaderboardDataV3 *string

func (aaa *LeaderboardDataV3Service) UpdateFlightId(flightId string) {
	tempFlightIdLeaderboardDataV3 = &flightId
}

func (aaa *LeaderboardDataV3Service) GetAuthSession() auth.Session {
	return auth.Session{
		aaa.TokenRepository,
		aaa.ConfigRepository,
		nil,
	}
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
	if tempFlightIdLeaderboardDataV3 != nil {
		input.XFlightId = tempFlightIdLeaderboardDataV3
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
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
	if tempFlightIdLeaderboardDataV3 != nil {
		input.XFlightId = tempFlightIdLeaderboardDataV3
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	ok, err := aaa.Client.LeaderboardDataV3.GetCurrentCycleLeaderboardRankingAdminV3Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *LeaderboardDataV3Service) DeleteAllUserRankingByCycleIDAdminV3Short(input *leaderboard_data_v3.DeleteAllUserRankingByCycleIDAdminV3Params) error {
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
	if tempFlightIdLeaderboardDataV3 != nil {
		input.XFlightId = tempFlightIdLeaderboardDataV3
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	_, err := aaa.Client.LeaderboardDataV3.DeleteAllUserRankingByCycleIDAdminV3Short(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (aaa *LeaderboardDataV3Service) DeleteUserRankingByCycleIDAdminV3Short(input *leaderboard_data_v3.DeleteUserRankingByCycleIDAdminV3Params) error {
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
	if tempFlightIdLeaderboardDataV3 != nil {
		input.XFlightId = tempFlightIdLeaderboardDataV3
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	_, err := aaa.Client.LeaderboardDataV3.DeleteUserRankingByCycleIDAdminV3Short(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
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
	if tempFlightIdLeaderboardDataV3 != nil {
		input.XFlightId = tempFlightIdLeaderboardDataV3
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
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
	if tempFlightIdLeaderboardDataV3 != nil {
		input.XFlightId = tempFlightIdLeaderboardDataV3
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
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
	if tempFlightIdLeaderboardDataV3 != nil {
		input.XFlightId = tempFlightIdLeaderboardDataV3
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
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
	if tempFlightIdLeaderboardDataV3 != nil {
		input.XFlightId = tempFlightIdLeaderboardDataV3
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
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
	if tempFlightIdLeaderboardDataV3 != nil {
		input.XFlightId = tempFlightIdLeaderboardDataV3
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
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
	if tempFlightIdLeaderboardDataV3 != nil {
		input.XFlightId = tempFlightIdLeaderboardDataV3
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
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
	if tempFlightIdLeaderboardDataV3 != nil {
		input.XFlightId = tempFlightIdLeaderboardDataV3
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
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
	if tempFlightIdLeaderboardDataV3 != nil {
		input.XFlightId = tempFlightIdLeaderboardDataV3
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	ok, err := aaa.Client.LeaderboardDataV3.GetUserRankingPublicV3Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}
