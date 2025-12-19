// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package watchdogs

import (
	"log/slog"

	ams "github.com/AccelByte/accelbyte-go-modular-sdk/ams-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/ams-sdk/pkg/amsclient/watchdogs"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// LocalWatchdogConnectCmd represents the LocalWatchdogConnect command
var LocalWatchdogConnectCmd = &cobra.Command{
	Use:   "localWatchdogConnect",
	Short: "Local watchdog connect",
	Long:  `Local watchdog connect`,
	RunE: func(cmd *cobra.Command, args []string) error {
		watchdogsService := &ams.WatchdogsService{
			Client:          ams.NewAmsClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		watchdogID, _ := cmd.Flags().GetString("watchdogID")
		input := &watchdogs.LocalWatchdogConnectParams{
			Namespace:  namespace,
			WatchdogID: watchdogID,
		}
		errOK := watchdogsService.LocalWatchdogConnectShort(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success.")

		return nil
	},
}

func init() {
	LocalWatchdogConnectCmd.Flags().String("namespace", "", "Namespace")
	_ = LocalWatchdogConnectCmd.MarkFlagRequired("namespace")
	LocalWatchdogConnectCmd.Flags().String("watchdogID", "", "Watchdog ID")
	_ = LocalWatchdogConnectCmd.MarkFlagRequired("watchdogID")
}
