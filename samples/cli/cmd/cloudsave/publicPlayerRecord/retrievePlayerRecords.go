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

// RetrievePlayerRecordsCmd represents the RetrievePlayerRecords command
var RetrievePlayerRecordsCmd = &cobra.Command{
	Use:   "retrievePlayerRecords",
	Short: "Retrieve player records",
	Long:  `Retrieve player records`,
	RunE: func(cmd *cobra.Command, args []string) error {
		publicPlayerRecordService := &cloudsave.PublicPlayerRecordService{
			Client:          cloudsave.NewCloudsaveClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		limit, _ := cmd.Flags().GetInt64("limit")
		offset, _ := cmd.Flags().GetInt64("offset")
		tagsString := cmd.Flag("tags").Value.String()
		var tags []string
		errTags := json.Unmarshal([]byte(tagsString), &tags)
		if errTags != nil {
			return errTags
		}
		input := &public_player_record.RetrievePlayerRecordsParams{
			Namespace: namespace,
			Limit:     &limit,
			Offset:    &offset,
			Tags:      tags,
		}
		ok, errOK := publicPlayerRecordService.RetrievePlayerRecordsShort(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	RetrievePlayerRecordsCmd.Flags().String("namespace", "", "Namespace")
	_ = RetrievePlayerRecordsCmd.MarkFlagRequired("namespace")
	RetrievePlayerRecordsCmd.Flags().Int64("limit", 20, "Limit")
	RetrievePlayerRecordsCmd.Flags().Int64("offset", 0, "Offset")
	RetrievePlayerRecordsCmd.Flags().String("tags", "", "Tags")
}
