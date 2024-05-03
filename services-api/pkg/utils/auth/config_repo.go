// Copyright (c) 2023 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package auth

import (
	"fmt"
	"os"
	"strings"

	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/constant"
)

type ConfigRepositoryImpl struct {
	ClientId     string
	ClientSecret string
	BaseUrl      string
}

func DefaultConfigRepositoryImpl() *ConfigRepositoryImpl {
	return &ConfigRepositoryImpl{
		ClientId:     os.Getenv(constant.EnvClientID),
		ClientSecret: os.Getenv(constant.EnvClientSecret),
		BaseUrl:      os.Getenv(constant.EnvBaseURL),
	}
}

func (c *ConfigRepositoryImpl) GetClientId() string {
	return c.ClientId
}

func (c *ConfigRepositoryImpl) GetClientSecret() string {
	return c.ClientSecret
}

func (c *ConfigRepositoryImpl) GetJusticeBaseUrl() string {
	return c.BaseUrl
}

type ExtendedDefaultConfigRepositoryImpl struct {
	ConfigRepositoryImpl
	listBaseURL  map[string]string
	listBasePath map[string]string
}

func ExtendedDefaultConfigRepository() *ExtendedDefaultConfigRepositoryImpl {
	listBaseURL := map[string]string{
		"achievement":    os.Getenv("AB_ACHIEVEMENT_BASE_URL"),
		"ams":            os.Getenv("AB_AMS_BASE_URL"),
		"basic":          os.Getenv("AB_BASIC_BASE_URL"),
		"challenge":      os.Getenv("AB_CHALLENGE_BASE_URL"),
		"chat":           os.Getenv("AB_CHAT_BASE_URL"),
		"cloudsave":      os.Getenv("AB_CLOUDSAVE_BASE_URL"),
		"dsartifact":     os.Getenv("AB_DSARTIFACT_BASE_URL"),
		"dslogmanager":   os.Getenv("AB_DSLOGMANAGER_BASE_URL"),
		"dsmc":           os.Getenv("AB_DSMC_BASE_URL"),
		"eventlog":       os.Getenv("AB_EVENTLOG_BASE_URL"),
		"gametelemetry":  os.Getenv("AB_GAMETELEMETRY_BASE_URL"),
		"gdpr":           os.Getenv("AB_GDPR_BASE_URL"),
		"group":          os.Getenv("AB_GROUP_BASE_URL"),
		"iam":            os.Getenv("AB_IAM_BASE_URL"),
		"inventory":      os.Getenv("AB_INVENTORY_BASE_URL"),
		"leaderboard":    os.Getenv("AB_LEADERBOARD_BASE_URL"),
		"legal":          os.Getenv("AB_LEGAL_BASE_URL"),
		"lobby":          os.Getenv("AB_LOBBY_BASE_URL"),
		"match2":         os.Getenv("AB_MATCH2_BASE_URL"),
		"matchmaking":    os.Getenv("AB_MATCHMAKING_BASE_URL"),
		"platform":       os.Getenv("AB_PLATFORM_BASE_URL"),
		"qosm":           os.Getenv("AB_QOSM_BASE_URL"),
		"reporting":      os.Getenv("AB_REPORTING_BASE_URL"),
		"seasonpass":     os.Getenv("AB_SEASONPASS_BASE_URL"),
		"session":        os.Getenv("AB_SESSION_BASE_URL"),
		"sessionbrowser": os.Getenv("AB_SESSIONBROWSER_BASE_URL"),
		"sessionhistory": os.Getenv("AB_SESSIONHISTORY_BASE_URL"),
		"social":         os.Getenv("AB_SOCIAL_BASE_URL"),
		"ugc":            os.Getenv("AB_UGC_BASE_URL"),
	}

	listBasePath := map[string]string{
		"achievement":    os.Getenv("AB_ACHIEVEMENT_BASE_PATH"),
		"ams":            os.Getenv("AB_AMS_BASE_PATH"),
		"basic":          os.Getenv("AB_BASIC_BASE_PATH"),
		"challenge":      os.Getenv("AB_CHALLENGE_BASE_PATH"),
		"chat":           os.Getenv("AB_CHAT_BASE_PATH"),
		"cloudsave":      os.Getenv("AB_CLOUDSAVE_BASE_PATH"),
		"dsartifact":     os.Getenv("AB_DSARTIFACT_BASE_PATH"),
		"dslogmanager":   os.Getenv("AB_DSLOGMANAGER_BASE_PATH"),
		"dsmc":           os.Getenv("AB_DSMC_BASE_PATH"),
		"eventlog":       os.Getenv("AB_EVENTLOG_BASE_PATH"),
		"gametelemetry":  os.Getenv("AB_GAMETELEMETRY_BASE_PATH"),
		"gdpr":           os.Getenv("AB_GDPR_BASE_PATH"),
		"group":          os.Getenv("AB_GROUP_BASE_PATH"),
		"iam":            os.Getenv("AB_IAM_BASE_PATH"),
		"inventory":      os.Getenv("AB_INVENTORY_BASE_PATH"),
		"leaderboard":    os.Getenv("AB_LEADERBOARD_BASE_PATH"),
		"legal":          os.Getenv("AB_LEGAL_BASE_PATH"),
		"lobby":          os.Getenv("AB_LOBBY_BASE_PATH"),
		"match2":         os.Getenv("AB_MATCH2_BASE_PATH"),
		"matchmaking":    os.Getenv("AB_MATCHMAKING_BASE_PATH"),
		"platform":       os.Getenv("AB_PLATFORM_BASE_PATH"),
		"qosm":           os.Getenv("AB_QOSM_BASE_PATH"),
		"reporting":      os.Getenv("AB_REPORTING_BASE_PATH"),
		"seasonpass":     os.Getenv("AB_SEASONPASS_BASE_PATH"),
		"session":        os.Getenv("AB_SESSION_BASE_PATH"),
		"sessionbrowser": os.Getenv("AB_SESSIONBROWSER_BASE_PATH"),
		"sessionhistory": os.Getenv("AB_SESSIONHISTORY_BASE_PATH"),
		"social":         os.Getenv("AB_SOCIAL_BASE_PATH"),
		"ugc":            os.Getenv("AB_UGC_BASE_PATH"),
	}

	defaultConfigRepository := DefaultConfigRepositoryImpl()

	return &ExtendedDefaultConfigRepositoryImpl{
		ConfigRepositoryImpl: *defaultConfigRepository,
		listBaseURL:          listBaseURL,
		listBasePath:         listBasePath,
	}
}

func (c *ExtendedDefaultConfigRepositoryImpl) GetCustomBasePath(servicePath string) string {
	servicePathTrim := strings.TrimPrefix(servicePath, "/")
	baseURL := strings.TrimSuffix(c.listBaseURL[servicePathTrim], "/")
	if baseURL == "" {
		baseURL = c.GetJusticeBaseUrl()
	}

	if strings.HasPrefix(servicePath, "/") {
		return fmt.Sprintf("%s/%s", baseURL, servicePathTrim)
	}

	return c.listBasePath[servicePathTrim]
}
