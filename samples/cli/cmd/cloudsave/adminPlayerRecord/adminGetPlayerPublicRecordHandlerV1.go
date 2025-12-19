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

// AdminGetPlayerPublicRecordHandlerV1Cmd represents the AdminGetPlayerPublicRecordHandlerV1 command
var AdminGetPlayerPublicRecordHandlerV1Cmd = &cobra.Command{
	Use:   "adminGetPlayerPublicRecordHandlerV1",
	Short: "Admin get player public record handler V1",
	Long:  `Admin get player public record handler V1`,
	RunE: func(cmd *cobra.Command, args []string) error {
		adminPlayerRecordService := &cloudsave.AdminPlayerRecordService{
			Client:          cloudsave.NewCloudsaveClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		key, _ := cmd.Flags().GetString("key")
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &admin_player_record.AdminGetPlayerPublicRecordHandlerV1Params{
			Key:       key,
			Namespace: namespace,
			UserID:    userId,
		}
		ok, errOK := adminPlayerRecordService.AdminGetPlayerPublicRecordHandlerV1Short(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	AdminGetPlayerPublicRecordHandlerV1Cmd.Flags().String("key", "", "Key")
	_ = AdminGetPlayerPublicRecordHandlerV1Cmd.MarkFlagRequired("key")
	AdminGetPlayerPublicRecordHandlerV1Cmd.Flags().String("namespace", "", "Namespace")
	_ = AdminGetPlayerPublicRecordHandlerV1Cmd.MarkFlagRequired("namespace")
	AdminGetPlayerPublicRecordHandlerV1Cmd.Flags().String("userId", "", "User id")
	_ = AdminGetPlayerPublicRecordHandlerV1Cmd.MarkFlagRequired("userId")
}
