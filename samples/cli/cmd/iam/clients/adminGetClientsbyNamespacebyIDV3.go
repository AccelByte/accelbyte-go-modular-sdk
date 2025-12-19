// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package clients

import (
	"log/slog"

	iam "github.com/AccelByte/accelbyte-go-modular-sdk/iam-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/iam-sdk/pkg/iamclient/clients"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// AdminGetClientsbyNamespacebyIDV3Cmd represents the AdminGetClientsbyNamespacebyIDV3 command
var AdminGetClientsbyNamespacebyIDV3Cmd = &cobra.Command{
	Use:   "adminGetClientsbyNamespacebyIDV3",
	Short: "Admin get clientsby namespaceby IDV3",
	Long:  `Admin get clientsby namespaceby IDV3`,
	RunE: func(cmd *cobra.Command, args []string) error {
		clientsService := &iam.ClientsService{
			Client:          iam.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		clientId, _ := cmd.Flags().GetString("clientId")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &clients.AdminGetClientsbyNamespacebyIDV3Params{
			ClientID:  clientId,
			Namespace: namespace,
		}
		ok, errOK := clientsService.AdminGetClientsbyNamespacebyIDV3Short(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	AdminGetClientsbyNamespacebyIDV3Cmd.Flags().String("clientId", "", "Client id")
	_ = AdminGetClientsbyNamespacebyIDV3Cmd.MarkFlagRequired("clientId")
	AdminGetClientsbyNamespacebyIDV3Cmd.Flags().String("namespace", "", "Namespace")
	_ = AdminGetClientsbyNamespacebyIDV3Cmd.MarkFlagRequired("namespace")
}
