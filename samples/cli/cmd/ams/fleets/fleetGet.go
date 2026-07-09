// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package fleets

import (
	"log/slog"

	ams "github.com/AccelByte/accelbyte-go-modular-sdk/ams-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/ams-sdk/pkg/amsclient/fleets"
	sdkrepository "github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/repository"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// FleetGetCmd represents the FleetGet command
var FleetGetCmd = &cobra.Command{
	Use:   "fleetGet",
	Short: "Fleet get",
	Long:  `Fleet get`,
	RunE: func(cmd *cobra.Command, args []string) error {
		fleetsService := &ams.FleetsService{
			Client: ams.NewAmsHttpClient(&repository.ConfigRepositoryImpl{}),
			Session: sdkrepository.Session{
				TokenRepository: &repository.TokenRepositoryImpl{},
			},
		}
		fleetID, _ := cmd.Flags().GetString("fleetID")
		namespace, _ := cmd.Flags().GetString("namespace")
		includeInactiveRegions, _ := cmd.Flags().GetBool("includeInactiveRegions")
		input := &fleets.FleetGetParams{
			FleetID:                fleetID,
			Namespace:              namespace,
			IncludeInactiveRegions: &includeInactiveRegions,
		}
		ok, errOK := fleetsService.FleetGetShort(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	FleetGetCmd.Flags().String("fleetID", "", "Fleet ID")
	_ = FleetGetCmd.MarkFlagRequired("fleetID")
	FleetGetCmd.Flags().String("namespace", "", "Namespace")
	_ = FleetGetCmd.MarkFlagRequired("namespace")
	FleetGetCmd.Flags().Bool("includeInactiveRegions", false, "Include inactive regions")
}
