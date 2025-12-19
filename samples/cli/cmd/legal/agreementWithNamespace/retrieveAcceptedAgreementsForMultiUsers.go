// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package agreementWithNamespace

import (
	"encoding/json"
	"log/slog"

	legal "github.com/AccelByte/accelbyte-go-modular-sdk/legal-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/legal-sdk/pkg/legalclient/agreement_with_namespace"
	"github.com/AccelByte/accelbyte-go-modular-sdk/legal-sdk/pkg/legalclientmodels"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// RetrieveAcceptedAgreementsForMultiUsersCmd represents the RetrieveAcceptedAgreementsForMultiUsers command
var RetrieveAcceptedAgreementsForMultiUsersCmd = &cobra.Command{
	Use:   "retrieveAcceptedAgreementsForMultiUsers",
	Short: "Retrieve accepted agreements for multi users",
	Long:  `Retrieve accepted agreements for multi users`,
	RunE: func(cmd *cobra.Command, args []string) error {
		agreementWithNamespaceService := &legal.AgreementWithNamespaceService{
			Client:          legal.NewLegalClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		bodyString := cmd.Flag("body").Value.String()
		var body *legalclientmodels.UsersAgreementsRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		input := &agreement_with_namespace.RetrieveAcceptedAgreementsForMultiUsersParams{
			Body:      body,
			Namespace: namespace,
		}
		ok, errOK := agreementWithNamespaceService.RetrieveAcceptedAgreementsForMultiUsersShort(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	RetrieveAcceptedAgreementsForMultiUsersCmd.Flags().String("body", "", "Body")
	RetrieveAcceptedAgreementsForMultiUsersCmd.Flags().String("namespace", "", "Namespace")
	_ = RetrieveAcceptedAgreementsForMultiUsersCmd.MarkFlagRequired("namespace")
}
