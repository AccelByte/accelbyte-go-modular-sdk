// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package friends

import (
	"log/slog"

	lobby "github.com/AccelByte/accelbyte-go-modular-sdk/lobby-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/lobby-sdk/pkg/lobbyclient/friends"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// UserGetFriendshipStatusCmd represents the UserGetFriendshipStatus command
var UserGetFriendshipStatusCmd = &cobra.Command{
	Use:   "userGetFriendshipStatus",
	Short: "User get friendship status",
	Long:  `User get friendship status`,
	RunE: func(cmd *cobra.Command, args []string) error {
		friendsService := &lobby.FriendsService{
			Client:          lobby.NewLobbyClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		friendId, _ := cmd.Flags().GetString("friendId")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &friends.UserGetFriendshipStatusParams{
			FriendID:  friendId,
			Namespace: namespace,
		}
		ok, errOK := friendsService.UserGetFriendshipStatusShort(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	UserGetFriendshipStatusCmd.Flags().String("friendId", "", "Friend id")
	_ = UserGetFriendshipStatusCmd.MarkFlagRequired("friendId")
	UserGetFriendshipStatusCmd.Flags().String("namespace", "", "Namespace")
	_ = UserGetFriendshipStatusCmd.MarkFlagRequired("namespace")
}
