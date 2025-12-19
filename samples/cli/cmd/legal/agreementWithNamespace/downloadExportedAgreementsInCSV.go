// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package agreementWithNamespace

import (
	"log/slog"

	legal "github.com/AccelByte/accelbyte-go-modular-sdk/legal-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/legal-sdk/pkg/legalclient/agreement_with_namespace"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// DownloadExportedAgreementsInCSVCmd represents the DownloadExportedAgreementsInCSV command
var DownloadExportedAgreementsInCSVCmd = &cobra.Command{
	Use:   "downloadExportedAgreementsInCSV",
	Short: "Download exported agreements in CSV",
	Long:  `Download exported agreements in CSV`,
	RunE: func(cmd *cobra.Command, args []string) error {
		agreementWithNamespaceService := &legal.AgreementWithNamespaceService{
			Client:          legal.NewLegalClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		exportId, _ := cmd.Flags().GetString("exportId")
		input := &agreement_with_namespace.DownloadExportedAgreementsInCSVParams{
			Namespace: namespace,
			ExportID:  exportId,
		}
		ok, errOK := agreementWithNamespaceService.DownloadExportedAgreementsInCSVShort(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	DownloadExportedAgreementsInCSVCmd.Flags().String("namespace", "", "Namespace")
	_ = DownloadExportedAgreementsInCSVCmd.MarkFlagRequired("namespace")
	DownloadExportedAgreementsInCSVCmd.Flags().String("exportId", "", "Export id")
	_ = DownloadExportedAgreementsInCSVCmd.MarkFlagRequired("exportId")
}
