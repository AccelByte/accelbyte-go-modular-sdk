// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package friends

import (
	"encoding/json"
	"log/slog"

	lobby "github.com/AccelByte/accelbyte-go-modular-sdk/lobby-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/lobby-sdk/pkg/lobbyclient/friends"
	"github.com/AccelByte/accelbyte-go-modular-sdk/lobby-sdk/pkg/lobbyclientmodels"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// UserCancelFriendRequestCmd represents the UserCancelFriendRequest command
var UserCancelFriendRequestCmd = &cobra.Command{
	Use:   "userCancelFriendRequest",
	Short: "User cancel friend request",
	Long:  `User cancel friend request`,
	RunE: func(cmd *cobra.Command, args []string) error {
		friendsService := &lobby.FriendsService{
			Client:          lobby.NewLobbyClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *lobbyclientmodels.ModelUserCancelFriendRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &friends.UserCancelFriendRequestParams{
			Body:      body,
			Namespace: namespace,
		}
		errNoContent := friendsService.UserCancelFriendRequestShort(input)
		if errNoContent != nil {
			slog.Error("operation failed", "error", errNoContent)

			return errNoContent
		}

		slog.Info("Response CLI success.")

		return nil
	},
}

func init() {
	UserCancelFriendRequestCmd.Flags().String("body", "", "Body")
	_ = UserCancelFriendRequestCmd.MarkFlagRequired("body")
	UserCancelFriendRequestCmd.Flags().String("namespace", "", "Namespace")
	_ = UserCancelFriendRequestCmd.MarkFlagRequired("namespace")
}
