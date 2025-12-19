// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package view

import (
	"log/slog"

	platform "github.com/AccelByte/accelbyte-go-modular-sdk/platform-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/platform-sdk/pkg/platformclient/view"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// GetViewCmd represents the GetView command
var GetViewCmd = &cobra.Command{
	Use:   "getView",
	Short: "Get view",
	Long:  `Get view`,
	RunE: func(cmd *cobra.Command, args []string) error {
		viewService := &platform.ViewService{
			Client:          platform.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		viewId, _ := cmd.Flags().GetString("viewId")
		storeId, _ := cmd.Flags().GetString("storeId")
		input := &view.GetViewParams{
			Namespace: namespace,
			ViewID:    viewId,
			StoreID:   &storeId,
		}
		ok, errOK := viewService.GetViewShort(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	GetViewCmd.Flags().String("namespace", "", "Namespace")
	_ = GetViewCmd.MarkFlagRequired("namespace")
	GetViewCmd.Flags().String("viewId", "", "View id")
	_ = GetViewCmd.MarkFlagRequired("viewId")
	GetViewCmd.Flags().String("storeId", "", "Store id")
}
