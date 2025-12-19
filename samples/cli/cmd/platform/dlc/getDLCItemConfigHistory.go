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

// GetDLCItemConfigHistoryCmd represents the GetDLCItemConfigHistory command
var GetDLCItemConfigHistoryCmd = &cobra.Command{
	Use:   "getDLCItemConfigHistory",
	Short: "Get DLC item config history",
	Long:  `Get DLC item config history`,
	RunE: func(cmd *cobra.Command, args []string) error {
		dlcService := &platform.DLCService{
			Client:          platform.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		dlcId, _ := cmd.Flags().GetString("dlcId")
		input := &dlc.GetDLCItemConfigHistoryParams{
			Namespace: namespace,
			DLCID:     dlcId,
		}
		ok, errOK := dlcService.GetDLCItemConfigHistoryShort(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	GetDLCItemConfigHistoryCmd.Flags().String("namespace", "", "Namespace")
	_ = GetDLCItemConfigHistoryCmd.MarkFlagRequired("namespace")
	GetDLCItemConfigHistoryCmd.Flags().String("dlcId", "", "Dlc id")
	_ = GetDLCItemConfigHistoryCmd.MarkFlagRequired("dlcId")
}
