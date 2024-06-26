// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package adminGameRecord

import (
	"encoding/json"

	cloudsave "github.com/AccelByte/accelbyte-go-modular-sdk/cloudsave-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/cloudsave-sdk/pkg/cloudsaveclient/admin_game_record"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// ListGameRecordsHandlerV1Cmd represents the ListGameRecordsHandlerV1 command
var ListGameRecordsHandlerV1Cmd = &cobra.Command{
	Use:   "listGameRecordsHandlerV1",
	Short: "List game records handler V1",
	Long:  `List game records handler V1`,
	RunE: func(cmd *cobra.Command, args []string) error {
		adminGameRecordService := &cloudsave.AdminGameRecordService{
			Client:          cloudsave.NewCloudsaveClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		limit, _ := cmd.Flags().GetInt64("limit")
		offset, _ := cmd.Flags().GetInt64("offset")
		query, _ := cmd.Flags().GetString("query")
		tagsString := cmd.Flag("tags").Value.String()
		var tags []string
		errTags := json.Unmarshal([]byte(tagsString), &tags)
		if errTags != nil {
			return errTags
		}
		input := &admin_game_record.ListGameRecordsHandlerV1Params{
			Namespace: namespace,
			Query:     &query,
			Tags:      tags,
			Limit:     limit,
			Offset:    offset,
		}
		ok, errOK := adminGameRecordService.ListGameRecordsHandlerV1Short(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	ListGameRecordsHandlerV1Cmd.Flags().String("namespace", "", "Namespace")
	_ = ListGameRecordsHandlerV1Cmd.MarkFlagRequired("namespace")
	ListGameRecordsHandlerV1Cmd.Flags().String("query", "", "Query")
	ListGameRecordsHandlerV1Cmd.Flags().String("tags", "", "Tags")
	ListGameRecordsHandlerV1Cmd.Flags().Int64("limit", 20, "Limit")
	_ = ListGameRecordsHandlerV1Cmd.MarkFlagRequired("limit")
	ListGameRecordsHandlerV1Cmd.Flags().Int64("offset", 0, "Offset")
	_ = ListGameRecordsHandlerV1Cmd.MarkFlagRequired("offset")
}
