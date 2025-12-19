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

// GetNamespaceSlotConfigCmd represents the GetNamespaceSlotConfig command
var GetNamespaceSlotConfigCmd = &cobra.Command{
	Use:   "getNamespaceSlotConfig",
	Short: "Get namespace slot config",
	Long:  `Get namespace slot config`,
	RunE: func(cmd *cobra.Command, args []string) error {
		slotConfigService := &social.SlotConfigService{
			Client:          social.NewSocialClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &slot_config.GetNamespaceSlotConfigParams{
			Namespace: namespace,
		}
		ok, errOK := slotConfigService.GetNamespaceSlotConfigShort(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	GetNamespaceSlotConfigCmd.Flags().String("namespace", "", "Namespace")
	_ = GetNamespaceSlotConfigCmd.MarkFlagRequired("namespace")
}
