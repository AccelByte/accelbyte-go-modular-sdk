// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package oAuth20

import (
	"log/slog"

	iam "github.com/AccelByte/accelbyte-go-modular-sdk/iam-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/iam-sdk/pkg/iamclient/o_auth2_0"
	sdkrepository "github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/repository"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// GetAuthorizationServerMetadataWithNamespaceCmd represents the GetAuthorizationServerMetadataWithNamespace command
var GetAuthorizationServerMetadataWithNamespaceCmd = &cobra.Command{
	Use:   "getAuthorizationServerMetadataWithNamespace",
	Short: "Get authorization server metadata with namespace",
	Long:  `Get authorization server metadata with namespace`,
	RunE: func(cmd *cobra.Command, args []string) error {
		oAuth20Service := &iam.OAuth20Service{
			Client: iam.NewIamHttpClient(&repository.ConfigRepositoryImpl{}),
			Session: sdkrepository.Session{
				TokenRepository: &repository.TokenRepositoryImpl{},
			},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &o_auth2_0.GetAuthorizationServerMetadataWithNamespaceParams{
			Namespace: namespace,
		}
		ok, errOK := oAuth20Service.GetAuthorizationServerMetadataWithNamespaceShort(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	GetAuthorizationServerMetadataWithNamespaceCmd.Flags().String("namespace", "", "Namespace")
	_ = GetAuthorizationServerMetadataWithNamespaceCmd.MarkFlagRequired("namespace")
}
