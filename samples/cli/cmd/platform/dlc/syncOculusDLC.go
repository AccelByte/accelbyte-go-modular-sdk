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

// SyncOculusDLCCmd represents the SyncOculusDLC command
var SyncOculusDLCCmd = &cobra.Command{
	Use:   "syncOculusDLC",
	Short: "Sync oculus DLC",
	Long:  `Sync oculus DLC`,
	RunE: func(cmd *cobra.Command, args []string) error {
		dlcService := &platform.DLCService{
			Client:          platform.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &dlc.SyncOculusDLCParams{
			Namespace: namespace,
			UserID:    userId,
		}
		errNoContent := dlcService.SyncOculusDLCShort(input)
		if errNoContent != nil {
			slog.Error("operation failed", "error", errNoContent)

			return errNoContent
		}

		slog.Info("Response CLI success.")

		return nil
	},
}

func init() {
	SyncOculusDLCCmd.Flags().String("namespace", "", "Namespace")
	_ = SyncOculusDLCCmd.MarkFlagRequired("namespace")
	SyncOculusDLCCmd.Flags().String("userId", "", "User id")
	_ = SyncOculusDLCCmd.MarkFlagRequired("userId")
}
