// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package profanity

import (
	"log/slog"

	chat "github.com/AccelByte/accelbyte-go-modular-sdk/chat-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/chat-sdk/pkg/chatclient/profanity"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// AdminProfanityGroupCmd represents the AdminProfanityGroup command
var AdminProfanityGroupCmd = &cobra.Command{
	Use:   "adminProfanityGroup",
	Short: "Admin profanity group",
	Long:  `Admin profanity group`,
	RunE: func(cmd *cobra.Command, args []string) error {
		profanityService := &chat.ProfanityService{
			Client:          chat.NewChatClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		limit, _ := cmd.Flags().GetInt64("limit")
		offset, _ := cmd.Flags().GetInt64("offset")
		input := &profanity.AdminProfanityGroupParams{
			Namespace: namespace,
			Limit:     &limit,
			Offset:    &offset,
		}
		ok, errOK := profanityService.AdminProfanityGroupShort(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	AdminProfanityGroupCmd.Flags().String("namespace", "", "Namespace")
	_ = AdminProfanityGroupCmd.MarkFlagRequired("namespace")
	AdminProfanityGroupCmd.Flags().Int64("limit", 20, "Limit")
	AdminProfanityGroupCmd.Flags().Int64("offset", 0, "Offset")
}
