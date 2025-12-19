// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package adminPlayerRecord

import (
	"encoding/json"
	"log/slog"

	cloudsave "github.com/AccelByte/accelbyte-go-modular-sdk/cloudsave-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/cloudsave-sdk/pkg/cloudsaveclient/admin_player_record"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// AdminRetrievePlayerRecordsCmd represents the AdminRetrievePlayerRecords command
var AdminRetrievePlayerRecordsCmd = &cobra.Command{
	Use:   "adminRetrievePlayerRecords",
	Short: "Admin retrieve player records",
	Long:  `Admin retrieve player records`,
	RunE: func(cmd *cobra.Command, args []string) error {
		adminPlayerRecordService := &cloudsave.AdminPlayerRecordService{
			Client:          cloudsave.NewCloudsaveClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		limit, _ := cmd.Flags().GetInt64("limit")
		offset, _ := cmd.Flags().GetInt64("offset")
		query, _ := cmd.Flags().GetString("query")
		tagsString := cmd.Flag("tags").Value.String()
		var tags []string
		errTags := json.Unmarshal([]byte(tagsString), &tags)
		if errTags != nil {
			return errTags
		}
		input := &admin_player_record.AdminRetrievePlayerRecordsParams{
			Namespace: namespace,
			UserID:    userId,
			Limit:     &limit,
			Offset:    &offset,
			Query:     &query,
			Tags:      tags,
		}
		ok, errOK := adminPlayerRecordService.AdminRetrievePlayerRecordsShort(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	AdminRetrievePlayerRecordsCmd.Flags().String("namespace", "", "Namespace")
	_ = AdminRetrievePlayerRecordsCmd.MarkFlagRequired("namespace")
	AdminRetrievePlayerRecordsCmd.Flags().String("userId", "", "User id")
	_ = AdminRetrievePlayerRecordsCmd.MarkFlagRequired("userId")
	AdminRetrievePlayerRecordsCmd.Flags().Int64("limit", 20, "Limit")
	AdminRetrievePlayerRecordsCmd.Flags().Int64("offset", 0, "Offset")
	AdminRetrievePlayerRecordsCmd.Flags().String("query", "", "Query")
	AdminRetrievePlayerRecordsCmd.Flags().String("tags", "", "Tags")
}
