// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package fleets

import (
	"encoding/json"
	"log/slog"

	ams "github.com/AccelByte/accelbyte-go-modular-sdk/ams-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/ams-sdk/pkg/amsclient/fleets"
	"github.com/AccelByte/accelbyte-go-modular-sdk/ams-sdk/pkg/amsclientmodels"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// FleetUpdateCmd represents the FleetUpdate command
var FleetUpdateCmd = &cobra.Command{
	Use:   "fleetUpdate",
	Short: "Fleet update",
	Long:  `Fleet update`,
	RunE: func(cmd *cobra.Command, args []string) error {
		fleetsService := &ams.FleetsService{
			Client:          ams.NewAmsClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *amsclientmodels.APIFleetParameters
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		fleetID, _ := cmd.Flags().GetString("fleetID")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &fleets.FleetUpdateParams{
			Body:      body,
			FleetID:   fleetID,
			Namespace: namespace,
		}
		errNoContent := fleetsService.FleetUpdateShort(input)
		if errNoContent != nil {
			slog.Error("operation failed", "error", errNoContent)

			return errNoContent
		}

		slog.Info("Response CLI success.")

		return nil
	},
}

func init() {
	FleetUpdateCmd.Flags().String("body", "", "Body")
	_ = FleetUpdateCmd.MarkFlagRequired("body")
	FleetUpdateCmd.Flags().String("fleetID", "", "Fleet ID")
	_ = FleetUpdateCmd.MarkFlagRequired("fleetID")
	FleetUpdateCmd.Flags().String("namespace", "", "Namespace")
	_ = FleetUpdateCmd.MarkFlagRequired("namespace")
}
