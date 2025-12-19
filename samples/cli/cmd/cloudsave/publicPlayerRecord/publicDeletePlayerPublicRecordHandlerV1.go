// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package publicPlayerRecord

import (
	"log/slog"

	cloudsave "github.com/AccelByte/accelbyte-go-modular-sdk/cloudsave-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/cloudsave-sdk/pkg/cloudsaveclient/public_player_record"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// PublicDeletePlayerPublicRecordHandlerV1Cmd represents the PublicDeletePlayerPublicRecordHandlerV1 command
var PublicDeletePlayerPublicRecordHandlerV1Cmd = &cobra.Command{
	Use:   "publicDeletePlayerPublicRecordHandlerV1",
	Short: "Public delete player public record handler V1",
	Long:  `Public delete player public record handler V1`,
	RunE: func(cmd *cobra.Command, args []string) error {
		publicPlayerRecordService := &cloudsave.PublicPlayerRecordService{
			Client:          cloudsave.NewCloudsaveClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		key, _ := cmd.Flags().GetString("key")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &public_player_record.PublicDeletePlayerPublicRecordHandlerV1Params{
			Key:       key,
			Namespace: namespace,
		}
		errNoContent := publicPlayerRecordService.PublicDeletePlayerPublicRecordHandlerV1Short(input)
		if errNoContent != nil {
			slog.Error("operation failed", "error", errNoContent)

			return errNoContent
		}

		slog.Info("Response CLI success.")

		return nil
	},
}

func init() {
	PublicDeletePlayerPublicRecordHandlerV1Cmd.Flags().String("key", "", "Key")
	_ = PublicDeletePlayerPublicRecordHandlerV1Cmd.MarkFlagRequired("key")
	PublicDeletePlayerPublicRecordHandlerV1Cmd.Flags().String("namespace", "", "Namespace")
	_ = PublicDeletePlayerPublicRecordHandlerV1Cmd.MarkFlagRequired("namespace")
}
