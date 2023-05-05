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

// GetUserOutgoingFriendsCmd represents the GetUserOutgoingFriends command
var GetUserOutgoingFriendsCmd = &cobra.Command{
	Use:   "getUserOutgoingFriends",
	Short: "Get user outgoing friends",
	Long:  `Get user outgoing friends`,
	RunE: func(cmd *cobra.Command, args []string) error {
		friendsService := &lobby.FriendsService{
			Client:          lobby.NewLobbyClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &friends.GetUserOutgoingFriendsParams{
			Namespace: namespace,
		}
		ok, errOK := friendsService.GetUserOutgoingFriendsShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	GetUserOutgoingFriendsCmd.Flags().String("namespace", "", "Namespace")
	_ = GetUserOutgoingFriendsCmd.MarkFlagRequired("namespace")
}
