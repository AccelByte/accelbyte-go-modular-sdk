// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package social

import (
	"io"

	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/repository"
	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/utils"
	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/utils/auth"
	"github.com/AccelByte/accelbyte-go-modular-sdk/social-sdk/pkg/socialclient"
	"github.com/AccelByte/accelbyte-go-modular-sdk/social-sdk/pkg/socialclient/slot"
	"github.com/AccelByte/accelbyte-go-modular-sdk/social-sdk/pkg/socialclientmodels"
	"github.com/go-openapi/runtime/client"
)

type SlotService struct {
	Client           *socialclient.JusticeSocialService
	ConfigRepository repository.ConfigRepository
	TokenRepository  repository.TokenRepository

	FlightIdRepository *utils.FlightIdContainer
}

var tempFlightIdSlot *string

func (aaa *SlotService) UpdateFlightId(flightId string) {
	tempFlightIdSlot = &flightId
}

func (aaa *SlotService) GetAuthSession() auth.Session {
	return auth.Session{
		aaa.TokenRepository,
		aaa.ConfigRepository,
		nil,
	}
}

// Deprecated: 2022-01-10 - Please use GetUserNamespaceSlotsShort instead.
func (aaa *SlotService) GetUserNamespaceSlots(input *slot.GetUserNamespaceSlotsParams) ([]*socialclientmodels.SlotInfo, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := aaa.Client.Slot.GetUserNamespaceSlots(input, client.BearerToken(*token.AccessToken))
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: 2022-01-10 - Please use GetSlotDataShort instead.
func (aaa *SlotService) GetSlotData(input *slot.GetSlotDataParams, writer io.Writer) (io.Writer, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, notFound, err := aaa.Client.Slot.GetSlotData(input, client.BearerToken(*token.AccessToken), writer)
	if notFound != nil {
		return nil, notFound
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: 2022-01-10 - Please use PublicGetUserNamespaceSlotsShort instead.
func (aaa *SlotService) PublicGetUserNamespaceSlots(input *slot.PublicGetUserNamespaceSlotsParams) ([]*socialclientmodels.SlotInfo, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := aaa.Client.Slot.PublicGetUserNamespaceSlots(input, client.BearerToken(*token.AccessToken))
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: 2022-01-10 - Please use PublicCreateUserNamespaceSlotShort instead.
func (aaa *SlotService) PublicCreateUserNamespaceSlot(input *slot.PublicCreateUserNamespaceSlotParams) error {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, conflict, err := aaa.Client.Slot.PublicCreateUserNamespaceSlot(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return badRequest
	}
	if conflict != nil {
		return conflict
	}
	if err != nil {
		return err
	}

	return nil
}

// Deprecated: 2022-01-10 - Please use PublicGetSlotDataShort instead.
func (aaa *SlotService) PublicGetSlotData(input *slot.PublicGetSlotDataParams, writer io.Writer) (io.Writer, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, notFound, err := aaa.Client.Slot.PublicGetSlotData(input, client.BearerToken(*token.AccessToken), writer)
	if notFound != nil {
		return nil, notFound
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: 2022-01-10 - Please use PublicUpdateUserNamespaceSlotShort instead.
func (aaa *SlotService) PublicUpdateUserNamespaceSlot(input *slot.PublicUpdateUserNamespaceSlotParams) (*socialclientmodels.SlotInfo, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, notFound, err := aaa.Client.Slot.PublicUpdateUserNamespaceSlot(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return nil, badRequest
	}
	if notFound != nil {
		return nil, notFound
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: 2022-01-10 - Please use PublicDeleteUserNamespaceSlotShort instead.
func (aaa *SlotService) PublicDeleteUserNamespaceSlot(input *slot.PublicDeleteUserNamespaceSlotParams) error {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, notFound, err := aaa.Client.Slot.PublicDeleteUserNamespaceSlot(input, client.BearerToken(*token.AccessToken))
	if notFound != nil {
		return notFound
	}
	if err != nil {
		return err
	}

	return nil
}

// Deprecated: 2022-01-10 - Please use PublicUpdateUserNamespaceSlotMetadataShort instead.
func (aaa *SlotService) PublicUpdateUserNamespaceSlotMetadata(input *slot.PublicUpdateUserNamespaceSlotMetadataParams) (*socialclientmodels.SlotInfo, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, notFound, err := aaa.Client.Slot.PublicUpdateUserNamespaceSlotMetadata(input, client.BearerToken(*token.AccessToken))
	if notFound != nil {
		return nil, notFound
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *SlotService) GetUserNamespaceSlotsShort(input *slot.GetUserNamespaceSlotsParams) ([]*socialclientmodels.SlotInfo, error) {
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
	if tempFlightIdSlot != nil {
		input.XFlightId = tempFlightIdSlot
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	ok, err := aaa.Client.Slot.GetUserNamespaceSlotsShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *SlotService) GetSlotDataShort(input *slot.GetSlotDataParams, writer io.Writer) (io.Writer, error) {
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
	if tempFlightIdSlot != nil {
		input.XFlightId = tempFlightIdSlot
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	ok, err := aaa.Client.Slot.GetSlotDataShort(input, authInfoWriter, writer)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *SlotService) PublicGetUserNamespaceSlotsShort(input *slot.PublicGetUserNamespaceSlotsParams) ([]*socialclientmodels.SlotInfo, error) {
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
	if tempFlightIdSlot != nil {
		input.XFlightId = tempFlightIdSlot
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	ok, err := aaa.Client.Slot.PublicGetUserNamespaceSlotsShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *SlotService) PublicCreateUserNamespaceSlotShort(input *slot.PublicCreateUserNamespaceSlotParams) error {
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
	if tempFlightIdSlot != nil {
		input.XFlightId = tempFlightIdSlot
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	_, err := aaa.Client.Slot.PublicCreateUserNamespaceSlotShort(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (aaa *SlotService) PublicGetSlotDataShort(input *slot.PublicGetSlotDataParams, writer io.Writer) (io.Writer, error) {
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
	if tempFlightIdSlot != nil {
		input.XFlightId = tempFlightIdSlot
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	ok, err := aaa.Client.Slot.PublicGetSlotDataShort(input, authInfoWriter, writer)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *SlotService) PublicUpdateUserNamespaceSlotShort(input *slot.PublicUpdateUserNamespaceSlotParams) (*socialclientmodels.SlotInfo, error) {
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
	if tempFlightIdSlot != nil {
		input.XFlightId = tempFlightIdSlot
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	ok, err := aaa.Client.Slot.PublicUpdateUserNamespaceSlotShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *SlotService) PublicDeleteUserNamespaceSlotShort(input *slot.PublicDeleteUserNamespaceSlotParams) error {
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
	if tempFlightIdSlot != nil {
		input.XFlightId = tempFlightIdSlot
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	_, err := aaa.Client.Slot.PublicDeleteUserNamespaceSlotShort(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (aaa *SlotService) PublicUpdateUserNamespaceSlotMetadataShort(input *slot.PublicUpdateUserNamespaceSlotMetadataParams) (*socialclientmodels.SlotInfo, error) {
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
	if tempFlightIdSlot != nil {
		input.XFlightId = tempFlightIdSlot
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	ok, err := aaa.Client.Slot.PublicUpdateUserNamespaceSlotMetadataShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}
