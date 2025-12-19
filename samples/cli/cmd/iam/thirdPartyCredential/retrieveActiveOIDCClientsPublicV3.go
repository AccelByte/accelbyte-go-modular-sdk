// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package thirdPartyCredential

import (
	"log/slog"

	iam "github.com/AccelByte/accelbyte-go-modular-sdk/iam-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/iam-sdk/pkg/iamclient/third_party_credential"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// RetrieveActiveOIDCClientsPublicV3Cmd represents the RetrieveActiveOIDCClientsPublicV3 command
var RetrieveActiveOIDCClientsPublicV3Cmd = &cobra.Command{
	Use:   "retrieveActiveOIDCClientsPublicV3",
	Short: "Retrieve active OIDC clients public V3",
	Long:  `Retrieve active OIDC clients public V3`,
	RunE: func(cmd *cobra.Command, args []string) error {
		thirdPartyCredentialService := &iam.ThirdPartyCredentialService{
			Client:          iam.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		clientId, _ := cmd.Flags().GetString("clientId")
		input := &third_party_credential.RetrieveActiveOIDCClientsPublicV3Params{
			Namespace: namespace,
			ClientID:  clientId,
		}
		ok, errOK := thirdPartyCredentialService.RetrieveActiveOIDCClientsPublicV3Short(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	RetrieveActiveOIDCClientsPublicV3Cmd.Flags().String("namespace", "", "Namespace")
	_ = RetrieveActiveOIDCClientsPublicV3Cmd.MarkFlagRequired("namespace")
	RetrieveActiveOIDCClientsPublicV3Cmd.Flags().String("clientId", "", "Client id")
	_ = RetrieveActiveOIDCClientsPublicV3Cmd.MarkFlagRequired("clientId")
}
