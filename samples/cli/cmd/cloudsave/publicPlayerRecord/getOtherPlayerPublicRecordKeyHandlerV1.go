// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package publicPlayerRecord

import (
	"encoding/json"
	"log/slog"

	cloudsave "github.com/AccelByte/accelbyte-go-modular-sdk/cloudsave-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/cloudsave-sdk/pkg/cloudsaveclient/public_player_record"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// GetOtherPlayerPublicRecordKeyHandlerV1Cmd represents the GetOtherPlayerPublicRecordKeyHandlerV1 command
var GetOtherPlayerPublicRecordKeyHandlerV1Cmd = &cobra.Command{
	Use:   "getOtherPlayerPublicRecordKeyHandlerV1",
	Short: "Get other player public record key handler V1",
	Long:  `Get other player public record key handler V1`,
	RunE: func(cmd *cobra.Command, args []string) error {
		publicPlayerRecordService := &cloudsave.PublicPlayerRecordService{
			Client:          cloudsave.NewCloudsaveClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		limit, _ := cmd.Flags().GetInt64("limit")
		offset, _ := cmd.Flags().GetInt64("offset")
		tagsString := cmd.Flag("tags").Value.String()
		var tags []string
		errTags := json.Unmarshal([]byte(tagsString), &tags)
		if errTags != nil {
			return errTags
		}
		input := &public_player_record.GetOtherPlayerPublicRecordKeyHandlerV1Params{
			Namespace: namespace,
			UserID:    userId,
			Limit:     &limit,
			Offset:    &offset,
			Tags:      tags,
		}
		ok, errOK := publicPlayerRecordService.GetOtherPlayerPublicRecordKeyHandlerV1Short(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	GetOtherPlayerPublicRecordKeyHandlerV1Cmd.Flags().String("namespace", "", "Namespace")
	_ = GetOtherPlayerPublicRecordKeyHandlerV1Cmd.MarkFlagRequired("namespace")
	GetOtherPlayerPublicRecordKeyHandlerV1Cmd.Flags().String("userId", "", "User id")
	_ = GetOtherPlayerPublicRecordKeyHandlerV1Cmd.MarkFlagRequired("userId")
	GetOtherPlayerPublicRecordKeyHandlerV1Cmd.Flags().Int64("limit", 20, "Limit")
	GetOtherPlayerPublicRecordKeyHandlerV1Cmd.Flags().Int64("offset", 0, "Offset")
	GetOtherPlayerPublicRecordKeyHandlerV1Cmd.Flags().String("tags", "", "Tags")
}
