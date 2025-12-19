// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package fleets

import (
	"log/slog"

	ams "github.com/AccelByte/accelbyte-go-modular-sdk/ams-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/ams-sdk/pkg/amsclient/fleets"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// FleetDeleteCmd represents the FleetDelete command
var FleetDeleteCmd = &cobra.Command{
	Use:   "fleetDelete",
	Short: "Fleet delete",
	Long:  `Fleet delete`,
	RunE: func(cmd *cobra.Command, args []string) error {
		fleetsService := &ams.FleetsService{
			Client:          ams.NewAmsClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		fleetID, _ := cmd.Flags().GetString("fleetID")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &fleets.FleetDeleteParams{
			FleetID:   fleetID,
			Namespace: namespace,
		}
		errNoContent := fleetsService.FleetDeleteShort(input)
		if errNoContent != nil {
			slog.Error("operation failed", "error", errNoContent)

			return errNoContent
		}

		slog.Info("Response CLI success.")

		return nil
	},
}

func init() {
	FleetDeleteCmd.Flags().String("fleetID", "", "Fleet ID")
	_ = FleetDeleteCmd.MarkFlagRequired("fleetID")
	FleetDeleteCmd.Flags().String("namespace", "", "Namespace")
	_ = FleetDeleteCmd.MarkFlagRequired("namespace")
}
