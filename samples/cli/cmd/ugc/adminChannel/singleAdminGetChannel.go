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

// SingleAdminGetChannelCmd represents the SingleAdminGetChannel command
var SingleAdminGetChannelCmd = &cobra.Command{
	Use:   "singleAdminGetChannel",
	Short: "Single admin get channel",
	Long:  `Single admin get channel`,
	RunE: func(cmd *cobra.Command, args []string) error {
		adminChannelService := &ugc.AdminChannelService{
			Client:          ugc.NewUgcClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		limit, _ := cmd.Flags().GetInt64("limit")
		offset, _ := cmd.Flags().GetInt64("offset")
		input := &admin_channel.SingleAdminGetChannelParams{
			Namespace: namespace,
			Limit:     &limit,
			Offset:    &offset,
		}
		ok, errOK := adminChannelService.SingleAdminGetChannelShort(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	SingleAdminGetChannelCmd.Flags().String("namespace", "", "Namespace")
	_ = SingleAdminGetChannelCmd.MarkFlagRequired("namespace")
	SingleAdminGetChannelCmd.Flags().Int64("limit", 20, "Limit")
	SingleAdminGetChannelCmd.Flags().Int64("offset", 0, "Offset")
}
