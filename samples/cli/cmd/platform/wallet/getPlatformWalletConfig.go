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

// GetPlatformWalletConfigCmd represents the GetPlatformWalletConfig command
var GetPlatformWalletConfigCmd = &cobra.Command{
	Use:   "getPlatformWalletConfig",
	Short: "Get platform wallet config",
	Long:  `Get platform wallet config`,
	RunE: func(cmd *cobra.Command, args []string) error {
		walletService := &platform.WalletService{
			Client:          platform.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		platform, _ := cmd.Flags().GetString("platform")
		input := &wallet.GetPlatformWalletConfigParams{
			Namespace: namespace,
			Platform:  platform,
		}
		ok, errOK := walletService.GetPlatformWalletConfigShort(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	GetPlatformWalletConfigCmd.Flags().String("namespace", "", "Namespace")
	_ = GetPlatformWalletConfigCmd.MarkFlagRequired("namespace")
	GetPlatformWalletConfigCmd.Flags().String("platform", "", "Platform")
	_ = GetPlatformWalletConfigCmd.MarkFlagRequired("platform")
}
