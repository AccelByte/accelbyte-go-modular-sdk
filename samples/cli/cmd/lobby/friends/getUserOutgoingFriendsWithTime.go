// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package friends

import (
	lobby "github.com/AccelByte/accelbyte-go-sdk/lobby-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-sdk/lobby-sdk/pkg/lobbyclient/friends"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// GetUserOutgoingFriendsWithTimeCmd represents the GetUserOutgoingFriendsWithTime command
var GetUserOutgoingFriendsWithTimeCmd = &cobra.Command{
	Use:   "getUserOutgoingFriendsWithTime",
	Short: "Get user outgoing friends with time",
	Long:  `Get user outgoing friends with time`,
	RunE: func(cmd *cobra.Command, args []string) error {
		friendsService := &lobby.FriendsService{
			Client:          lobby.NewLobbyClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &friends.GetUserOutgoingFriendsWithTimeParams{
			Namespace: namespace,
		}
		ok, errOK := friendsService.GetUserOutgoingFriendsWithTimeShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	GetUserOutgoingFriendsWithTimeCmd.Flags().String("namespace", "", "Namespace")
	_ = GetUserOutgoingFriendsWithTimeCmd.MarkFlagRequired("namespace")
}
