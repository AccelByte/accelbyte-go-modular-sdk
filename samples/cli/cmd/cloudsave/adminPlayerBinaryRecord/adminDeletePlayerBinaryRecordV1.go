// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package adminPlayerBinaryRecord

import (
	"log/slog"

	cloudsave "github.com/AccelByte/accelbyte-go-modular-sdk/cloudsave-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/cloudsave-sdk/pkg/cloudsaveclient/admin_player_binary_record"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// AdminDeletePlayerBinaryRecordV1Cmd represents the AdminDeletePlayerBinaryRecordV1 command
var AdminDeletePlayerBinaryRecordV1Cmd = &cobra.Command{
	Use:   "adminDeletePlayerBinaryRecordV1",
	Short: "Admin delete player binary record V1",
	Long:  `Admin delete player binary record V1`,
	RunE: func(cmd *cobra.Command, args []string) error {
		adminPlayerBinaryRecordService := &cloudsave.AdminPlayerBinaryRecordService{
			Client:          cloudsave.NewCloudsaveClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		key, _ := cmd.Flags().GetString("key")
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &admin_player_binary_record.AdminDeletePlayerBinaryRecordV1Params{
			Key:       key,
			Namespace: namespace,
			UserID:    userId,
		}
		errNoContent := adminPlayerBinaryRecordService.AdminDeletePlayerBinaryRecordV1Short(input)
		if errNoContent != nil {
			slog.Error("operation failed", "error", errNoContent)

			return errNoContent
		}

		slog.Info("Response CLI success.")

		return nil
	},
}

func init() {
	AdminDeletePlayerBinaryRecordV1Cmd.Flags().String("key", "", "Key")
	_ = AdminDeletePlayerBinaryRecordV1Cmd.MarkFlagRequired("key")
	AdminDeletePlayerBinaryRecordV1Cmd.Flags().String("namespace", "", "Namespace")
	_ = AdminDeletePlayerBinaryRecordV1Cmd.MarkFlagRequired("namespace")
	AdminDeletePlayerBinaryRecordV1Cmd.Flags().String("userId", "", "User id")
	_ = AdminDeletePlayerBinaryRecordV1Cmd.MarkFlagRequired("userId")
}
