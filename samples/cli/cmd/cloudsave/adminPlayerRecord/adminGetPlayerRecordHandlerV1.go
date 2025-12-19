// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package adminPlayerRecord

import (
	"log/slog"

	cloudsave "github.com/AccelByte/accelbyte-go-modular-sdk/cloudsave-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/cloudsave-sdk/pkg/cloudsaveclient/admin_player_record"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// AdminGetPlayerRecordHandlerV1Cmd represents the AdminGetPlayerRecordHandlerV1 command
var AdminGetPlayerRecordHandlerV1Cmd = &cobra.Command{
	Use:   "adminGetPlayerRecordHandlerV1",
	Short: "Admin get player record handler V1",
	Long:  `Admin get player record handler V1`,
	RunE: func(cmd *cobra.Command, args []string) error {
		adminPlayerRecordService := &cloudsave.AdminPlayerRecordService{
			Client:          cloudsave.NewCloudsaveClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		key, _ := cmd.Flags().GetString("key")
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &admin_player_record.AdminGetPlayerRecordHandlerV1Params{
			Key:       key,
			Namespace: namespace,
			UserID:    userId,
		}
		ok, errOK := adminPlayerRecordService.AdminGetPlayerRecordHandlerV1Short(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	AdminGetPlayerRecordHandlerV1Cmd.Flags().String("key", "", "Key")
	_ = AdminGetPlayerRecordHandlerV1Cmd.MarkFlagRequired("key")
	AdminGetPlayerRecordHandlerV1Cmd.Flags().String("namespace", "", "Namespace")
	_ = AdminGetPlayerRecordHandlerV1Cmd.MarkFlagRequired("namespace")
	AdminGetPlayerRecordHandlerV1Cmd.Flags().String("userId", "", "User id")
	_ = AdminGetPlayerRecordHandlerV1Cmd.MarkFlagRequired("userId")
}
