// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package appUI

import (
	"log/slog"

	csm "github.com/AccelByte/accelbyte-go-modular-sdk/csm-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/csm-sdk/pkg/csmclient/app_ui"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// DeleteAppUICmd represents the DeleteAppUI command
var DeleteAppUICmd = &cobra.Command{
	Use:   "deleteAppUI",
	Short: "Delete app UI",
	Long:  `Delete app UI`,
	RunE: func(cmd *cobra.Command, args []string) error {
		appUIService := &csm.AppUIService{
			Client:          csm.NewCsmClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		appUiName, _ := cmd.Flags().GetString("appUiName")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &app_ui.DeleteAppUIParams{
			AppUIName: appUiName,
			Namespace: namespace,
		}
		errNoContent := appUIService.DeleteAppUIShort(input)
		if errNoContent != nil {
			slog.Error("operation failed", "error", errNoContent)

			return errNoContent
		}

		slog.Info("Response CLI success.")

		return nil
	},
}

func init() {
	DeleteAppUICmd.Flags().String("appUiName", "", "App ui name")
	_ = DeleteAppUICmd.MarkFlagRequired("appUiName")
	DeleteAppUICmd.Flags().String("namespace", "", "Namespace")
	_ = DeleteAppUICmd.MarkFlagRequired("namespace")
}
