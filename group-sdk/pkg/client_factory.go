// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package group

import (
	"strings"

	"github.com/AccelByte/accelbyte-go-modular-sdk/group-sdk/pkg/groupclient"
	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/repository"
)

type GroupClient struct {
	Configuration *ConfigurationService
	Group         *GroupService
	GroupMember   *GroupMemberService
	GroupRoles    *GroupRolesService
	MemberRequest *MemberRequestService
}

func NewGroupClient(session repository.Session) *GroupClient {
	httpClient := NewGroupHttpClient(session.ConfigRepository)
	return &GroupClient{
		Configuration: &ConfigurationService{Client: httpClient, Session: session},
		Group:         &GroupService{Client: httpClient, Session: session},
		GroupMember:   &GroupMemberService{Client: httpClient, Session: session},
		GroupRoles:    &GroupRolesService{Client: httpClient, Session: session},
		MemberRequest: &MemberRequestService{Client: httpClient, Session: session},
	}
}

func NewGroupHttpClient(configRepository repository.ConfigRepository) *groupclient.JusticeGroupService {
	baseURL := strings.TrimSuffix(configRepository.GetJusticeBaseUrl(), "/")

	if extendedConfigRepository, ok := configRepository.(repository.ExtendedConfigRepository); ok {
		baseURL = extendedConfigRepository.GetCustomBasePath("/group")
		baseURL = strings.TrimSuffix(baseURL, "/")
	}

	if len(baseURL) > 0 {
		baseURLSplit := strings.Split(baseURL, "://")
		httpClientConfig := &groupclient.TransportConfig{
			Host:          baseURLSplit[1],
			BasePath:      "",
			Schemes:       []string{baseURLSplit[0]},
			UserAgentFunc: GetUserAgent,
		}
		return groupclient.NewHTTPClientWithConfig(nil, httpClientConfig)
	} else {
		return groupclient.NewHTTPClient(nil)
	}
}
