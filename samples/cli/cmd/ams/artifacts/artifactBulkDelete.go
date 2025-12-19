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

// ArtifactBulkDeleteCmd represents the ArtifactBulkDelete command
var ArtifactBulkDeleteCmd = &cobra.Command{
	Use:   "artifactBulkDelete",
	Short: "Artifact bulk delete",
	Long:  `Artifact bulk delete`,
	RunE: func(cmd *cobra.Command, args []string) error {
		artifactsService := &ams.ArtifactsService{
			Client:          ams.NewAmsClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		artifactType, _ := cmd.Flags().GetString("artifactType")
		fleetId, _ := cmd.Flags().GetString("fleetId")
		uploadedBefore, _ := cmd.Flags().GetString("uploadedBefore")
		input := &artifacts.ArtifactBulkDeleteParams{
			Namespace:      namespace,
			ArtifactType:   &artifactType,
			FleetID:        &fleetId,
			UploadedBefore: &uploadedBefore,
		}
		errAccepted := artifactsService.ArtifactBulkDeleteShort(input)
		if errAccepted != nil {
			slog.Error("operation failed", "error", errAccepted)

			return errAccepted
		}

		slog.Info("Response CLI success.")

		return nil
	},
}

func init() {
	ArtifactBulkDeleteCmd.Flags().String("namespace", "", "Namespace")
	_ = ArtifactBulkDeleteCmd.MarkFlagRequired("namespace")
	ArtifactBulkDeleteCmd.Flags().String("artifactType", "", "Artifact type")
	ArtifactBulkDeleteCmd.Flags().String("fleetId", "", "Fleet id")
	ArtifactBulkDeleteCmd.Flags().String("uploadedBefore", "", "Uploaded before")
}
