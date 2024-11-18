// Copyright (c) 2022 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package integration_test

import (
	"bytes"
	"os"

	"testing"

	"github.com/stretchr/testify/assert"

	"github.com/sirupsen/logrus"

	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/utils/auth"

	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/tests/integration"

	achievement "github.com/AccelByte/accelbyte-go-modular-sdk/achievement-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/achievement-sdk/pkg/achievementclient/achievements"
	"github.com/AccelByte/accelbyte-go-modular-sdk/achievement-sdk/pkg/achievementclientmodels"
)

var (
	achievementsService = &achievement.AchievementsService{
		Client:          achievement.NewAchievementClient(auth.DefaultConfigRepositoryImpl()),
		TokenRepository: tokenRepository,
	}
	achievementCode = "GOLANG"
	defaultLanguage = "EN"
	description     = make(map[string]string)
	goalValue       = float64(1)
	hidden          = false
	hiddenUpdate    = true
	incremental     = false
	lockedIcons     []*achievementclientmodels.ModelsIcon
	name            = make(map[string]string)
	statCode        = "STAT-CODE-GO"
	tags            []string
	unlockedIcons   []*achievementclientmodels.ModelsIcon
	bodyAchievement = &achievementclientmodels.ModelsAchievementRequest{
		AchievementCode: &achievementCode,
		DefaultLanguage: &defaultLanguage,
		Description:     description,
		GoalValue:       &goalValue,
		Hidden:          &hidden,
		Incremental:     &incremental,
		LockedIcons:     lockedIcons,
		Name:            name,
		StatCode:        &statCode,
		Tags:            tags,
		UnlockedIcons:   unlockedIcons,
	}
	bodyAchievementUpdate = &achievementclientmodels.ModelsAchievementUpdateRequest{
		DefaultLanguage: &defaultLanguage,
		Description:     description,
		GoalValue:       &goalValue,
		Hidden:          &hiddenUpdate,
		Incremental:     &incremental,
		LockedIcons:     lockedIcons,
		Name:            name,
		StatCode:        &statCode,
		Tags:            tags,
		UnlockedIcons:   unlockedIcons,
	}
)

func TestIntegrationAchievement(t *testing.T) {
	// Login User - Arrange
	Init()

	description["EN"] = "Description"
	name["EN"] = "Name"
	tags = append(tags, "TAG")

	// Arrange: delete existing achievement ignore if not exists
	_ = achievementsService.AdminDeleteAchievementShort(&achievements.AdminDeleteAchievementParams{
		AchievementCode: achievementCode, Namespace: integration.NamespaceTest,
	})

	// CASE Create an achievement
	inputCreate := &achievements.AdminCreateNewAchievementParams{
		Body:      bodyAchievement,
		Namespace: integration.NamespaceTest,
	}

	created, errCreate := achievementsService.AdminCreateNewAchievementShort(inputCreate)
	if errCreate != nil {
		assert.FailNow(t, errCreate.Error())
	}
	t.Logf("AchievementCode: %v created", *created.Data.AchievementCode)
	// ESAC

	// Assert
	assert.Nil(t, errCreate, "err should be nil")
	assert.NotNil(t, created, "response should not be nil")

	// CASE Retrieve an achievement by its code
	inputGet := &achievements.AdminGetAchievementParams{
		AchievementCode: achievementCode,
		Namespace:       integration.NamespaceTest,
	}

	get, errGet := achievementsService.AdminGetAchievementShort(inputGet)
	// ESAC

	// Assert
	assert.Nil(t, errGet, "err should be nil")
	assert.NotNil(t, get, "response should not be nil")

	// CASE Update an achievement
	inputUpdate := &achievements.AdminUpdateAchievementParams{
		AchievementCode: achievementCode,
		Body:            bodyAchievementUpdate,
		Namespace:       integration.NamespaceTest,
	}

	updated, errUpdate := achievementsService.AdminUpdateAchievementShort(inputUpdate)
	// ESAC

	// Assert
	assert.Nil(t, errUpdate, "err should be nil")
	assert.NotNil(t, updated, "response should not be nil")
	assert.Equal(t, true, *updated.Data.Hidden)

	// CASE Export an achievement
	file, errFile := os.Create("file")
	if errFile != nil {
		t.Errorf("Failed to create file: %v", errFile)
	}
	defer file.Close()

	logrus.Infof("Successfully created file: %v", file.Name())

	writer := bytes.NewBuffer(nil)

	inputExport := &achievements.ExportAchievementsParams{
		Namespace: integration.NamespaceTest,
	}
	export, errExport := achievementsService.ExportAchievementsShort(inputExport, writer)
	// ESAC

	// Assert
	assert.Nil(t, errExport, "err should be nil")
	assert.NotNil(t, export, "response should not be nil")

	// write the file
	if _, err := file.Write(writer.Bytes()); err != nil {
		t.Errorf("Failed to write export data to file: %v", err)
	}

	defer os.Remove("file")

	// CASE Get all achievements
	inputGetAll := &achievements.AdminListAchievementsParams{
		Limit:     nil,
		Namespace: integration.NamespaceTest,
		Offset:    nil,
		SortBy:    nil,
	}

	getAll, errGetAll := achievementsService.AdminListAchievementsShort(inputGetAll)
	// ESAC

	// Assert
	assert.Nil(t, errGetAll, "err should be nil")
	assert.NotNil(t, getAll, "response should not be nil")

	// CASE Delete an achievement
	inputDelete := &achievements.AdminDeleteAchievementParams{
		AchievementCode: achievementCode,
		Namespace:       integration.NamespaceTest,
	}

	errDelete := achievementsService.AdminDeleteAchievementShort(inputDelete)
	// ESAC

	// Assert
	assert.Nil(t, errDelete, "err should be nil")
}
