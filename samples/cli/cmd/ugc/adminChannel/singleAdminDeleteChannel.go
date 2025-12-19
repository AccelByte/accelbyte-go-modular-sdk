// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package adminChannel

import (
	"log/slog"

	ugc "github.com/AccelByte/accelbyte-go-modular-sdk/ugc-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/ugc-sdk/pkg/ugcclient/admin_channel"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// SingleAdminDeleteChannelCmd represents the SingleAdminDeleteChannel command
var SingleAdminDeleteChannelCmd = &cobra.Command{
	Use:   "singleAdminDeleteChannel",
	Short: "Single admin delete channel",
	Long:  `Single admin delete channel`,
	RunE: func(cmd *cobra.Command, args []string) error {
		adminChannelService := &ugc.AdminChannelService{
			Client:          ugc.NewUgcClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		channelId, _ := cmd.Flags().GetString("channelId")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &admin_channel.SingleAdminDeleteChannelParams{
			ChannelID: channelId,
			Namespace: namespace,
		}
		errNoContent := adminChannelService.SingleAdminDeleteChannelShort(input)
		if errNoContent != nil {
			slog.Error("operation failed", "error", errNoContent)

			return errNoContent
		}

		slog.Info("Response CLI success.")

		return nil
	},
}

func init() {
	SingleAdminDeleteChannelCmd.Flags().String("channelId", "", "Channel id")
	_ = SingleAdminDeleteChannelCmd.MarkFlagRequired("channelId")
	SingleAdminDeleteChannelCmd.Flags().String("namespace", "", "Namespace")
	_ = SingleAdminDeleteChannelCmd.MarkFlagRequired("namespace")
}
