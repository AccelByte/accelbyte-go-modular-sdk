// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package operations

import (
	chat "github.com/AccelByte/accelbyte-go-modular-sdk/chat-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/chat-sdk/pkg/chatclient/operations"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// PublicGetMessagesCmd represents the PublicGetMessages command
var PublicGetMessagesCmd = &cobra.Command{
	Use:   "publicGetMessages",
	Short: "Public get messages",
	Long:  `Public get messages`,
	RunE: func(cmd *cobra.Command, args []string) error {
		operationsService := &chat.OperationsService{
			Client:          chat.NewChatClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		input := &operations.PublicGetMessagesParams{}
		ok, errOK := operationsService.PublicGetMessagesShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
}
