// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package wallet

import (
	"log/slog"

	platform "github.com/AccelByte/accelbyte-go-modular-sdk/platform-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/platform-sdk/pkg/platformclient/wallet"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// ResetPlatformWalletConfigCmd represents the ResetPlatformWalletConfig command
var ResetPlatformWalletConfigCmd = &cobra.Command{
	Use:   "resetPlatformWalletConfig",
	Short: "Reset platform wallet config",
	Long:  `Reset platform wallet config`,
	RunE: func(cmd *cobra.Command, args []string) error {
		walletService := &platform.WalletService{
			Client:          platform.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		platform, _ := cmd.Flags().GetString("platform")
		input := &wallet.ResetPlatformWalletConfigParams{
			Namespace: namespace,
			Platform:  platform,
		}
		ok, errOK := walletService.ResetPlatformWalletConfigShort(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	ResetPlatformWalletConfigCmd.Flags().String("namespace", "", "Namespace")
	_ = ResetPlatformWalletConfigCmd.MarkFlagRequired("namespace")
	ResetPlatformWalletConfigCmd.Flags().String("platform", "", "Platform")
	_ = ResetPlatformWalletConfigCmd.MarkFlagRequired("platform")
}
