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

// ArtifactDeleteCmd represents the ArtifactDelete command
var ArtifactDeleteCmd = &cobra.Command{
	Use:   "artifactDelete",
	Short: "Artifact delete",
	Long:  `Artifact delete`,
	RunE: func(cmd *cobra.Command, args []string) error {
		artifactsService := &ams.ArtifactsService{
			Client:          ams.NewAmsClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		artifactID, _ := cmd.Flags().GetString("artifactID")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &artifacts.ArtifactDeleteParams{
			ArtifactID: artifactID,
			Namespace:  namespace,
		}
		errAccepted := artifactsService.ArtifactDeleteShort(input)
		if errAccepted != nil {
			slog.Error("operation failed", "error", errAccepted)

			return errAccepted
		}

		slog.Info("Response CLI success.")

		return nil
	},
}

func init() {
	ArtifactDeleteCmd.Flags().String("artifactID", "", "Artifact ID")
	_ = ArtifactDeleteCmd.MarkFlagRequired("artifactID")
	ArtifactDeleteCmd.Flags().String("namespace", "", "Namespace")
	_ = ArtifactDeleteCmd.MarkFlagRequired("namespace")
}
