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

// UpdateClientPermissionCmd represents the UpdateClientPermission command
var UpdateClientPermissionCmd = &cobra.Command{
	Use:   "updateClientPermission",
	Short: "Update client permission",
	Long:  `Update client permission`,
	RunE: func(cmd *cobra.Command, args []string) error {
		clientsService := &iam.ClientsService{
			Client:          iam.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *iamclientmodels.AccountcommonClientPermissions
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		clientId, _ := cmd.Flags().GetString("clientId")
		input := &clients.UpdateClientPermissionParams{
			Body:     body,
			ClientID: clientId,
		}
		errNoContent := clientsService.UpdateClientPermissionShort(input)
		if errNoContent != nil {
			slog.Error("operation failed", "error", errNoContent)

			return errNoContent
		}

		slog.Info("Response CLI success.")

		return nil
	},
}

func init() {
	UpdateClientPermissionCmd.Flags().String("body", "", "Body")
	_ = UpdateClientPermissionCmd.MarkFlagRequired("body")
	UpdateClientPermissionCmd.Flags().String("clientId", "", "Client id")
	_ = UpdateClientPermissionCmd.MarkFlagRequired("clientId")
}
