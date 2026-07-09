// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package ugc

import (
	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/repository"
	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/utils"
	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/utils/auth"
	"github.com/AccelByte/accelbyte-go-modular-sdk/ugc-sdk/pkg/ugcclient"
	"github.com/AccelByte/accelbyte-go-modular-sdk/ugc-sdk/pkg/ugcclient/admin_channel"
)

// AdminChannelService this is use for compatibility with latest modular sdk only
// Deprecated: 2023-03-30 - please use AdminChannelService imported from "github.com/AccelByte/accelbyte-go-modular-sdk/ugc-sdk/pkg"
type AdminChannelService struct {
	Client  *ugcclient.JusticeUgcService
	Session repository.Session
}

var tempFlightIdAdminChannel *string

func (aaa *AdminChannelService) UpdateFlightId(flightId string) {
	tempFlightIdAdminChannel = &flightId
}

func (aaa *AdminChannelService) GetAuthSession() auth.Session {
	return auth.Session{
		Token:   aaa.Session.TokenRepository,
		Config:  aaa.Session.ConfigRepository,
		Refresh: nil,
	}
}

func (aaa *AdminChannelService) SingleAdminGetChannelShort(input *admin_channel.SingleAdminGetChannelParams) (*admin_channel.SingleAdminGetChannelResponse, error) {
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
	if tempFlightIdAdminChannel != nil {
		input.XFlightId = tempFlightIdAdminChannel
	} else if aaa.Session.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.Session.FlightIdRepository.Value)
	}

	ok, err := aaa.Client.AdminChannel.SingleAdminGetChannelShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok, nil
}

func (aaa *AdminChannelService) AdminCreateChannelShort(input *admin_channel.AdminCreateChannelParams) (*admin_channel.AdminCreateChannelResponse, error) {
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
	if tempFlightIdAdminChannel != nil {
		input.XFlightId = tempFlightIdAdminChannel
	} else if aaa.Session.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.Session.FlightIdRepository.Value)
	}

	created, err := aaa.Client.AdminChannel.AdminCreateChannelShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return created, nil
}

func (aaa *AdminChannelService) SingleAdminUpdateChannelShort(input *admin_channel.SingleAdminUpdateChannelParams) (*admin_channel.SingleAdminUpdateChannelResponse, error) {
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
	if tempFlightIdAdminChannel != nil {
		input.XFlightId = tempFlightIdAdminChannel
	} else if aaa.Session.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.Session.FlightIdRepository.Value)
	}

	ok, err := aaa.Client.AdminChannel.SingleAdminUpdateChannelShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok, nil
}

func (aaa *AdminChannelService) SingleAdminDeleteChannelShort(input *admin_channel.SingleAdminDeleteChannelParams) error {
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
	if tempFlightIdAdminChannel != nil {
		input.XFlightId = tempFlightIdAdminChannel
	} else if aaa.Session.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.Session.FlightIdRepository.Value)
	}

	_, err := aaa.Client.AdminChannel.SingleAdminDeleteChannelShort(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (aaa *AdminChannelService) AdminGetChannelShort(input *admin_channel.AdminGetChannelParams) (*admin_channel.AdminGetChannelResponse, error) {
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
	if tempFlightIdAdminChannel != nil {
		input.XFlightId = tempFlightIdAdminChannel
	} else if aaa.Session.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.Session.FlightIdRepository.Value)
	}

	ok, err := aaa.Client.AdminChannel.AdminGetChannelShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok, nil
}

func (aaa *AdminChannelService) AdminUpdateChannelShort(input *admin_channel.AdminUpdateChannelParams) (*admin_channel.AdminUpdateChannelResponse, error) {
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
	if tempFlightIdAdminChannel != nil {
		input.XFlightId = tempFlightIdAdminChannel
	} else if aaa.Session.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.Session.FlightIdRepository.Value)
	}

	ok, err := aaa.Client.AdminChannel.AdminUpdateChannelShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok, nil
}

func (aaa *AdminChannelService) AdminDeleteChannelShort(input *admin_channel.AdminDeleteChannelParams) error {
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
	if tempFlightIdAdminChannel != nil {
		input.XFlightId = tempFlightIdAdminChannel
	} else if aaa.Session.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.Session.FlightIdRepository.Value)
	}

	_, err := aaa.Client.AdminChannel.AdminDeleteChannelShort(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}
