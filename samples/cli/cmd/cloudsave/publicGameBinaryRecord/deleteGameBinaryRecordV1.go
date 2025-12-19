// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package publicGameBinaryRecord

import (
	"log/slog"

	cloudsave "github.com/AccelByte/accelbyte-go-modular-sdk/cloudsave-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/cloudsave-sdk/pkg/cloudsaveclient/public_game_binary_record"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// DeleteGameBinaryRecordV1Cmd represents the DeleteGameBinaryRecordV1 command
var DeleteGameBinaryRecordV1Cmd = &cobra.Command{
	Use:   "deleteGameBinaryRecordV1",
	Short: "Delete game binary record V1",
	Long:  `Delete game binary record V1`,
	RunE: func(cmd *cobra.Command, args []string) error {
		publicGameBinaryRecordService := &cloudsave.PublicGameBinaryRecordService{
			Client:          cloudsave.NewCloudsaveClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		key, _ := cmd.Flags().GetString("key")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &public_game_binary_record.DeleteGameBinaryRecordV1Params{
			Key:       key,
			Namespace: namespace,
		}
		errNoContent := publicGameBinaryRecordService.DeleteGameBinaryRecordV1Short(input)
		if errNoContent != nil {
			slog.Error("operation failed", "error", errNoContent)

			return errNoContent
		}

		slog.Info("Response CLI success.")

		return nil
	},
}

func init() {
	DeleteGameBinaryRecordV1Cmd.Flags().String("key", "", "Key")
	_ = DeleteGameBinaryRecordV1Cmd.MarkFlagRequired("key")
	DeleteGameBinaryRecordV1Cmd.Flags().String("namespace", "", "Namespace")
	_ = DeleteGameBinaryRecordV1Cmd.MarkFlagRequired("namespace")
}
