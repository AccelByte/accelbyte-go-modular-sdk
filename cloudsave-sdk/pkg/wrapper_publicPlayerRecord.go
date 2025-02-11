// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package cloudsave

import (
	"github.com/AccelByte/accelbyte-go-modular-sdk/cloudsave-sdk/pkg/cloudsaveclient"
	"github.com/AccelByte/accelbyte-go-modular-sdk/cloudsave-sdk/pkg/cloudsaveclient/public_player_record"
	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/repository"
	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/utils"
	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/utils/auth"
)

type PublicPlayerRecordService struct {
	Client           *cloudsaveclient.JusticeCloudsaveService
	ConfigRepository repository.ConfigRepository
	TokenRepository  repository.TokenRepository

	FlightIdRepository *utils.FlightIdContainer
}

var tempFlightIdPublicPlayerRecord *string

func (aaa *PublicPlayerRecordService) UpdateFlightId(flightId string) {
	tempFlightIdPublicPlayerRecord = &flightId
}

func (aaa *PublicPlayerRecordService) GetAuthSession() auth.Session {
	return auth.Session{
		aaa.TokenRepository,
		aaa.ConfigRepository,
		nil,
	}
}

func (aaa *PublicPlayerRecordService) BulkGetPlayerPublicRecordHandlerV1Short(input *public_player_record.BulkGetPlayerPublicRecordHandlerV1Params) (*public_player_record.BulkGetPlayerPublicRecordHandlerV1Response, error) {
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
	if tempFlightIdPublicPlayerRecord != nil {
		input.XFlightId = tempFlightIdPublicPlayerRecord
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	ok, err := aaa.Client.PublicPlayerRecord.BulkGetPlayerPublicRecordHandlerV1Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok, nil
}

func (aaa *PublicPlayerRecordService) RetrievePlayerRecordsShort(input *public_player_record.RetrievePlayerRecordsParams) (*public_player_record.RetrievePlayerRecordsResponse, error) {
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
	if tempFlightIdPublicPlayerRecord != nil {
		input.XFlightId = tempFlightIdPublicPlayerRecord
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	ok, err := aaa.Client.PublicPlayerRecord.RetrievePlayerRecordsShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok, nil
}

func (aaa *PublicPlayerRecordService) GetPlayerRecordsBulkHandlerV1Short(input *public_player_record.GetPlayerRecordsBulkHandlerV1Params) (*public_player_record.GetPlayerRecordsBulkHandlerV1Response, error) {
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
	if tempFlightIdPublicPlayerRecord != nil {
		input.XFlightId = tempFlightIdPublicPlayerRecord
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	ok, err := aaa.Client.PublicPlayerRecord.GetPlayerRecordsBulkHandlerV1Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok, nil
}

func (aaa *PublicPlayerRecordService) PublicDeletePlayerPublicRecordHandlerV1Short(input *public_player_record.PublicDeletePlayerPublicRecordHandlerV1Params) error {
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
	if tempFlightIdPublicPlayerRecord != nil {
		input.XFlightId = tempFlightIdPublicPlayerRecord
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	_, err := aaa.Client.PublicPlayerRecord.PublicDeletePlayerPublicRecordHandlerV1Short(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (aaa *PublicPlayerRecordService) GetOtherPlayerPublicRecordKeyHandlerV1Short(input *public_player_record.GetOtherPlayerPublicRecordKeyHandlerV1Params) (*public_player_record.GetOtherPlayerPublicRecordKeyHandlerV1Response, error) {
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
	if tempFlightIdPublicPlayerRecord != nil {
		input.XFlightId = tempFlightIdPublicPlayerRecord
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	ok, err := aaa.Client.PublicPlayerRecord.GetOtherPlayerPublicRecordKeyHandlerV1Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok, nil
}

func (aaa *PublicPlayerRecordService) GetOtherPlayerPublicRecordHandlerV1Short(input *public_player_record.GetOtherPlayerPublicRecordHandlerV1Params) (*public_player_record.GetOtherPlayerPublicRecordHandlerV1Response, error) {
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
	if tempFlightIdPublicPlayerRecord != nil {
		input.XFlightId = tempFlightIdPublicPlayerRecord
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	ok, err := aaa.Client.PublicPlayerRecord.GetOtherPlayerPublicRecordHandlerV1Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok, nil
}

func (aaa *PublicPlayerRecordService) GetPlayerRecordHandlerV1Short(input *public_player_record.GetPlayerRecordHandlerV1Params) (*public_player_record.GetPlayerRecordHandlerV1Response, error) {
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
	if tempFlightIdPublicPlayerRecord != nil {
		input.XFlightId = tempFlightIdPublicPlayerRecord
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	ok, err := aaa.Client.PublicPlayerRecord.GetPlayerRecordHandlerV1Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok, nil
}

func (aaa *PublicPlayerRecordService) PutPlayerRecordHandlerV1Short(input *public_player_record.PutPlayerRecordHandlerV1Params) (*public_player_record.PutPlayerRecordHandlerV1Response, error) {
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
	if tempFlightIdPublicPlayerRecord != nil {
		input.XFlightId = tempFlightIdPublicPlayerRecord
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	ok, err := aaa.Client.PublicPlayerRecord.PutPlayerRecordHandlerV1Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok, nil
}

func (aaa *PublicPlayerRecordService) PostPlayerRecordHandlerV1Short(input *public_player_record.PostPlayerRecordHandlerV1Params) (*public_player_record.PostPlayerRecordHandlerV1Response, error) {
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
	if tempFlightIdPublicPlayerRecord != nil {
		input.XFlightId = tempFlightIdPublicPlayerRecord
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	created, err := aaa.Client.PublicPlayerRecord.PostPlayerRecordHandlerV1Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return created, nil
}

func (aaa *PublicPlayerRecordService) DeletePlayerRecordHandlerV1Short(input *public_player_record.DeletePlayerRecordHandlerV1Params) error {
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
	if tempFlightIdPublicPlayerRecord != nil {
		input.XFlightId = tempFlightIdPublicPlayerRecord
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	_, err := aaa.Client.PublicPlayerRecord.DeletePlayerRecordHandlerV1Short(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (aaa *PublicPlayerRecordService) GetPlayerPublicRecordHandlerV1Short(input *public_player_record.GetPlayerPublicRecordHandlerV1Params) (*public_player_record.GetPlayerPublicRecordHandlerV1Response, error) {
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
	if tempFlightIdPublicPlayerRecord != nil {
		input.XFlightId = tempFlightIdPublicPlayerRecord
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	ok, err := aaa.Client.PublicPlayerRecord.GetPlayerPublicRecordHandlerV1Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok, nil
}

func (aaa *PublicPlayerRecordService) PutPlayerPublicRecordHandlerV1Short(input *public_player_record.PutPlayerPublicRecordHandlerV1Params) (*public_player_record.PutPlayerPublicRecordHandlerV1Response, error) {
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
	if tempFlightIdPublicPlayerRecord != nil {
		input.XFlightId = tempFlightIdPublicPlayerRecord
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	ok, err := aaa.Client.PublicPlayerRecord.PutPlayerPublicRecordHandlerV1Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok, nil
}

func (aaa *PublicPlayerRecordService) PostPlayerPublicRecordHandlerV1Short(input *public_player_record.PostPlayerPublicRecordHandlerV1Params) (*public_player_record.PostPlayerPublicRecordHandlerV1Response, error) {
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
	if tempFlightIdPublicPlayerRecord != nil {
		input.XFlightId = tempFlightIdPublicPlayerRecord
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	created, err := aaa.Client.PublicPlayerRecord.PostPlayerPublicRecordHandlerV1Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return created, nil
}
