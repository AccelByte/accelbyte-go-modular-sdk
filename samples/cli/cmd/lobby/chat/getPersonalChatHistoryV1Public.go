// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package chat

import (
	lobby "github.com/AccelByte/accelbyte-go-sdk/lobby-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-sdk/lobby-sdk/pkg/lobbyclient/chat"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// GetPersonalChatHistoryV1PublicCmd represents the GetPersonalChatHistoryV1Public command
var GetPersonalChatHistoryV1PublicCmd = &cobra.Command{
	Use:   "getPersonalChatHistoryV1Public",
	Short: "Get personal chat history V1 public",
	Long:  `Get personal chat history V1 public`,
	RunE: func(cmd *cobra.Command, args []string) error {
		chatService := &lobby.ChatService{
			Client:          lobby.NewLobbyClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		friendId, _ := cmd.Flags().GetString("friendId")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &chat.GetPersonalChatHistoryV1PublicParams{
			FriendID:  friendId,
			Namespace: namespace,
		}
		ok, errOK := chatService.GetPersonalChatHistoryV1PublicShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	GetPersonalChatHistoryV1PublicCmd.Flags().String("friendId", "", "Friend id")
	_ = GetPersonalChatHistoryV1PublicCmd.MarkFlagRequired("friendId")
	GetPersonalChatHistoryV1PublicCmd.Flags().String("namespace", "", "Namespace")
	_ = GetPersonalChatHistoryV1PublicCmd.MarkFlagRequired("namespace")
}
