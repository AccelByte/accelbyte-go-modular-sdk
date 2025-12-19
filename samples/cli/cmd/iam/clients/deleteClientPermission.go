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

// DeleteClientPermissionCmd represents the DeleteClientPermission command
var DeleteClientPermissionCmd = &cobra.Command{
	Use:   "deleteClientPermission",
	Short: "Delete client permission",
	Long:  `Delete client permission`,
	RunE: func(cmd *cobra.Command, args []string) error {
		clientsService := &iam.ClientsService{
			Client:          iam.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		action, _ := cmd.Flags().GetInt64("action")
		clientId, _ := cmd.Flags().GetString("clientId")
		resource, _ := cmd.Flags().GetString("resource")
		input := &clients.DeleteClientPermissionParams{
			Action:   action,
			ClientID: clientId,
			Resource: resource,
		}
		errNoContent := clientsService.DeleteClientPermissionShort(input)
		if errNoContent != nil {
			slog.Error("operation failed", "error", errNoContent)

			return errNoContent
		}

		slog.Info("Response CLI success.")

		return nil
	},
}

func init() {
	DeleteClientPermissionCmd.Flags().Int64("action", -1, "Action")
	_ = DeleteClientPermissionCmd.MarkFlagRequired("action")
	DeleteClientPermissionCmd.Flags().String("clientId", "", "Client id")
	_ = DeleteClientPermissionCmd.MarkFlagRequired("clientId")
	DeleteClientPermissionCmd.Flags().String("resource", "", "Resource")
	_ = DeleteClientPermissionCmd.MarkFlagRequired("resource")
}
