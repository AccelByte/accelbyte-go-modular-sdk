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

// FleetCreateCmd represents the FleetCreate command
var FleetCreateCmd = &cobra.Command{
	Use:   "fleetCreate",
	Short: "Fleet create",
	Long:  `Fleet create`,
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
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &fleets.FleetCreateParams{
			Body:      body,
			Namespace: namespace,
		}
		created, errCreated := fleetsService.FleetCreateShort(input)
		if errCreated != nil {
			slog.Error("operation failed", "error", errCreated)

			return errCreated
		}

		slog.Info("Response CLI success", "response", created)

		return nil
	},
}

func init() {
	FleetCreateCmd.Flags().String("body", "", "Body")
	_ = FleetCreateCmd.MarkFlagRequired("body")
	FleetCreateCmd.Flags().String("namespace", "", "Namespace")
	_ = FleetCreateCmd.MarkFlagRequired("namespace")
}
