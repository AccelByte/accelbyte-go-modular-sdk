// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package artifacts

import (
	"log/slog"

	ams "github.com/AccelByte/accelbyte-go-modular-sdk/ams-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/ams-sdk/pkg/amsclient/artifacts"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// FleetArtifactSamplingRulesGetCmd represents the FleetArtifactSamplingRulesGet command
var FleetArtifactSamplingRulesGetCmd = &cobra.Command{
	Use:   "fleetArtifactSamplingRulesGet",
	Short: "Fleet artifact sampling rules get",
	Long:  `Fleet artifact sampling rules get`,
	RunE: func(cmd *cobra.Command, args []string) error {
		artifactsService := &ams.ArtifactsService{
			Client:          ams.NewAmsClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		fleetID, _ := cmd.Flags().GetString("fleetID")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &artifacts.FleetArtifactSamplingRulesGetParams{
			FleetID:   fleetID,
			Namespace: namespace,
		}
		ok, errOK := artifactsService.FleetArtifactSamplingRulesGetShort(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	FleetArtifactSamplingRulesGetCmd.Flags().String("fleetID", "", "Fleet ID")
	_ = FleetArtifactSamplingRulesGetCmd.MarkFlagRequired("fleetID")
	FleetArtifactSamplingRulesGetCmd.Flags().String("namespace", "", "Namespace")
	_ = FleetArtifactSamplingRulesGetCmd.MarkFlagRequired("namespace")
}
