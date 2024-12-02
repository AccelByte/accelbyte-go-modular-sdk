// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package leaderboard

import (
	"github.com/AccelByte/accelbyte-go-modular-sdk/leaderboard-sdk/pkg/leaderboardclient"
	"github.com/AccelByte/accelbyte-go-modular-sdk/leaderboard-sdk/pkg/leaderboardclient/leaderboard_configuration"
	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/repository"
	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/utils"
	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/utils/auth"
)

// LeaderboardConfigurationService this is use for compatibility with latest modular sdk only
// Deprecated: 2023-03-30 - please use LeaderboardConfigurationService imported from "github.com/AccelByte/accelbyte-go-modular-sdk/leaderboard-sdk/pkg"
type LeaderboardConfigurationService struct {
	Client           *leaderboardclient.JusticeLeaderboardService
	ConfigRepository repository.ConfigRepository
	TokenRepository  repository.TokenRepository

	FlightIdRepository *utils.FlightIdContainer
}

var tempFlightIdLeaderboardConfiguration *string

func (aaa *LeaderboardConfigurationService) UpdateFlightId(flightId string) {
	tempFlightIdLeaderboardConfiguration = &flightId
}

func (aaa *LeaderboardConfigurationService) GetAuthSession() auth.Session {
	return auth.Session{
		aaa.TokenRepository,
		aaa.ConfigRepository,
		nil,
	}
}

func (aaa *LeaderboardConfigurationService) GetLeaderboardConfigurationsAdminV1Short(input *leaderboard_configuration.GetLeaderboardConfigurationsAdminV1Params) (*leaderboard_configuration.GetLeaderboardConfigurationsAdminV1Response, error) {
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
	if tempFlightIdLeaderboardConfiguration != nil {
		input.XFlightId = tempFlightIdLeaderboardConfiguration
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	ok, err := aaa.Client.LeaderboardConfiguration.GetLeaderboardConfigurationsAdminV1Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok, nil
}

func (aaa *LeaderboardConfigurationService) CreateLeaderboardConfigurationAdminV1Short(input *leaderboard_configuration.CreateLeaderboardConfigurationAdminV1Params) (*leaderboard_configuration.CreateLeaderboardConfigurationAdminV1Response, error) {
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
	if tempFlightIdLeaderboardConfiguration != nil {
		input.XFlightId = tempFlightIdLeaderboardConfiguration
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	created, err := aaa.Client.LeaderboardConfiguration.CreateLeaderboardConfigurationAdminV1Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return created, nil
}

func (aaa *LeaderboardConfigurationService) DeleteBulkLeaderboardConfigurationAdminV1Short(input *leaderboard_configuration.DeleteBulkLeaderboardConfigurationAdminV1Params) (*leaderboard_configuration.DeleteBulkLeaderboardConfigurationAdminV1Response, error) {
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
	if tempFlightIdLeaderboardConfiguration != nil {
		input.XFlightId = tempFlightIdLeaderboardConfiguration
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	ok, err := aaa.Client.LeaderboardConfiguration.DeleteBulkLeaderboardConfigurationAdminV1Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok, nil
}

func (aaa *LeaderboardConfigurationService) GetLeaderboardConfigurationAdminV1Short(input *leaderboard_configuration.GetLeaderboardConfigurationAdminV1Params) (*leaderboard_configuration.GetLeaderboardConfigurationAdminV1Response, error) {
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
	if tempFlightIdLeaderboardConfiguration != nil {
		input.XFlightId = tempFlightIdLeaderboardConfiguration
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	ok, err := aaa.Client.LeaderboardConfiguration.GetLeaderboardConfigurationAdminV1Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok, nil
}

func (aaa *LeaderboardConfigurationService) UpdateLeaderboardConfigurationAdminV1Short(input *leaderboard_configuration.UpdateLeaderboardConfigurationAdminV1Params) (*leaderboard_configuration.UpdateLeaderboardConfigurationAdminV1Response, error) {
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
	if tempFlightIdLeaderboardConfiguration != nil {
		input.XFlightId = tempFlightIdLeaderboardConfiguration
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	ok, err := aaa.Client.LeaderboardConfiguration.UpdateLeaderboardConfigurationAdminV1Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok, nil
}

func (aaa *LeaderboardConfigurationService) DeleteLeaderboardConfigurationAdminV1Short(input *leaderboard_configuration.DeleteLeaderboardConfigurationAdminV1Params) error {
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
	if tempFlightIdLeaderboardConfiguration != nil {
		input.XFlightId = tempFlightIdLeaderboardConfiguration
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	_, err := aaa.Client.LeaderboardConfiguration.DeleteLeaderboardConfigurationAdminV1Short(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (aaa *LeaderboardConfigurationService) HardDeleteLeaderboardAdminV1Short(input *leaderboard_configuration.HardDeleteLeaderboardAdminV1Params) error {
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
	if tempFlightIdLeaderboardConfiguration != nil {
		input.XFlightId = tempFlightIdLeaderboardConfiguration
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	_, err := aaa.Client.LeaderboardConfiguration.HardDeleteLeaderboardAdminV1Short(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (aaa *LeaderboardConfigurationService) GetLeaderboardConfigurationsPublicV1Short(input *leaderboard_configuration.GetLeaderboardConfigurationsPublicV1Params) (*leaderboard_configuration.GetLeaderboardConfigurationsPublicV1Response, error) {
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
	if tempFlightIdLeaderboardConfiguration != nil {
		input.XFlightId = tempFlightIdLeaderboardConfiguration
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	ok, err := aaa.Client.LeaderboardConfiguration.GetLeaderboardConfigurationsPublicV1Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok, nil
}

func (aaa *LeaderboardConfigurationService) CreateLeaderboardConfigurationPublicV1Short(input *leaderboard_configuration.CreateLeaderboardConfigurationPublicV1Params) (*leaderboard_configuration.CreateLeaderboardConfigurationPublicV1Response, error) {
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
	if tempFlightIdLeaderboardConfiguration != nil {
		input.XFlightId = tempFlightIdLeaderboardConfiguration
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	created, err := aaa.Client.LeaderboardConfiguration.CreateLeaderboardConfigurationPublicV1Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return created, nil
}

func (aaa *LeaderboardConfigurationService) GetLeaderboardConfigurationsPublicV2Short(input *leaderboard_configuration.GetLeaderboardConfigurationsPublicV2Params) (*leaderboard_configuration.GetLeaderboardConfigurationsPublicV2Response, error) {
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
	if tempFlightIdLeaderboardConfiguration != nil {
		input.XFlightId = tempFlightIdLeaderboardConfiguration
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	ok, err := aaa.Client.LeaderboardConfiguration.GetLeaderboardConfigurationsPublicV2Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok, nil
}
