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
		limit, _ := cmd.Flags().GetInt64("limit")
		offset, _ := cmd.Flags().GetInt64("offset")
		input := &friends.GetUserOutgoingFriendsParams{
			Namespace: namespace,
			Limit:     &limit,
			Offset:    &offset,
		}
		ok, errOK := friendsService.GetUserOutgoingFriendsShort(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	GetUserOutgoingFriendsCmd.Flags().String("namespace", "", "Namespace")
	_ = GetUserOutgoingFriendsCmd.MarkFlagRequired("namespace")
	GetUserOutgoingFriendsCmd.Flags().Int64("limit", 20, "Limit")
	GetUserOutgoingFriendsCmd.Flags().Int64("offset", 0, "Offset")
}
