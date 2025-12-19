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

// GetDLCItemConfigCmd represents the GetDLCItemConfig command
var GetDLCItemConfigCmd = &cobra.Command{
	Use:   "getDLCItemConfig",
	Short: "Get DLC item config",
	Long:  `Get DLC item config`,
	RunE: func(cmd *cobra.Command, args []string) error {
		dlcService := &platform.DLCService{
			Client:          platform.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &dlc.GetDLCItemConfigParams{
			Namespace: namespace,
		}
		ok, errOK := dlcService.GetDLCItemConfigShort(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	GetDLCItemConfigCmd.Flags().String("namespace", "", "Namespace")
	_ = GetDLCItemConfigCmd.MarkFlagRequired("namespace")
}
