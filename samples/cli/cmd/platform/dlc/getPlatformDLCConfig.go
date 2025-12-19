// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package dlc

import (
	"log/slog"

	platform "github.com/AccelByte/accelbyte-go-modular-sdk/platform-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/platform-sdk/pkg/platformclient/dlc"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// GetPlatformDLCConfigCmd represents the GetPlatformDLCConfig command
var GetPlatformDLCConfigCmd = &cobra.Command{
	Use:   "getPlatformDLCConfig",
	Short: "Get platform DLC config",
	Long:  `Get platform DLC config`,
	RunE: func(cmd *cobra.Command, args []string) error {
		dlcService := &platform.DLCService{
			Client:          platform.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &dlc.GetPlatformDLCConfigParams{
			Namespace: namespace,
		}
		ok, errOK := dlcService.GetPlatformDLCConfigShort(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	GetPlatformDLCConfigCmd.Flags().String("namespace", "", "Namespace")
	_ = GetPlatformDLCConfigCmd.MarkFlagRequired("namespace")
}
