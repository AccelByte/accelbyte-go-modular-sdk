// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package publicChannel

import (
	"log/slog"

	ugc "github.com/AccelByte/accelbyte-go-modular-sdk/ugc-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/ugc-sdk/pkg/ugcclient/public_channel"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// GetChannelsCmd represents the GetChannels command
var GetChannelsCmd = &cobra.Command{
	Use:   "getChannels",
	Short: "Get channels",
	Long:  `Get channels`,
	RunE: func(cmd *cobra.Command, args []string) error {
		publicChannelService := &ugc.PublicChannelService{
			Client:          ugc.NewUgcClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		limit, _ := cmd.Flags().GetInt64("limit")
		name, _ := cmd.Flags().GetString("name")
		offset, _ := cmd.Flags().GetInt64("offset")
		input := &public_channel.GetChannelsParams{
			Namespace: namespace,
			UserID:    userId,
			Limit:     &limit,
			Name:      &name,
			Offset:    &offset,
		}
		ok, errOK := publicChannelService.GetChannelsShort(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	GetChannelsCmd.Flags().String("namespace", "", "Namespace")
	_ = GetChannelsCmd.MarkFlagRequired("namespace")
	GetChannelsCmd.Flags().String("userId", "", "User id")
	_ = GetChannelsCmd.MarkFlagRequired("userId")
	GetChannelsCmd.Flags().Int64("limit", 20, "Limit")
	GetChannelsCmd.Flags().String("name", "", "Name")
	GetChannelsCmd.Flags().Int64("offset", 0, "Offset")
}
