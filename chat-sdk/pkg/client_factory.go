// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package chat

import (
	"strings"

	"github.com/AccelByte/accelbyte-go-modular-sdk/chat-sdk/pkg/chatclient"
	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/repository"
)

type ChatClient struct {
	Topic      *TopicService
	Config     *ConfigService
	Inbox      *InboxService
	Moderation *ModerationService
	Profanity  *ProfanityService
	Operations *OperationsService
}

func NewChatClient(session repository.Session) *ChatClient {
	httpClient := NewChatHttpClient(session.ConfigRepository)
	return &ChatClient{
		Topic:      &TopicService{Client: httpClient, Session: session},
		Config:     &ConfigService{Client: httpClient, Session: session},
		Inbox:      &InboxService{Client: httpClient, Session: session},
		Moderation: &ModerationService{Client: httpClient, Session: session},
		Profanity:  &ProfanityService{Client: httpClient, Session: session},
		Operations: &OperationsService{Client: httpClient, Session: session},
	}
}

func NewChatHttpClient(configRepository repository.ConfigRepository) *chatclient.JusticeChatService {
	baseURL := strings.TrimSuffix(configRepository.GetJusticeBaseUrl(), "/")

	if extendedConfigRepository, ok := configRepository.(repository.ExtendedConfigRepository); ok {
		baseURL = extendedConfigRepository.GetCustomBasePath("/chat")
		baseURL = strings.TrimSuffix(baseURL, "/")
	}

	if len(baseURL) > 0 {
		baseURLSplit := strings.Split(baseURL, "://")
		httpClientConfig := &chatclient.TransportConfig{
			Host:          baseURLSplit[1],
			BasePath:      "",
			Schemes:       []string{baseURLSplit[0]},
			UserAgentFunc: GetUserAgent,
		}
		return chatclient.NewHTTPClientWithConfig(nil, httpClientConfig)
	} else {
		return chatclient.NewHTTPClient(nil)
	}
}
