// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package clients

import (
	"encoding/json"
	"log/slog"

	iam "github.com/AccelByte/accelbyte-go-modular-sdk/iam-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/iam-sdk/pkg/iamclient/clients"
	"github.com/AccelByte/accelbyte-go-modular-sdk/iam-sdk/pkg/iamclientmodels"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// CreateClientByNamespaceCmd represents the CreateClientByNamespace command
var CreateClientByNamespaceCmd = &cobra.Command{
	Use:   "createClientByNamespace",
	Short: "Create client by namespace",
	Long:  `Create client by namespace`,
	RunE: func(cmd *cobra.Command, args []string) error {
		clientsService := &iam.ClientsService{
			Client:          iam.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *iamclientmodels.ClientmodelClientCreateRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &clients.CreateClientByNamespaceParams{
			Body:      body,
			Namespace: namespace,
		}
		created, errCreated := clientsService.CreateClientByNamespaceShort(input)
		if errCreated != nil {
			slog.Error("operation failed", "error", errCreated)

			return errCreated
		}

		slog.Info("Response CLI success", "response", created)

		return nil
	},
}

func init() {
	CreateClientByNamespaceCmd.Flags().String("body", "", "Body")
	_ = CreateClientByNamespaceCmd.MarkFlagRequired("body")
	CreateClientByNamespaceCmd.Flags().String("namespace", "", "Namespace")
	_ = CreateClientByNamespaceCmd.MarkFlagRequired("namespace")
}
