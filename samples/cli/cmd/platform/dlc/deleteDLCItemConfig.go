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

// DeleteDLCItemConfigCmd represents the DeleteDLCItemConfig command
var DeleteDLCItemConfigCmd = &cobra.Command{
	Use:   "deleteDLCItemConfig",
	Short: "Delete DLC item config",
	Long:  `Delete DLC item config`,
	RunE: func(cmd *cobra.Command, args []string) error {
		dlcService := &platform.DLCService{
			Client:          platform.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &dlc.DeleteDLCItemConfigParams{
			Namespace: namespace,
		}
		errNoContent := dlcService.DeleteDLCItemConfigShort(input)
		if errNoContent != nil {
			slog.Error("operation failed", "error", errNoContent)

			return errNoContent
		}

		slog.Info("Response CLI success.")

		return nil
	},
}

func init() {
	DeleteDLCItemConfigCmd.Flags().String("namespace", "", "Namespace")
	_ = DeleteDLCItemConfigCmd.MarkFlagRequired("namespace")
}
