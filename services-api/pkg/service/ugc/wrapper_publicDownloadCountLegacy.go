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
	"github.com/AccelByte/accelbyte-go-modular-sdk/ugc-sdk/pkg/ugcclient/public_download_count_legacy"
	"github.com/AccelByte/accelbyte-go-modular-sdk/ugc-sdk/pkg/ugcclientmodels"
)

// PublicDownloadCountLegacyService this is use for compatibility with latest modular sdk only
// Deprecated: 2023-03-30 - please use PublicDownloadCountLegacyService imported from "github.com/AccelByte/accelbyte-go-modular-sdk/ugc-sdk/pkg"
type PublicDownloadCountLegacyService struct {
	Client           *ugcclient.JusticeUgcService
	ConfigRepository repository.ConfigRepository
	TokenRepository  repository.TokenRepository

	FlightIdRepository *utils.FlightIdContainer
}

var tempFlightIdPublicDownloadCountLegacy *string

func (aaa *PublicDownloadCountLegacyService) UpdateFlightId(flightId string) {
	tempFlightIdPublicDownloadCountLegacy = &flightId
}

func (aaa *PublicDownloadCountLegacyService) GetAuthSession() auth.Session {
	return auth.Session{
		aaa.TokenRepository,
		aaa.ConfigRepository,
		nil,
	}
}

func (aaa *PublicDownloadCountLegacyService) AddDownloadCountShort(input *public_download_count_legacy.AddDownloadCountParams) (*ugcclientmodels.ModelsAddDownloadCountResponse, error) {
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
	if tempFlightIdPublicDownloadCountLegacy != nil {
		input.XFlightId = tempFlightIdPublicDownloadCountLegacy
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	ok, err := aaa.Client.PublicDownloadCountLegacy.AddDownloadCountShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}
