// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package platform

import (
	"github.com/AccelByte/accelbyte-go-modular-sdk/platform-sdk/pkg/platformclient"
	"github.com/AccelByte/accelbyte-go-modular-sdk/platform-sdk/pkg/platformclient/dlc"
	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/repository"
	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/utils"
	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/utils/auth"
)

type DLCService struct {
	Client           *platformclient.JusticePlatformService
	ConfigRepository repository.ConfigRepository
	TokenRepository  repository.TokenRepository

	FlightIdRepository *utils.FlightIdContainer
}

var tempFlightIdDLC *string

func (aaa *DLCService) UpdateFlightId(flightId string) {
	tempFlightIdDLC = &flightId
}

func (aaa *DLCService) GetAuthSession() auth.Session {
	return auth.Session{
		aaa.TokenRepository,
		aaa.ConfigRepository,
		nil,
	}
}

func (aaa *DLCService) GetDLCItemConfigHistoryShort(input *dlc.GetDLCItemConfigHistoryParams) (*dlc.GetDLCItemConfigHistoryResponse, error) {
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
	if tempFlightIdDLC != nil {
		input.XFlightId = tempFlightIdDLC
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	ok, err := aaa.Client.DLC.GetDLCItemConfigHistoryShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok, nil
}

func (aaa *DLCService) RestoreDLCItemConfigHistoryShort(input *dlc.RestoreDLCItemConfigHistoryParams) error {
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
	if tempFlightIdDLC != nil {
		input.XFlightId = tempFlightIdDLC
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	_, err := aaa.Client.DLC.RestoreDLCItemConfigHistoryShort(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (aaa *DLCService) GetDLCItemConfigShort(input *dlc.GetDLCItemConfigParams) (*dlc.GetDLCItemConfigResponse, error) {
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
	if tempFlightIdDLC != nil {
		input.XFlightId = tempFlightIdDLC
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	ok, err := aaa.Client.DLC.GetDLCItemConfigShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok, nil
}

func (aaa *DLCService) UpdateDLCItemConfigShort(input *dlc.UpdateDLCItemConfigParams) (*dlc.UpdateDLCItemConfigResponse, error) {
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
	if tempFlightIdDLC != nil {
		input.XFlightId = tempFlightIdDLC
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	ok, err := aaa.Client.DLC.UpdateDLCItemConfigShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok, nil
}

func (aaa *DLCService) DeleteDLCItemConfigShort(input *dlc.DeleteDLCItemConfigParams) error {
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
	if tempFlightIdDLC != nil {
		input.XFlightId = tempFlightIdDLC
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	_, err := aaa.Client.DLC.DeleteDLCItemConfigShort(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (aaa *DLCService) GetPlatformDLCConfigShort(input *dlc.GetPlatformDLCConfigParams) (*dlc.GetPlatformDLCConfigResponse, error) {
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
	if tempFlightIdDLC != nil {
		input.XFlightId = tempFlightIdDLC
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	ok, err := aaa.Client.DLC.GetPlatformDLCConfigShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok, nil
}

func (aaa *DLCService) UpdatePlatformDLCConfigShort(input *dlc.UpdatePlatformDLCConfigParams) (*dlc.UpdatePlatformDLCConfigResponse, error) {
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
	if tempFlightIdDLC != nil {
		input.XFlightId = tempFlightIdDLC
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	ok, err := aaa.Client.DLC.UpdatePlatformDLCConfigShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok, nil
}

func (aaa *DLCService) DeletePlatformDLCConfigShort(input *dlc.DeletePlatformDLCConfigParams) error {
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
	if tempFlightIdDLC != nil {
		input.XFlightId = tempFlightIdDLC
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	_, err := aaa.Client.DLC.DeletePlatformDLCConfigShort(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (aaa *DLCService) GetUserDLCByPlatformShort(input *dlc.GetUserDLCByPlatformParams) (*dlc.GetUserDLCByPlatformResponse, error) {
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
	if tempFlightIdDLC != nil {
		input.XFlightId = tempFlightIdDLC
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	ok, err := aaa.Client.DLC.GetUserDLCByPlatformShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok, nil
}

func (aaa *DLCService) GetUserDLCShort(input *dlc.GetUserDLCParams) (*dlc.GetUserDLCResponse, error) {
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
	if tempFlightIdDLC != nil {
		input.XFlightId = tempFlightIdDLC
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	ok, err := aaa.Client.DLC.GetUserDLCShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok, nil
}

func (aaa *DLCService) GeDLCDurableRewardShortMapShort(input *dlc.GeDLCDurableRewardShortMapParams) (*dlc.GeDLCDurableRewardShortMapResponse, error) {
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
	if tempFlightIdDLC != nil {
		input.XFlightId = tempFlightIdDLC
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	ok, err := aaa.Client.DLC.GeDLCDurableRewardShortMapShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok, nil
}

func (aaa *DLCService) SyncEpicGameDLCShort(input *dlc.SyncEpicGameDLCParams) error {
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
	if tempFlightIdDLC != nil {
		input.XFlightId = tempFlightIdDLC
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	_, err := aaa.Client.DLC.SyncEpicGameDLCShort(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (aaa *DLCService) SyncOculusDLCShort(input *dlc.SyncOculusDLCParams) error {
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
	if tempFlightIdDLC != nil {
		input.XFlightId = tempFlightIdDLC
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	_, err := aaa.Client.DLC.SyncOculusDLCShort(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (aaa *DLCService) PublicSyncPsnDLCInventoryShort(input *dlc.PublicSyncPsnDLCInventoryParams) error {
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
	if tempFlightIdDLC != nil {
		input.XFlightId = tempFlightIdDLC
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	_, err := aaa.Client.DLC.PublicSyncPsnDLCInventoryShort(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (aaa *DLCService) PublicSyncPsnDLCInventoryWithMultipleServiceLabelsShort(input *dlc.PublicSyncPsnDLCInventoryWithMultipleServiceLabelsParams) error {
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
	if tempFlightIdDLC != nil {
		input.XFlightId = tempFlightIdDLC
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	_, err := aaa.Client.DLC.PublicSyncPsnDLCInventoryWithMultipleServiceLabelsShort(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (aaa *DLCService) SyncSteamDLCShort(input *dlc.SyncSteamDLCParams) error {
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
	if tempFlightIdDLC != nil {
		input.XFlightId = tempFlightIdDLC
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	_, err := aaa.Client.DLC.SyncSteamDLCShort(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (aaa *DLCService) SyncXboxDLCShort(input *dlc.SyncXboxDLCParams) error {
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
	if tempFlightIdDLC != nil {
		input.XFlightId = tempFlightIdDLC
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	_, err := aaa.Client.DLC.SyncXboxDLCShort(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (aaa *DLCService) PublicGetMyDLCContentShort(input *dlc.PublicGetMyDLCContentParams) (*dlc.PublicGetMyDLCContentResponse, error) {
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
	if tempFlightIdDLC != nil {
		input.XFlightId = tempFlightIdDLC
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	ok, err := aaa.Client.DLC.PublicGetMyDLCContentShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok, nil
}
