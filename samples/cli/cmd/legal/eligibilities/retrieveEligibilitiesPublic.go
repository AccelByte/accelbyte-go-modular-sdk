// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package eligibilities

import (
	"log/slog"

	legal "github.com/AccelByte/accelbyte-go-modular-sdk/legal-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/legal-sdk/pkg/legalclient/eligibilities"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// RetrieveEligibilitiesPublicCmd represents the RetrieveEligibilitiesPublic command
var RetrieveEligibilitiesPublicCmd = &cobra.Command{
	Use:   "retrieveEligibilitiesPublic",
	Short: "Retrieve eligibilities public",
	Long:  `Retrieve eligibilities public`,
	RunE: func(cmd *cobra.Command, args []string) error {
		eligibilitiesService := &legal.EligibilitiesService{
			Client:          legal.NewLegalClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &eligibilities.RetrieveEligibilitiesPublicParams{
			Namespace: namespace,
		}
		ok, errOK := eligibilitiesService.RetrieveEligibilitiesPublicShort(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	RetrieveEligibilitiesPublicCmd.Flags().String("namespace", "", "Namespace")
	_ = RetrieveEligibilitiesPublicCmd.MarkFlagRequired("namespace")
}
