// Copyright (c) 2022 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package integration_test

import (
	"testing"

	"github.com/sirupsen/logrus"
	"github.com/stretchr/testify/assert"

	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/utils/auth"

	basic "github.com/AccelByte/accelbyte-go-modular-sdk/basic-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/basic-sdk/pkg/basicclient/user_profile"
	"github.com/AccelByte/accelbyte-go-modular-sdk/basic-sdk/pkg/basicclientmodels"

	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/tests/integration"
)

var (
	timezone           = "Asia/Jakarta"
	basicLanguange     = "en"
	userProfileService = &basic.UserProfileService{
		Client:          basic.NewBasicClient(auth.DefaultConfigRepositoryImpl()),
		TokenRepository: tokenRepository,
	}
	bodyBasic = &basicclientmodels.UserProfilePrivateCreate{
		FirstName: "go",
		Language:  basicLanguange,
		LastName:  "sdk",
		TimeZone:  timezone,
	}
	bodyBasicUpdate = &basicclientmodels.UserProfileUpdate{
		FirstName: "goUpdate",
		Language:  basicLanguange,
		LastName:  "sdkUpdate",
		TimeZone:  timezone,
		ZipCode:   integration.EmptyString,
	}
)

func TestIntegrationUserProfile(t *testing.T) {
	// Login User - Arrange
	Init()

	checkProfileExist()

	// CASE Create a profile
	inputCreate := &user_profile.CreateMyProfileParams{
		Body:      bodyBasic,
		Namespace: integration.NamespaceTest,
	}

	created, errCreate := userProfileService.CreateMyProfileShort(inputCreate)
	if errCreate != nil {
		assert.FailNow(t, errCreate.Error())
	}
	t.Logf("Profile: %v created", created.Data.UserID)
	// ESAC

	// Assert
	assert.Nil(t, errCreate, "err should be nil")
	assert.NotNil(t, created, "response should not be nil")

	// CASE Get a profile
	inputGet := &user_profile.PublicGetUserProfileInfoParams{
		Namespace: integration.NamespaceTest,
		UserID:    created.Data.UserID,
	}

	get, errGet := userProfileService.PublicGetUserProfileInfoShort(inputGet)
	if errGet != nil {
		assert.FailNow(t, errGet.Error())
	}
	// ESAC

	// Assert
	assert.Nil(t, errGet, "err should be nil")
	assert.NotNil(t, get, "response should not be nil")

	// CASE Update a profile
	inputUpdate := &user_profile.PublicUpdateUserProfileParams{
		Body:      bodyBasicUpdate,
		Namespace: integration.NamespaceTest,
		UserID:    created.Data.UserID,
	}

	updated, errUpdate := userProfileService.PublicUpdateUserProfileShort(inputUpdate)
	if errUpdate != nil {
		assert.FailNow(t, errUpdate.Error())
	}
	// ESAC

	// Assert
	assert.Nil(t, errUpdate, "err should be nil")
	assert.NotNil(t, updated, "response should not be nil")

	// CASE Delete a profile
	inputDelete := &user_profile.DeleteUserProfileParams{
		Namespace: integration.NamespaceTest,
		UserID:    created.Data.UserID,
	}

	deleted, errDelete := userProfileService.DeleteUserProfileShort(inputDelete)
	if errDelete != nil {
		assert.FailNow(t, errDelete.Error())
	}
	// ESAC

	// Assert
	assert.Nil(t, errDelete, "err should be nil")
	assert.NotNil(t, deleted, "response should not be nil")

	inputCheck := &user_profile.GetMyProfileInfoParams{
		Namespace: integration.NamespaceTest,
	}
	_, err := userProfileService.GetMyProfileInfoShort(inputCheck)
	if err != nil {
		logrus.Error("existing profile not found")
	}

	assert.NotNil(t, err, "err should not be nil")
}

// helper
func checkProfileExist() {
	inputGet := &user_profile.GetMyProfileInfoParams{
		Namespace: integration.NamespaceTest,
	}
	existingProfile, err := userProfileService.GetMyProfileInfoShort(inputGet)
	if err != nil {
		logrus.Error("existing profile not found")
	}
	if existingProfile != nil {
		inputDelete := &user_profile.DeleteUserProfileParams{
			Namespace: integration.NamespaceTest,
			UserID:    existingProfile.Data.UserID,
		}
		deleted, errDelete := userProfileService.DeleteUserProfileShort(inputDelete)
		if errDelete != nil {
			logrus.Error(errDelete.Error())
		}
		logrus.Infof("Existing Profile: %v deleted", deleted.Data.UserID)
	}
}
