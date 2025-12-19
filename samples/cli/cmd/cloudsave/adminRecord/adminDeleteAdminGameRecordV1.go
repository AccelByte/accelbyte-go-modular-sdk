// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package adminRecord

import (
	"log/slog"

	cloudsave "github.com/AccelByte/accelbyte-go-modular-sdk/cloudsave-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/cloudsave-sdk/pkg/cloudsaveclient/admin_record"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// AdminDeleteAdminGameRecordV1Cmd represents the AdminDeleteAdminGameRecordV1 command
var AdminDeleteAdminGameRecordV1Cmd = &cobra.Command{
	Use:   "adminDeleteAdminGameRecordV1",
	Short: "Admin delete admin game record V1",
	Long:  `Admin delete admin game record V1`,
	RunE: func(cmd *cobra.Command, args []string) error {
		adminRecordService := &cloudsave.AdminRecordService{
			Client:          cloudsave.NewCloudsaveClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		key, _ := cmd.Flags().GetString("key")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &admin_record.AdminDeleteAdminGameRecordV1Params{
			Key:       key,
			Namespace: namespace,
		}
		errNoContent := adminRecordService.AdminDeleteAdminGameRecordV1Short(input)
		if errNoContent != nil {
			slog.Error("operation failed", "error", errNoContent)

			return errNoContent
		}

		slog.Info("Response CLI success.")

		return nil
	},
}

func init() {
	AdminDeleteAdminGameRecordV1Cmd.Flags().String("key", "", "Key")
	_ = AdminDeleteAdminGameRecordV1Cmd.MarkFlagRequired("key")
	AdminDeleteAdminGameRecordV1Cmd.Flags().String("namespace", "", "Namespace")
	_ = AdminDeleteAdminGameRecordV1Cmd.MarkFlagRequired("namespace")
}
