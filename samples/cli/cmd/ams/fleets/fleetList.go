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

// FleetListCmd represents the FleetList command
var FleetListCmd = &cobra.Command{
	Use:   "fleetList",
	Short: "Fleet list",
	Long:  `Fleet list`,
	RunE: func(cmd *cobra.Command, args []string) error {
		fleetsService := &ams.FleetsService{
			Client:          ams.NewAmsClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		active, _ := cmd.Flags().GetBool("active")
		count, _ := cmd.Flags().GetInt64("count")
		name, _ := cmd.Flags().GetString("name")
		offset, _ := cmd.Flags().GetInt64("offset")
		region, _ := cmd.Flags().GetString("region")
		sortBy, _ := cmd.Flags().GetString("sortBy")
		sortDirection, _ := cmd.Flags().GetString("sortDirection")
		input := &fleets.FleetListParams{
			Namespace:     namespace,
			Active:        &active,
			Count:         &count,
			Name:          &name,
			Offset:        &offset,
			Region:        &region,
			SortBy:        &sortBy,
			SortDirection: &sortDirection,
		}
		ok, errOK := fleetsService.FleetListShort(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	FleetListCmd.Flags().String("namespace", "", "Namespace")
	_ = FleetListCmd.MarkFlagRequired("namespace")
	FleetListCmd.Flags().Bool("active", false, "Active")
	FleetListCmd.Flags().Int64("count", 1, "Count")
	FleetListCmd.Flags().String("name", "", "Name")
	FleetListCmd.Flags().Int64("offset", 0, "Offset")
	FleetListCmd.Flags().String("region", "", "Region")
	FleetListCmd.Flags().String("sortBy", "", "Sort by")
	FleetListCmd.Flags().String("sortDirection", "", "Sort direction")
}
