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

// ArtifactUsageGetCmd represents the ArtifactUsageGet command
var ArtifactUsageGetCmd = &cobra.Command{
	Use:   "artifactUsageGet",
	Short: "Artifact usage get",
	Long:  `Artifact usage get`,
	RunE: func(cmd *cobra.Command, args []string) error {
		artifactsService := &ams.ArtifactsService{
			Client:          ams.NewAmsClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &artifacts.ArtifactUsageGetParams{
			Namespace: namespace,
		}
		ok, errOK := artifactsService.ArtifactUsageGetShort(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	ArtifactUsageGetCmd.Flags().String("namespace", "", "Namespace")
	_ = ArtifactUsageGetCmd.MarkFlagRequired("namespace")
}
