// Copyright (c) 2023 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package integration_test

import (
	"fmt"
	"strings"
	"testing"

	ams "github.com/AccelByte/accelbyte-go-modular-sdk/ams-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/ams-sdk/pkg/amsclient/a_m_s_info"
	"github.com/AccelByte/accelbyte-go-modular-sdk/ams-sdk/pkg/amsclient/account"
	"github.com/AccelByte/accelbyte-go-modular-sdk/ams-sdk/pkg/amsclient/fleets"
	"github.com/AccelByte/accelbyte-go-modular-sdk/ams-sdk/pkg/amsclient/images"
	"github.com/AccelByte/accelbyte-go-modular-sdk/ams-sdk/pkg/amsclientmodels"
	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/tests/integration"
	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/utils/auth"
	"github.com/stretchr/testify/assert"
)

var (
	imagesService = &ams.ImagesService{
		Client:          ams.NewAmsClient(auth.DefaultConfigRepositoryImpl()),
		TokenRepository: tokenRepository,
	}
	accountService = &ams.AccountService{
		Client:          ams.NewAmsClient(configRepo),
		TokenRepository: tokenRepository,
	}
	accountName  = "GoSDKAccountName"
	fleetService = &ams.FleetsService{
		Client:          ams.NewAmsClient(configRepo),
		TokenRepository: tokenRepository,
	}
	infoService = &ams.AMSInfoService{
		Client:          ams.NewAmsClient(configRepo),
		TokenRepository: tokenRepository,
	}
	fleetName       = "GoSDKFleet"
	fleetNameUpdate = "GoSDKFleetUpdate"
	bufferSize      = int32(10)
	regionConfig    = "us-test-1"
	claimKeys       = []string{"beta"}
	fleetRegions    []*amsclientmodels.APIRegionConfig
	fleetRegion     = &amsclientmodels.APIRegionConfig{
		BufferSize: &bufferSize,
		Region:     &regionConfig,
	}
	imageId     = "imageId"
	defaultBool = false
)

func checkAmsAccount() error {
	_, err := accountService.AccountGetShort(&account.AccountGetParams{Namespace: integration.NamespaceTest})
	if err != nil {
		_, errCreate := accountService.AdminAccountCreateShort(&account.AdminAccountCreateParams{
			Body:      &amsclientmodels.APIAccountCreateRequest{Name: &accountName},
			Namespace: integration.NamespaceTest,
		})
		if errCreate != nil {
			return fmt.Errorf("failed to create account. %v", errCreate)
		}
	}

	return nil
}
func TestIntegrationAmsImageList(t *testing.T) {
	if strings.Contains(configRepository.BaseUrl, "gamingservices.accelbyte.io") {
		t.Skip("skip for ags starter")
	}

	// Login User - Arrange
	Init()

	// Check account
	if err := checkAmsAccount(); err != nil {
		assert.FailNow(t, err.Error())
	}

	// CASE Image List
	inputGet := &images.ImageListParams{
		Namespace: integration.NamespaceTest,
	}
	get, errGet := imagesService.ImageListShort(inputGet)
	if errGet != nil {
		assert.FailNow(t, errGet.Error())

		return
	}
	// ESAC

	// Assert
	assert.NotNil(t, get, "should not be nil")
	assert.Nil(t, errGet, "err should be nil")
}

func TestIntegrationAmsFleet(t *testing.T) {
	// Login User - Arrange
	Init()

	fleetRegions = append(fleetRegions, fleetRegion)

	// CASE Create Fleet
	inputCreate := &fleets.FleetCreateParams{
		Body: &amsclientmodels.APIFleetParameters{
			Active:    &defaultBool,
			ClaimKeys: claimKeys,
			ImageDeploymentProfile: &amsclientmodels.APIImageDeploymentProfile{
				ImageID: &imageId,
			},
			Name:    &fleetName,
			Regions: fleetRegions,
		},
		Namespace: integration.NamespaceTest,
	}
	created, errCreated := fleetService.FleetCreateShort(inputCreate)
	if errCreated != nil {
		t.Skip("not using the real image Id")
		assert.FailNow(t, errCreated.Error())

		return
	}
	// ESAC

	// Assert
	assert.Nil(t, errCreated, "err should be nil")
	assert.NotNil(t, created.Data, "should not be nil")
	if created.Data != nil {
		t.Logf("fleetId: %v", *created.Data.ID)

		// CASE Get Fleet
		inputGet := &fleets.FleetGetParams{
			FleetID:   *created.Data.ID,
			Namespace: integration.NamespaceTest,
		}
		get, errGet := fleetService.FleetGetShort(inputGet)
		if errGet != nil {
			assert.FailNow(t, errGet.Error())

			return
		}
		// ESAC

		// Assert
		assert.Nil(t, errGet, "err should be nil")
		assert.NotNil(t, get, "should not be nil")

		// CASE Update Fleet
		inputUpdate := &fleets.FleetUpdateParams{
			Body: &amsclientmodels.APIFleetParameters{
				Active:    &defaultBool,
				ClaimKeys: claimKeys,
				ImageDeploymentProfile: &amsclientmodels.APIImageDeploymentProfile{
					ImageID: &imageId,
				},
				Name:    &fleetNameUpdate,
				Regions: fleetRegions,
			},
			FleetID:   *created.Data.ID,
			Namespace: integration.NamespaceTest,
		}
		errUpdated := fleetService.FleetUpdateShort(inputUpdate)
		if errUpdated != nil {
			assert.FailNow(t, errUpdated.Error())

			return
		}
		// ESAC

		// Assert
		assert.Nil(t, errUpdated, "err should be nil")

		// CASE Delete Fleet
		inputDelete := &fleets.FleetDeleteParams{
			FleetID:   *created.Data.ID,
			Namespace: integration.NamespaceTest,
		}
		errDelete := fleetService.FleetDeleteShort(inputDelete)
		if errDelete != nil {
			assert.FailNow(t, errDelete.Error())

			return
		}
		// ESAC

		// Assert
		assert.Nil(t, errDelete, "err should be nil")
	}
}

func TestIntegrationInfoRegions(t *testing.T) {
	// Login User - Arrange
	Init()

	fleetRegions = append(fleetRegions, fleetRegion)

	// CASE Info regions
	inputInfo := &a_m_s_info.InfoRegionsParams{
		Namespace: integration.NamespaceTest,
	}
	info, errInfo := infoService.InfoRegionsShort(inputInfo)
	if errInfo != nil {
		assert.FailNow(t, errInfo.Error())

		return
	}
	// ESAC

	// Assert
	assert.Nil(t, errInfo, "err should be nil")
	assert.NotNil(t, info, "should not be nil")
	t.Logf("regions: %v", info.Data.Regions)
}

func TestIntegrationInfoSupportedInstances(t *testing.T) {
	// Login User - Arrange
	Init()

	fleetRegions = append(fleetRegions, fleetRegion)

	// CASE Info supported instances
	inputInfo := &a_m_s_info.InfoSupportedInstancesParams{
		Namespace: integration.NamespaceTest,
	}
	info, errInfo := infoService.InfoSupportedInstancesShort(inputInfo)
	if errInfo != nil {
		assert.FailNow(t, errInfo.Error())

		return
	}
	// ESAC

	// Assert
	assert.Nil(t, errInfo, "err should be nil")
	assert.NotNil(t, info, "should not be nil")
	t.Logf("available instances type: %v", info.Data.AvailableInstanceTypes)
}
