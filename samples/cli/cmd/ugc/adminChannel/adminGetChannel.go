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

// AdminGetChannelCmd represents the AdminGetChannel command
var AdminGetChannelCmd = &cobra.Command{
	Use:   "adminGetChannel",
	Short: "Admin get channel",
	Long:  `Admin get channel`,
	RunE: func(cmd *cobra.Command, args []string) error {
		adminChannelService := &ugc.AdminChannelService{
			Client:          ugc.NewUgcClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		limit, _ := cmd.Flags().GetInt64("limit")
		name, _ := cmd.Flags().GetString("name")
		offset, _ := cmd.Flags().GetInt64("offset")
		input := &admin_channel.AdminGetChannelParams{
			Namespace: namespace,
			UserID:    userId,
			Limit:     &limit,
			Name:      &name,
			Offset:    &offset,
		}
		ok, errOK := adminChannelService.AdminGetChannelShort(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	AdminGetChannelCmd.Flags().String("namespace", "", "Namespace")
	_ = AdminGetChannelCmd.MarkFlagRequired("namespace")
	AdminGetChannelCmd.Flags().String("userId", "", "User id")
	_ = AdminGetChannelCmd.MarkFlagRequired("userId")
	AdminGetChannelCmd.Flags().Int64("limit", 20, "Limit")
	AdminGetChannelCmd.Flags().String("name", "", "Name")
	AdminGetChannelCmd.Flags().Int64("offset", 0, "Offset")
}
