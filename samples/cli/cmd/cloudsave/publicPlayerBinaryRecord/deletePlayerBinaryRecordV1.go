// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package publicPlayerBinaryRecord

import (
	"log/slog"

	cloudsave "github.com/AccelByte/accelbyte-go-modular-sdk/cloudsave-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/cloudsave-sdk/pkg/cloudsaveclient/public_player_binary_record"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// DeletePlayerBinaryRecordV1Cmd represents the DeletePlayerBinaryRecordV1 command
var DeletePlayerBinaryRecordV1Cmd = &cobra.Command{
	Use:   "deletePlayerBinaryRecordV1",
	Short: "Delete player binary record V1",
	Long:  `Delete player binary record V1`,
	RunE: func(cmd *cobra.Command, args []string) error {
		publicPlayerBinaryRecordService := &cloudsave.PublicPlayerBinaryRecordService{
			Client:          cloudsave.NewCloudsaveClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		key, _ := cmd.Flags().GetString("key")
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &public_player_binary_record.DeletePlayerBinaryRecordV1Params{
			Key:       key,
			Namespace: namespace,
			UserID:    userId,
		}
		errNoContent := publicPlayerBinaryRecordService.DeletePlayerBinaryRecordV1Short(input)
		if errNoContent != nil {
			slog.Error("operation failed", "error", errNoContent)

			return errNoContent
		}

		slog.Info("Response CLI success.")

		return nil
	},
}

func init() {
	DeletePlayerBinaryRecordV1Cmd.Flags().String("key", "", "Key")
	_ = DeletePlayerBinaryRecordV1Cmd.MarkFlagRequired("key")
	DeletePlayerBinaryRecordV1Cmd.Flags().String("namespace", "", "Namespace")
	_ = DeletePlayerBinaryRecordV1Cmd.MarkFlagRequired("namespace")
	DeletePlayerBinaryRecordV1Cmd.Flags().String("userId", "", "User id")
	_ = DeletePlayerBinaryRecordV1Cmd.MarkFlagRequired("userId")
}
