// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package slotConfig

import (
	"log/slog"

	social "github.com/AccelByte/accelbyte-go-modular-sdk/social-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/social-sdk/pkg/socialclient/slot_config"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// GetUserSlotConfigCmd represents the GetUserSlotConfig command
var GetUserSlotConfigCmd = &cobra.Command{
	Use:   "getUserSlotConfig",
	Short: "Get user slot config",
	Long:  `Get user slot config`,
	RunE: func(cmd *cobra.Command, args []string) error {
		slotConfigService := &social.SlotConfigService{
			Client:          social.NewSocialClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &slot_config.GetUserSlotConfigParams{
			Namespace: namespace,
			UserID:    userId,
		}
		ok, errOK := slotConfigService.GetUserSlotConfigShort(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	GetUserSlotConfigCmd.Flags().String("namespace", "", "Namespace")
	_ = GetUserSlotConfigCmd.MarkFlagRequired("namespace")
	GetUserSlotConfigCmd.Flags().String("userId", "", "User id")
	_ = GetUserSlotConfigCmd.MarkFlagRequired("userId")
}
