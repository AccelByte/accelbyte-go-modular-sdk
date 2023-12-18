//go:build compat || compat_chat

// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package factory

import (
	"strings"

	chat "github.com/AccelByte/accelbyte-go-modular-sdk/chat-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/chat-sdk/pkg/chatclient"
	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/repository"
)

var chatClientInstance *chatclient.JusticeChatService

// NewChatClient
// Deprecated: 2023-03-30 - please use NewChatClient from "github.com/AccelByte/accelbyte-go-modular-sdk/chat-sdk/pkg"
func NewChatClient(configRepository repository.ConfigRepository) *chatclient.JusticeChatService {
	if chatClientInstance == nil {
		baseURL := strings.TrimSuffix(configRepository.GetJusticeBaseUrl(), "/")
		if len(baseURL) > 0 {
			baseURLSplit := strings.Split(baseURL, "://")
			httpClientConfig := &chatclient.TransportConfig{
				Host:          baseURLSplit[1],
				BasePath:      "",
				Schemes:       []string{baseURLSplit[0]},
				UserAgentFunc: chat.GetUserAgent,
			}
			chatClientInstance = chatclient.NewHTTPClientWithConfig(nil, httpClientConfig)
		} else {
			chatClientInstance = chatclient.NewHTTPClient(nil)
		}
	}

	return chatClientInstance
}
