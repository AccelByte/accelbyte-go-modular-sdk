// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package publicGameRecord

import (
	"log/slog"

	cloudsave "github.com/AccelByte/accelbyte-go-modular-sdk/cloudsave-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/cloudsave-sdk/pkg/cloudsaveclient/public_game_record"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// DeleteGameRecordHandlerV1Cmd represents the DeleteGameRecordHandlerV1 command
var DeleteGameRecordHandlerV1Cmd = &cobra.Command{
	Use:   "deleteGameRecordHandlerV1",
	Short: "Delete game record handler V1",
	Long:  `Delete game record handler V1`,
	RunE: func(cmd *cobra.Command, args []string) error {
		publicGameRecordService := &cloudsave.PublicGameRecordService{
			Client:          cloudsave.NewCloudsaveClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		key, _ := cmd.Flags().GetString("key")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &public_game_record.DeleteGameRecordHandlerV1Params{
			Key:       key,
			Namespace: namespace,
		}
		errNoContent := publicGameRecordService.DeleteGameRecordHandlerV1Short(input)
		if errNoContent != nil {
			slog.Error("operation failed", "error", errNoContent)

			return errNoContent
		}

		slog.Info("Response CLI success.")

		return nil
	},
}

func init() {
	DeleteGameRecordHandlerV1Cmd.Flags().String("key", "", "Key")
	_ = DeleteGameRecordHandlerV1Cmd.MarkFlagRequired("key")
	DeleteGameRecordHandlerV1Cmd.Flags().String("namespace", "", "Namespace")
	_ = DeleteGameRecordHandlerV1Cmd.MarkFlagRequired("namespace")
}
