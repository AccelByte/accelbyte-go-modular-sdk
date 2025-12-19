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

// FleetClaimByKeysCmd represents the FleetClaimByKeys command
var FleetClaimByKeysCmd = &cobra.Command{
	Use:   "fleetClaimByKeys",
	Short: "Fleet claim by keys",
	Long:  `Fleet claim by keys`,
	RunE: func(cmd *cobra.Command, args []string) error {
		fleetsService := &ams.FleetsService{
			Client:          ams.NewAmsClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *amsclientmodels.APIFleetClaimByKeysReq
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &fleets.FleetClaimByKeysParams{
			Body:      body,
			Namespace: namespace,
		}
		ok, errOK := fleetsService.FleetClaimByKeysShort(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	FleetClaimByKeysCmd.Flags().String("body", "", "Body")
	_ = FleetClaimByKeysCmd.MarkFlagRequired("body")
	FleetClaimByKeysCmd.Flags().String("namespace", "", "Namespace")
	_ = FleetClaimByKeysCmd.MarkFlagRequired("namespace")
}
