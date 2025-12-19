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

// UserUnfriendRequestCmd represents the UserUnfriendRequest command
var UserUnfriendRequestCmd = &cobra.Command{
	Use:   "userUnfriendRequest",
	Short: "User unfriend request",
	Long:  `User unfriend request`,
	RunE: func(cmd *cobra.Command, args []string) error {
		friendsService := &lobby.FriendsService{
			Client:          lobby.NewLobbyClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *lobbyclientmodels.ModelUserUnfriendRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &friends.UserUnfriendRequestParams{
			Body:      body,
			Namespace: namespace,
		}
		errNoContent := friendsService.UserUnfriendRequestShort(input)
		if errNoContent != nil {
			slog.Error("operation failed", "error", errNoContent)

			return errNoContent
		}

		slog.Info("Response CLI success.")

		return nil
	},
}

func init() {
	UserUnfriendRequestCmd.Flags().String("body", "", "Body")
	_ = UserUnfriendRequestCmd.MarkFlagRequired("body")
	UserUnfriendRequestCmd.Flags().String("namespace", "", "Namespace")
	_ = UserUnfriendRequestCmd.MarkFlagRequired("namespace")
}
