// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package usersV4

import (
	"encoding/json"
	"log/slog"

	iam "github.com/AccelByte/accelbyte-go-modular-sdk/iam-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/iam-sdk/pkg/iamclient/users_v4"
	"github.com/AccelByte/accelbyte-go-modular-sdk/iam-sdk/pkg/iamclientmodels"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// AdminBulkUpdateUserAccountTypeV4Cmd represents the AdminBulkUpdateUserAccountTypeV4 command
var AdminBulkUpdateUserAccountTypeV4Cmd = &cobra.Command{
	Use:   "adminBulkUpdateUserAccountTypeV4",
	Short: "Admin bulk update user account type V4",
	Long:  `Admin bulk update user account type V4`,
	RunE: func(cmd *cobra.Command, args []string) error {
		usersV4Service := &iam.UsersV4Service{
			Client:          iam.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *iamclientmodels.ModelBulkAccountTypeUpdateRequestV4
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &users_v4.AdminBulkUpdateUserAccountTypeV4Params{
			Body:      body,
			Namespace: namespace,
		}
		errNoContent := usersV4Service.AdminBulkUpdateUserAccountTypeV4Short(input)
		if errNoContent != nil {
			slog.Error("operation failed", "error", errNoContent)

			return errNoContent
		}

		slog.Info("Response CLI success.")

		return nil
	},
}

func init() {
	AdminBulkUpdateUserAccountTypeV4Cmd.Flags().String("body", "", "Body")
	_ = AdminBulkUpdateUserAccountTypeV4Cmd.MarkFlagRequired("body")
	AdminBulkUpdateUserAccountTypeV4Cmd.Flags().String("namespace", "", "Namespace")
	_ = AdminBulkUpdateUserAccountTypeV4Cmd.MarkFlagRequired("namespace")
}
