// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package agreementWithNamespace

import (
	legal "github.com/AccelByte/accelbyte-go-modular-sdk/legal-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/legal-sdk/pkg/legalclient/agreement_with_namespace"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// InitiateExportAgreementsToCSVCmd represents the InitiateExportAgreementsToCSV command
var InitiateExportAgreementsToCSVCmd = &cobra.Command{
	Use:   "initiateExportAgreementsToCSV",
	Short: "Initiate export agreements to CSV",
	Long:  `Initiate export agreements to CSV`,
	RunE: func(cmd *cobra.Command, args []string) error {
		agreementWithNamespaceService := &legal.AgreementWithNamespaceService{
			Client:          legal.NewLegalClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		policyVersionId, _ := cmd.Flags().GetString("policyVersionId")
		start, _ := cmd.Flags().GetString("start")
		end, _ := cmd.Flags().GetString("end")
		input := &agreement_with_namespace.InitiateExportAgreementsToCSVParams{
			Namespace:       namespace,
			End:             &end,
			PolicyVersionID: policyVersionId,
			Start:           start,
		}
		ok, errOK := agreementWithNamespaceService.InitiateExportAgreementsToCSVShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	InitiateExportAgreementsToCSVCmd.Flags().String("namespace", "", "Namespace")
	_ = InitiateExportAgreementsToCSVCmd.MarkFlagRequired("namespace")
	InitiateExportAgreementsToCSVCmd.Flags().String("end", "", "End")
	InitiateExportAgreementsToCSVCmd.Flags().String("policyVersionId", "", "Policy version id")
	_ = InitiateExportAgreementsToCSVCmd.MarkFlagRequired("policyVersionId")
	InitiateExportAgreementsToCSVCmd.Flags().String("start", "", "Start")
	_ = InitiateExportAgreementsToCSVCmd.MarkFlagRequired("start")
}
