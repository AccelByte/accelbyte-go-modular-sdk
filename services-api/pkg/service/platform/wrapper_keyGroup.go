// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package platform

import (
	"github.com/AccelByte/accelbyte-go-modular-sdk/platform-sdk/pkg/platformclient"
	"github.com/AccelByte/accelbyte-go-modular-sdk/platform-sdk/pkg/platformclient/key_group"
	"github.com/AccelByte/accelbyte-go-modular-sdk/platform-sdk/pkg/platformclientmodels"
	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/repository"
	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/utils"
	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/utils/auth"
)

// KeyGroupService this is use for compatibility with latest modular sdk only
// Deprecated: 2023-03-30 - please use KeyGroupService imported from "github.com/AccelByte/accelbyte-go-modular-sdk/platform-sdk/pkg"
type KeyGroupService struct {
	Client           *platformclient.JusticePlatformService
	ConfigRepository repository.ConfigRepository
	TokenRepository  repository.TokenRepository

	FlightIdRepository *utils.FlightIdContainer
}

var tempFlightIdKeyGroup *string

func (aaa *KeyGroupService) UpdateFlightId(flightId string) {
	tempFlightIdKeyGroup = &flightId
}

func (aaa *KeyGroupService) GetAuthSession() auth.Session {
	return auth.Session{
		aaa.TokenRepository,
		aaa.ConfigRepository,
		nil,
	}
}

func (aaa *KeyGroupService) QueryKeyGroupsShort(input *key_group.QueryKeyGroupsParams) (*platformclientmodels.KeyGroupPagingSlicedResult, error) {
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
	if tempFlightIdKeyGroup != nil {
		input.XFlightId = tempFlightIdKeyGroup
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	ok, err := aaa.Client.KeyGroup.QueryKeyGroupsShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *KeyGroupService) CreateKeyGroupShort(input *key_group.CreateKeyGroupParams) (*platformclientmodels.KeyGroupInfo, error) {
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
	if tempFlightIdKeyGroup != nil {
		input.XFlightId = tempFlightIdKeyGroup
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	created, err := aaa.Client.KeyGroup.CreateKeyGroupShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return created.GetPayload(), nil
}

func (aaa *KeyGroupService) GetKeyGroupByBoothNameShort(input *key_group.GetKeyGroupByBoothNameParams) (*platformclientmodels.KeyGroupInfo, error) {
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
	if tempFlightIdKeyGroup != nil {
		input.XFlightId = tempFlightIdKeyGroup
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	ok, err := aaa.Client.KeyGroup.GetKeyGroupByBoothNameShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *KeyGroupService) GetKeyGroupShort(input *key_group.GetKeyGroupParams) (*platformclientmodels.KeyGroupInfo, error) {
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
	if tempFlightIdKeyGroup != nil {
		input.XFlightId = tempFlightIdKeyGroup
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	ok, err := aaa.Client.KeyGroup.GetKeyGroupShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *KeyGroupService) UpdateKeyGroupShort(input *key_group.UpdateKeyGroupParams) (*platformclientmodels.KeyGroupInfo, error) {
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
	if tempFlightIdKeyGroup != nil {
		input.XFlightId = tempFlightIdKeyGroup
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	ok, err := aaa.Client.KeyGroup.UpdateKeyGroupShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *KeyGroupService) GetKeyGroupDynamicShort(input *key_group.GetKeyGroupDynamicParams) (*platformclientmodels.KeyGroupDynamicInfo, error) {
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
	if tempFlightIdKeyGroup != nil {
		input.XFlightId = tempFlightIdKeyGroup
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	ok, err := aaa.Client.KeyGroup.GetKeyGroupDynamicShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *KeyGroupService) ListKeysShort(input *key_group.ListKeysParams) (*platformclientmodels.KeyPagingSliceResult, error) {
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
	if tempFlightIdKeyGroup != nil {
		input.XFlightId = tempFlightIdKeyGroup
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	ok, err := aaa.Client.KeyGroup.ListKeysShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *KeyGroupService) UploadKeysShort(input *key_group.UploadKeysParams) (*platformclientmodels.BulkOperationResult, error) {
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
	if tempFlightIdKeyGroup != nil {
		input.XFlightId = tempFlightIdKeyGroup
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	ok, err := aaa.Client.KeyGroup.UploadKeysShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}
