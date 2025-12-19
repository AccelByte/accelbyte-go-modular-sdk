// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package adminContent

import (
	"log/slog"

	ugc "github.com/AccelByte/accelbyte-go-modular-sdk/ugc-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/ugc-sdk/pkg/ugcclient/admin_content"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// DeleteContentByShareCodeCmd represents the DeleteContentByShareCode command
var DeleteContentByShareCodeCmd = &cobra.Command{
	Use:   "deleteContentByShareCode",
	Short: "Delete content by share code",
	Long:  `Delete content by share code`,
	RunE: func(cmd *cobra.Command, args []string) error {
		adminContentService := &ugc.AdminContentService{
			Client:          ugc.NewUgcClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		channelId, _ := cmd.Flags().GetString("channelId")
		namespace, _ := cmd.Flags().GetString("namespace")
		shareCode, _ := cmd.Flags().GetString("shareCode")
		userId, _ := cmd.Flags().GetString("userId")
		input := &admin_content.DeleteContentByShareCodeParams{
			ChannelID: channelId,
			Namespace: namespace,
			ShareCode: shareCode,
			UserID:    userId,
		}
		errNoContent := adminContentService.DeleteContentByShareCodeShort(input)
		if errNoContent != nil {
			slog.Error("operation failed", "error", errNoContent)

			return errNoContent
		}

		slog.Info("Response CLI success.")

		return nil
	},
}

func init() {
	DeleteContentByShareCodeCmd.Flags().String("channelId", "", "Channel id")
	_ = DeleteContentByShareCodeCmd.MarkFlagRequired("channelId")
	DeleteContentByShareCodeCmd.Flags().String("namespace", "", "Namespace")
	_ = DeleteContentByShareCodeCmd.MarkFlagRequired("namespace")
	DeleteContentByShareCodeCmd.Flags().String("shareCode", "", "Share code")
	_ = DeleteContentByShareCodeCmd.MarkFlagRequired("shareCode")
	DeleteContentByShareCodeCmd.Flags().String("userId", "", "User id")
	_ = DeleteContentByShareCodeCmd.MarkFlagRequired("userId")
}
