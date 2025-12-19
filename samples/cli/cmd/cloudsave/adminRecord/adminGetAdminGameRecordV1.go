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

// AdminGetAdminGameRecordV1Cmd represents the AdminGetAdminGameRecordV1 command
var AdminGetAdminGameRecordV1Cmd = &cobra.Command{
	Use:   "adminGetAdminGameRecordV1",
	Short: "Admin get admin game record V1",
	Long:  `Admin get admin game record V1`,
	RunE: func(cmd *cobra.Command, args []string) error {
		adminRecordService := &cloudsave.AdminRecordService{
			Client:          cloudsave.NewCloudsaveClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		key, _ := cmd.Flags().GetString("key")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &admin_record.AdminGetAdminGameRecordV1Params{
			Key:       key,
			Namespace: namespace,
		}
		ok, errOK := adminRecordService.AdminGetAdminGameRecordV1Short(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	AdminGetAdminGameRecordV1Cmd.Flags().String("key", "", "Key")
	_ = AdminGetAdminGameRecordV1Cmd.MarkFlagRequired("key")
	AdminGetAdminGameRecordV1Cmd.Flags().String("namespace", "", "Namespace")
	_ = AdminGetAdminGameRecordV1Cmd.MarkFlagRequired("namespace")
}
