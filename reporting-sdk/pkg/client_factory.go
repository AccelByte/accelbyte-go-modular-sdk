// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package reporting

import (
	"strings"

	"github.com/AccelByte/accelbyte-go-modular-sdk/reporting-sdk/pkg/reportingclient"
	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/repository"
)

type ReportingClient struct {
	AdminExtensionCategoriesandAutoModerationActions *AdminExtensionCategoriesandAutoModerationActionsService
	AdminConfigurations                              *AdminConfigurationsService
	AdminReasons                                     *AdminReasonsService
	AdminReports                                     *AdminReportsService
	AdminModerationRule                              *AdminModerationRuleService
	AdminTickets                                     *AdminTicketsService
	PublicReasons                                    *PublicReasonsService
	PublicReports                                    *PublicReportsService
}

func NewReportingClient(session repository.Session) *ReportingClient {
	httpClient := NewReportingHttpClient(session.ConfigRepository)
	return &ReportingClient{
		AdminExtensionCategoriesandAutoModerationActions: &AdminExtensionCategoriesandAutoModerationActionsService{Client: httpClient, Session: session},
		AdminConfigurations: &AdminConfigurationsService{Client: httpClient, Session: session},
		AdminReasons:        &AdminReasonsService{Client: httpClient, Session: session},
		AdminReports:        &AdminReportsService{Client: httpClient, Session: session},
		AdminModerationRule: &AdminModerationRuleService{Client: httpClient, Session: session},
		AdminTickets:        &AdminTicketsService{Client: httpClient, Session: session},
		PublicReasons:       &PublicReasonsService{Client: httpClient, Session: session},
		PublicReports:       &PublicReportsService{Client: httpClient, Session: session},
	}
}

func NewReportingHttpClient(configRepository repository.ConfigRepository) *reportingclient.JusticeReportingService {
	baseURL := strings.TrimSuffix(configRepository.GetJusticeBaseUrl(), "/")

	if extendedConfigRepository, ok := configRepository.(repository.ExtendedConfigRepository); ok {
		baseURL = extendedConfigRepository.GetCustomBasePath("/reporting")
		baseURL = strings.TrimSuffix(baseURL, "/")
	}

	if len(baseURL) > 0 {
		baseURLSplit := strings.Split(baseURL, "://")
		httpClientConfig := &reportingclient.TransportConfig{
			Host:          baseURLSplit[1],
			BasePath:      "",
			Schemes:       []string{baseURLSplit[0]},
			UserAgentFunc: GetUserAgent,
		}
		return reportingclient.NewHTTPClientWithConfig(nil, httpClientConfig)
	} else {
		return reportingclient.NewHTTPClient(nil)
	}
}
