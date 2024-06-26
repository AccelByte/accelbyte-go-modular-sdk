// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package publicGameBinaryRecord

import (
	"encoding/json"

	cloudsave "github.com/AccelByte/accelbyte-go-modular-sdk/cloudsave-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/cloudsave-sdk/pkg/cloudsaveclient/public_game_binary_record"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// ListGameBinaryRecordsV1Cmd represents the ListGameBinaryRecordsV1 command
var ListGameBinaryRecordsV1Cmd = &cobra.Command{
	Use:   "listGameBinaryRecordsV1",
	Short: "List game binary records V1",
	Long:  `List game binary records V1`,
	RunE: func(cmd *cobra.Command, args []string) error {
		publicGameBinaryRecordService := &cloudsave.PublicGameBinaryRecordService{
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
		input := &public_game_binary_record.ListGameBinaryRecordsV1Params{
			Namespace: namespace,
			Limit:     &limit,
			Offset:    &offset,
			Query:     &query,
			Tags:      tags,
		}
		ok, errOK := publicGameBinaryRecordService.ListGameBinaryRecordsV1Short(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	ListGameBinaryRecordsV1Cmd.Flags().String("namespace", "", "Namespace")
	_ = ListGameBinaryRecordsV1Cmd.MarkFlagRequired("namespace")
	ListGameBinaryRecordsV1Cmd.Flags().Int64("limit", 20, "Limit")
	ListGameBinaryRecordsV1Cmd.Flags().Int64("offset", 0, "Offset")
	ListGameBinaryRecordsV1Cmd.Flags().String("query", "", "Query")
	ListGameBinaryRecordsV1Cmd.Flags().String("tags", "", "Tags")
}
