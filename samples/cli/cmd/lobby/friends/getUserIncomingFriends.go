// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package friends

import (
	lobby "github.com/AccelByte/accelbyte-go-modular-sdk/lobby-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/lobby-sdk/pkg/lobbyclient/friends"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// GetUserIncomingFriendsCmd represents the GetUserIncomingFriends command
var GetUserIncomingFriendsCmd = &cobra.Command{
	Use:   "getUserIncomingFriends",
	Short: "Get user incoming friends",
	Long:  `Get user incoming friends`,
	RunE: func(cmd *cobra.Command, args []string) error {
		friendsService := &lobby.FriendsService{
			Client:          lobby.NewLobbyClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &friends.GetUserIncomingFriendsParams{
			Namespace: namespace,
		}
		ok, errOK := friendsService.GetUserIncomingFriendsShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	GetUserIncomingFriendsCmd.Flags().String("namespace", "", "Namespace")
	_ = GetUserIncomingFriendsCmd.MarkFlagRequired("namespace")
}
