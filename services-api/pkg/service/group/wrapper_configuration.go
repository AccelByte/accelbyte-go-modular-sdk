// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package group

import (
	"github.com/AccelByte/accelbyte-go-modular-sdk/group-sdk/pkg/groupclient"
	"github.com/AccelByte/accelbyte-go-modular-sdk/group-sdk/pkg/groupclient/configuration"
	"github.com/AccelByte/accelbyte-go-modular-sdk/group-sdk/pkg/groupclientmodels"
	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/repository"
	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/utils"
	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/utils/auth"
	"github.com/go-openapi/runtime/client"
)

// ConfigurationService this is use for compatibility with latest modular sdk only
// Deprecated: 2023-03-30 - please use ConfigurationService imported from "github.com/AccelByte/accelbyte-go-modular-sdk/group-sdk/pkg"
type ConfigurationService struct {
	Client           *groupclient.JusticeGroupService
	ConfigRepository repository.ConfigRepository
	TokenRepository  repository.TokenRepository

	FlightIdRepository *utils.FlightIdContainer
}

var tempFlightIdConfiguration *string

func (aaa *ConfigurationService) UpdateFlightId(flightId string) {
	tempFlightIdConfiguration = &flightId
}

func (aaa *ConfigurationService) GetAuthSession() auth.Session {
	return auth.Session{
		aaa.TokenRepository,
		aaa.ConfigRepository,
		nil,
	}
}

// Deprecated: 2022-01-10 - Please use ListGroupConfigurationAdminV1Short instead.
func (aaa *ConfigurationService) ListGroupConfigurationAdminV1(input *configuration.ListGroupConfigurationAdminV1Params) (*groupclientmodels.ModelsListConfigurationResponseV1, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, internalServerError, err := aaa.Client.Configuration.ListGroupConfigurationAdminV1(input, client.BearerToken(*token.AccessToken))
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

// Deprecated: 2022-01-10 - Please use CreateGroupConfigurationAdminV1Short instead.
func (aaa *ConfigurationService) CreateGroupConfigurationAdminV1(input *configuration.CreateGroupConfigurationAdminV1Params) (*groupclientmodels.ModelsCreateGroupConfigurationResponseV1, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	created, badRequest, unauthorized, forbidden, conflict, internalServerError, err := aaa.Client.Configuration.CreateGroupConfigurationAdminV1(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return nil, badRequest
	}
	if unauthorized != nil {
		return nil, unauthorized
	}
	if forbidden != nil {
		return nil, forbidden
	}
	if conflict != nil {
		return nil, conflict
	}
	if internalServerError != nil {
		return nil, internalServerError
	}
	if err != nil {
		return nil, err
	}

	return created.GetPayload(), nil
}

// Deprecated: 2022-01-10 - Please use InitiateGroupConfigurationAdminV1Short instead.
func (aaa *ConfigurationService) InitiateGroupConfigurationAdminV1(input *configuration.InitiateGroupConfigurationAdminV1Params) (*groupclientmodels.ModelsCreateGroupConfigurationResponseV1, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	created, unauthorized, forbidden, conflict, internalServerError, err := aaa.Client.Configuration.InitiateGroupConfigurationAdminV1(input, client.BearerToken(*token.AccessToken))
	if unauthorized != nil {
		return nil, unauthorized
	}
	if forbidden != nil {
		return nil, forbidden
	}
	if conflict != nil {
		return nil, conflict
	}
	if internalServerError != nil {
		return nil, internalServerError
	}
	if err != nil {
		return nil, err
	}

	return created.GetPayload(), nil
}

// Deprecated: 2022-01-10 - Please use GetGroupConfigurationAdminV1Short instead.
func (aaa *ConfigurationService) GetGroupConfigurationAdminV1(input *configuration.GetGroupConfigurationAdminV1Params) (*groupclientmodels.ModelsGetGroupConfigurationResponseV1, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, internalServerError, err := aaa.Client.Configuration.GetGroupConfigurationAdminV1(input, client.BearerToken(*token.AccessToken))
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

// Deprecated: 2022-01-10 - Please use DeleteGroupConfigurationV1Short instead.
func (aaa *ConfigurationService) DeleteGroupConfigurationV1(input *configuration.DeleteGroupConfigurationV1Params) error {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, forbidden, notFound, internalServerError, err := aaa.Client.Configuration.DeleteGroupConfigurationV1(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return badRequest
	}
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

// Deprecated: 2022-01-10 - Please use UpdateGroupConfigurationAdminV1Short instead.
func (aaa *ConfigurationService) UpdateGroupConfigurationAdminV1(input *configuration.UpdateGroupConfigurationAdminV1Params) (*groupclientmodels.ModelsUpdateGroupConfigurationResponseV1, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, internalServerError, err := aaa.Client.Configuration.UpdateGroupConfigurationAdminV1(input, client.BearerToken(*token.AccessToken))
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

// Deprecated: 2022-01-10 - Please use UpdateGroupConfigurationGlobalRuleAdminV1Short instead.
func (aaa *ConfigurationService) UpdateGroupConfigurationGlobalRuleAdminV1(input *configuration.UpdateGroupConfigurationGlobalRuleAdminV1Params) (*groupclientmodels.ModelsUpdateGroupConfigurationResponseV1, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, internalServerError, err := aaa.Client.Configuration.UpdateGroupConfigurationGlobalRuleAdminV1(input, client.BearerToken(*token.AccessToken))
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

// Deprecated: 2022-01-10 - Please use DeleteGroupConfigurationGlobalRuleAdminV1Short instead.
func (aaa *ConfigurationService) DeleteGroupConfigurationGlobalRuleAdminV1(input *configuration.DeleteGroupConfigurationGlobalRuleAdminV1Params) (*groupclientmodels.ModelsUpdateGroupConfigurationResponseV1, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, internalServerError, err := aaa.Client.Configuration.DeleteGroupConfigurationGlobalRuleAdminV1(input, client.BearerToken(*token.AccessToken))
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

func (aaa *ConfigurationService) ListGroupConfigurationAdminV1Short(input *configuration.ListGroupConfigurationAdminV1Params) (*groupclientmodels.ModelsListConfigurationResponseV1, error) {
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
	if tempFlightIdConfiguration != nil {
		input.XFlightId = tempFlightIdConfiguration
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	ok, err := aaa.Client.Configuration.ListGroupConfigurationAdminV1Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *ConfigurationService) CreateGroupConfigurationAdminV1Short(input *configuration.CreateGroupConfigurationAdminV1Params) (*groupclientmodels.ModelsCreateGroupConfigurationResponseV1, error) {
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
	if tempFlightIdConfiguration != nil {
		input.XFlightId = tempFlightIdConfiguration
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	created, err := aaa.Client.Configuration.CreateGroupConfigurationAdminV1Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return created.GetPayload(), nil
}

func (aaa *ConfigurationService) InitiateGroupConfigurationAdminV1Short(input *configuration.InitiateGroupConfigurationAdminV1Params) (*groupclientmodels.ModelsCreateGroupConfigurationResponseV1, error) {
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
	if tempFlightIdConfiguration != nil {
		input.XFlightId = tempFlightIdConfiguration
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	created, err := aaa.Client.Configuration.InitiateGroupConfigurationAdminV1Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return created.GetPayload(), nil
}

func (aaa *ConfigurationService) GetGroupConfigurationAdminV1Short(input *configuration.GetGroupConfigurationAdminV1Params) (*groupclientmodels.ModelsGetGroupConfigurationResponseV1, error) {
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
	if tempFlightIdConfiguration != nil {
		input.XFlightId = tempFlightIdConfiguration
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	ok, err := aaa.Client.Configuration.GetGroupConfigurationAdminV1Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *ConfigurationService) DeleteGroupConfigurationV1Short(input *configuration.DeleteGroupConfigurationV1Params) error {
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
	if tempFlightIdConfiguration != nil {
		input.XFlightId = tempFlightIdConfiguration
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	_, err := aaa.Client.Configuration.DeleteGroupConfigurationV1Short(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (aaa *ConfigurationService) UpdateGroupConfigurationAdminV1Short(input *configuration.UpdateGroupConfigurationAdminV1Params) (*groupclientmodels.ModelsUpdateGroupConfigurationResponseV1, error) {
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
	if tempFlightIdConfiguration != nil {
		input.XFlightId = tempFlightIdConfiguration
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	ok, err := aaa.Client.Configuration.UpdateGroupConfigurationAdminV1Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *ConfigurationService) UpdateGroupConfigurationGlobalRuleAdminV1Short(input *configuration.UpdateGroupConfigurationGlobalRuleAdminV1Params) (*groupclientmodels.ModelsUpdateGroupConfigurationResponseV1, error) {
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
	if tempFlightIdConfiguration != nil {
		input.XFlightId = tempFlightIdConfiguration
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	ok, err := aaa.Client.Configuration.UpdateGroupConfigurationGlobalRuleAdminV1Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *ConfigurationService) DeleteGroupConfigurationGlobalRuleAdminV1Short(input *configuration.DeleteGroupConfigurationGlobalRuleAdminV1Params) (*groupclientmodels.ModelsUpdateGroupConfigurationResponseV1, error) {
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
	if tempFlightIdConfiguration != nil {
		input.XFlightId = tempFlightIdConfiguration
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	ok, err := aaa.Client.Configuration.DeleteGroupConfigurationGlobalRuleAdminV1Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}
