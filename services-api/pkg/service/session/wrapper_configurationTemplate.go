// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package session

import (
	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/repository"
	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/utils"
	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/utils/auth"
	"github.com/AccelByte/accelbyte-go-modular-sdk/session-sdk/pkg/sessionclient"
	"github.com/AccelByte/accelbyte-go-modular-sdk/session-sdk/pkg/sessionclient/configuration_template"
	"github.com/AccelByte/accelbyte-go-modular-sdk/session-sdk/pkg/sessionclientmodels"
)

// ConfigurationTemplateService this is use for compatibility with latest modular sdk only
// Deprecated: 2023-03-30 - please use ConfigurationTemplateService imported from "github.com/AccelByte/accelbyte-go-modular-sdk/session-sdk/pkg"
type ConfigurationTemplateService struct {
	Client           *sessionclient.JusticeSessionService
	ConfigRepository repository.ConfigRepository
	TokenRepository  repository.TokenRepository

	FlightIdRepository *utils.FlightIdContainer
}

var tempFlightIdConfigurationTemplate *string

func (aaa *ConfigurationTemplateService) UpdateFlightId(flightId string) {
	tempFlightIdConfigurationTemplate = &flightId
}

func (aaa *ConfigurationTemplateService) GetAuthSession() auth.Session {
	return auth.Session{
		aaa.TokenRepository,
		aaa.ConfigRepository,
		nil,
	}
}

func (aaa *ConfigurationTemplateService) AdminGetConfigurationAlertV1Short(input *configuration_template.AdminGetConfigurationAlertV1Params) (*sessionclientmodels.ApimodelsConfigAlertResponse, error) {
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
	if tempFlightIdConfigurationTemplate != nil {
		input.XFlightId = tempFlightIdConfigurationTemplate
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	ok, err := aaa.Client.ConfigurationTemplate.AdminGetConfigurationAlertV1Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *ConfigurationTemplateService) AdminUpdateConfigurationAlertV1Short(input *configuration_template.AdminUpdateConfigurationAlertV1Params) (*sessionclientmodels.ApimodelsConfigAlertResponse, error) {
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
	if tempFlightIdConfigurationTemplate != nil {
		input.XFlightId = tempFlightIdConfigurationTemplate
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	ok, err := aaa.Client.ConfigurationTemplate.AdminUpdateConfigurationAlertV1Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *ConfigurationTemplateService) AdminCreateConfigurationAlertV1Short(input *configuration_template.AdminCreateConfigurationAlertV1Params) (*sessionclientmodels.ApimodelsConfigAlertResponse, error) {
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
	if tempFlightIdConfigurationTemplate != nil {
		input.XFlightId = tempFlightIdConfigurationTemplate
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	created, err := aaa.Client.ConfigurationTemplate.AdminCreateConfigurationAlertV1Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return created.GetPayload(), nil
}

func (aaa *ConfigurationTemplateService) AdminDeleteConfigurationAlertV1Short(input *configuration_template.AdminDeleteConfigurationAlertV1Params) error {
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
	if tempFlightIdConfigurationTemplate != nil {
		input.XFlightId = tempFlightIdConfigurationTemplate
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	_, err := aaa.Client.ConfigurationTemplate.AdminDeleteConfigurationAlertV1Short(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (aaa *ConfigurationTemplateService) AdminCreateConfigurationTemplateV1Short(input *configuration_template.AdminCreateConfigurationTemplateV1Params) (*sessionclientmodels.ApimodelsConfigurationTemplateResponse, error) {
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
	if tempFlightIdConfigurationTemplate != nil {
		input.XFlightId = tempFlightIdConfigurationTemplate
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	created, err := aaa.Client.ConfigurationTemplate.AdminCreateConfigurationTemplateV1Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return created.GetPayload(), nil
}

func (aaa *ConfigurationTemplateService) AdminGetAllConfigurationTemplatesV1Short(input *configuration_template.AdminGetAllConfigurationTemplatesV1Params) (*sessionclientmodels.ApimodelsConfigurationTemplatesResponse, error) {
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
	if tempFlightIdConfigurationTemplate != nil {
		input.XFlightId = tempFlightIdConfigurationTemplate
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	ok, err := aaa.Client.ConfigurationTemplate.AdminGetAllConfigurationTemplatesV1Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *ConfigurationTemplateService) AdminGetConfigurationTemplateV1Short(input *configuration_template.AdminGetConfigurationTemplateV1Params) (*sessionclientmodels.ApimodelsConfigurationTemplateResponse, error) {
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
	if tempFlightIdConfigurationTemplate != nil {
		input.XFlightId = tempFlightIdConfigurationTemplate
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	ok, err := aaa.Client.ConfigurationTemplate.AdminGetConfigurationTemplateV1Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *ConfigurationTemplateService) AdminUpdateConfigurationTemplateV1Short(input *configuration_template.AdminUpdateConfigurationTemplateV1Params) (*sessionclientmodels.ApimodelsConfigurationTemplateResponse, error) {
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
	if tempFlightIdConfigurationTemplate != nil {
		input.XFlightId = tempFlightIdConfigurationTemplate
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	ok, err := aaa.Client.ConfigurationTemplate.AdminUpdateConfigurationTemplateV1Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *ConfigurationTemplateService) AdminDeleteConfigurationTemplateV1Short(input *configuration_template.AdminDeleteConfigurationTemplateV1Params) error {
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
	if tempFlightIdConfigurationTemplate != nil {
		input.XFlightId = tempFlightIdConfigurationTemplate
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	_, err := aaa.Client.ConfigurationTemplate.AdminDeleteConfigurationTemplateV1Short(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (aaa *ConfigurationTemplateService) AdminGetDSMCConfigurationShort(input *configuration_template.AdminGetDSMCConfigurationParams) (*sessionclientmodels.ModelsDSMConfigRecord, error) {
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
	if tempFlightIdConfigurationTemplate != nil {
		input.XFlightId = tempFlightIdConfigurationTemplate
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	ok, err := aaa.Client.ConfigurationTemplate.AdminGetDSMCConfigurationShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *ConfigurationTemplateService) AdminSyncDSMCConfigurationShort(input *configuration_template.AdminSyncDSMCConfigurationParams) (*sessionclientmodels.ModelsDSMConfigRecord, error) {
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
	if tempFlightIdConfigurationTemplate != nil {
		input.XFlightId = tempFlightIdConfigurationTemplate
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	ok, err := aaa.Client.ConfigurationTemplate.AdminSyncDSMCConfigurationShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}
