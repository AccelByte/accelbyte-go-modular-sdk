// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package users

import (
	"encoding/json"
	"log/slog"

	iam "github.com/AccelByte/accelbyte-go-modular-sdk/iam-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/iam-sdk/pkg/iamclient/users"
	"github.com/AccelByte/accelbyte-go-modular-sdk/iam-sdk/pkg/iamclientmodels"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// AdminBulkUpdateUsersV3Cmd represents the AdminBulkUpdateUsersV3 command
var AdminBulkUpdateUsersV3Cmd = &cobra.Command{
	Use:   "adminBulkUpdateUsersV3",
	Short: "Admin bulk update users V3",
	Long:  `Admin bulk update users V3`,
	RunE: func(cmd *cobra.Command, args []string) error {
		usersService := &iam.UsersService{
			Client:          iam.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *iamclientmodels.ModelUsersUpdateRequestV3
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &users.AdminBulkUpdateUsersV3Params{
			Body:      body,
			Namespace: namespace,
		}
		errNoContent := usersService.AdminBulkUpdateUsersV3Short(input)
		if errNoContent != nil {
			slog.Error("operation failed", "error", errNoContent)

			return errNoContent
		}

		slog.Info("Response CLI success.")

		return nil
	},
}

func init() {
	AdminBulkUpdateUsersV3Cmd.Flags().String("body", "", "Body")
	_ = AdminBulkUpdateUsersV3Cmd.MarkFlagRequired("body")
	AdminBulkUpdateUsersV3Cmd.Flags().String("namespace", "", "Namespace")
	_ = AdminBulkUpdateUsersV3Cmd.MarkFlagRequired("namespace")
}
