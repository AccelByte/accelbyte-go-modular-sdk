// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package chat

import (
	lobby "github.com/AccelByte/accelbyte-go-modular-sdk/lobby-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/lobby-sdk/pkg/lobbyclient/chat"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// PersonalChatHistoryCmd represents the PersonalChatHistory command
var PersonalChatHistoryCmd = &cobra.Command{
	Use:   "personalChatHistory",
	Short: "Personal chat history",
	Long:  `Personal chat history`,
	RunE: func(cmd *cobra.Command, args []string) error {
		chatService := &lobby.ChatService{
			Client:          lobby.NewLobbyClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		friendId, _ := cmd.Flags().GetString("friendId")
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &chat.PersonalChatHistoryParams{
			FriendID:  friendId,
			Namespace: namespace,
			UserID:    userId,
		}
		ok, errOK := chatService.PersonalChatHistoryShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	PersonalChatHistoryCmd.Flags().String("friendId", "", "Friend id")
	_ = PersonalChatHistoryCmd.MarkFlagRequired("friendId")
	PersonalChatHistoryCmd.Flags().String("namespace", "", "Namespace")
	_ = PersonalChatHistoryCmd.MarkFlagRequired("namespace")
	PersonalChatHistoryCmd.Flags().String("userId", "", "User id")
	_ = PersonalChatHistoryCmd.MarkFlagRequired("userId")
}
