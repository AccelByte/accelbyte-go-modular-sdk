// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package baseLegalPoliciesWithNamespace

import (
	legal "github.com/AccelByte/accelbyte-go-modular-sdk/legal-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/legal-sdk/pkg/legalclient/base_legal_policies_with_namespace"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// RetrieveAllLegalPoliciesByNamespaceCmd represents the RetrieveAllLegalPoliciesByNamespace command
var RetrieveAllLegalPoliciesByNamespaceCmd = &cobra.Command{
	Use:   "retrieveAllLegalPoliciesByNamespace",
	Short: "Retrieve all legal policies by namespace",
	Long:  `Retrieve all legal policies by namespace`,
	RunE: func(cmd *cobra.Command, args []string) error {
		baseLegalPoliciesWithNamespaceService := &legal.BaseLegalPoliciesWithNamespaceService{
			Client:          legal.NewLegalClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		visibleOnly, _ := cmd.Flags().GetBool("visibleOnly")
		input := &base_legal_policies_with_namespace.RetrieveAllLegalPoliciesByNamespaceParams{
			Namespace:   namespace,
			VisibleOnly: &visibleOnly,
		}
		ok, errOK := baseLegalPoliciesWithNamespaceService.RetrieveAllLegalPoliciesByNamespaceShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	RetrieveAllLegalPoliciesByNamespaceCmd.Flags().String("namespace", "", "Namespace")
	_ = RetrieveAllLegalPoliciesByNamespaceCmd.MarkFlagRequired("namespace")
	RetrieveAllLegalPoliciesByNamespaceCmd.Flags().Bool("visibleOnly", false, "Visible only")
}
