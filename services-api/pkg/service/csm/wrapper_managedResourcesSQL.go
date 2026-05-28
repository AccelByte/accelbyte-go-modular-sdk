// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package csm

import (
	"github.com/AccelByte/accelbyte-go-modular-sdk/csm-sdk/pkg/csmclient"
	"github.com/AccelByte/accelbyte-go-modular-sdk/csm-sdk/pkg/csmclient/managed_resources_sql"
	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/repository"
	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/utils"
	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/utils/auth"
)

// ManagedResourcesSQLService this is use for compatibility with latest modular sdk only
// Deprecated: 2023-03-30 - please use ManagedResourcesSQLService imported from "github.com/AccelByte/accelbyte-go-modular-sdk/csm-sdk/pkg"
type ManagedResourcesSQLService struct {
	Client           *csmclient.JusticeCsmService
	ConfigRepository repository.ConfigRepository
	TokenRepository  repository.TokenRepository

	FlightIdRepository *utils.FlightIdContainer
}

var tempFlightIdManagedResourcesSQL *string

func (aaa *ManagedResourcesSQLService) UpdateFlightId(flightId string) {
	tempFlightIdManagedResourcesSQL = &flightId
}

func (aaa *ManagedResourcesSQLService) GetAuthSession() auth.Session {
	return auth.Session{
		aaa.TokenRepository,
		aaa.ConfigRepository,
		nil,
	}
}

func (aaa *ManagedResourcesSQLService) CreateSQLDatabaseCredentialV2Short(input *managed_resources_sql.CreateSQLDatabaseCredentialV2Params) (*managed_resources_sql.CreateSQLDatabaseCredentialV2Response, error) {
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
	if tempFlightIdManagedResourcesSQL != nil {
		input.XFlightId = tempFlightIdManagedResourcesSQL
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	ok, err := aaa.Client.ManagedResourcesSQL.CreateSQLDatabaseCredentialV2Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok, nil
}

func (aaa *ManagedResourcesSQLService) GetSQLDatabaseV2Short(input *managed_resources_sql.GetSQLDatabaseV2Params) (*managed_resources_sql.GetSQLDatabaseV2Response, error) {
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
	if tempFlightIdManagedResourcesSQL != nil {
		input.XFlightId = tempFlightIdManagedResourcesSQL
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	ok, err := aaa.Client.ManagedResourcesSQL.GetSQLDatabaseV2Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok, nil
}

func (aaa *ManagedResourcesSQLService) CreateSQLDatabaseV2Short(input *managed_resources_sql.CreateSQLDatabaseV2Params) (*managed_resources_sql.CreateSQLDatabaseV2Response, error) {
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
	if tempFlightIdManagedResourcesSQL != nil {
		input.XFlightId = tempFlightIdManagedResourcesSQL
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	ok, err := aaa.Client.ManagedResourcesSQL.CreateSQLDatabaseV2Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok, nil
}

func (aaa *ManagedResourcesSQLService) DeleteSQLDatabaseV2Short(input *managed_resources_sql.DeleteSQLDatabaseV2Params) (*managed_resources_sql.DeleteSQLDatabaseV2Response, error) {
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
	if tempFlightIdManagedResourcesSQL != nil {
		input.XFlightId = tempFlightIdManagedResourcesSQL
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	ok, err := aaa.Client.ManagedResourcesSQL.DeleteSQLDatabaseV2Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok, nil
}

func (aaa *ManagedResourcesSQLService) GetSQLClusterV2Short(input *managed_resources_sql.GetSQLClusterV2Params) (*managed_resources_sql.GetSQLClusterV2Response, error) {
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
	if tempFlightIdManagedResourcesSQL != nil {
		input.XFlightId = tempFlightIdManagedResourcesSQL
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	ok, err := aaa.Client.ManagedResourcesSQL.GetSQLClusterV2Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok, nil
}

func (aaa *ManagedResourcesSQLService) UpdateSQLClusterV2Short(input *managed_resources_sql.UpdateSQLClusterV2Params) (*managed_resources_sql.UpdateSQLClusterV2Response, error) {
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
	if tempFlightIdManagedResourcesSQL != nil {
		input.XFlightId = tempFlightIdManagedResourcesSQL
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	ok, err := aaa.Client.ManagedResourcesSQL.UpdateSQLClusterV2Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok, nil
}

func (aaa *ManagedResourcesSQLService) CreateSQLClusterV2Short(input *managed_resources_sql.CreateSQLClusterV2Params) (*managed_resources_sql.CreateSQLClusterV2Response, error) {
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
	if tempFlightIdManagedResourcesSQL != nil {
		input.XFlightId = tempFlightIdManagedResourcesSQL
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	ok, err := aaa.Client.ManagedResourcesSQL.CreateSQLClusterV2Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok, nil
}

func (aaa *ManagedResourcesSQLService) DeleteSQLClusterV2Short(input *managed_resources_sql.DeleteSQLClusterV2Params) (*managed_resources_sql.DeleteSQLClusterV2Response, error) {
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
	if tempFlightIdManagedResourcesSQL != nil {
		input.XFlightId = tempFlightIdManagedResourcesSQL
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	ok, err := aaa.Client.ManagedResourcesSQL.DeleteSQLClusterV2Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok, nil
}

func (aaa *ManagedResourcesSQLService) StartSQLClusterV2Short(input *managed_resources_sql.StartSQLClusterV2Params) error {
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
	if tempFlightIdManagedResourcesSQL != nil {
		input.XFlightId = tempFlightIdManagedResourcesSQL
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	_, err := aaa.Client.ManagedResourcesSQL.StartSQLClusterV2Short(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (aaa *ManagedResourcesSQLService) StopSQLClusterV2Short(input *managed_resources_sql.StopSQLClusterV2Params) error {
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
	if tempFlightIdManagedResourcesSQL != nil {
		input.XFlightId = tempFlightIdManagedResourcesSQL
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	_, err := aaa.Client.ManagedResourcesSQL.StopSQLClusterV2Short(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (aaa *ManagedResourcesSQLService) GetSQLAppListV2Short(input *managed_resources_sql.GetSQLAppListV2Params) (*managed_resources_sql.GetSQLAppListV2Response, error) {
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
	if tempFlightIdManagedResourcesSQL != nil {
		input.XFlightId = tempFlightIdManagedResourcesSQL
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	ok, err := aaa.Client.ManagedResourcesSQL.GetSQLAppListV2Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok, nil
}
