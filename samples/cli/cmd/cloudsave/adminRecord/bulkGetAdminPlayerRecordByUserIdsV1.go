// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package adminRecord

import (
	"encoding/json"

	cloudsave "github.com/AccelByte/accelbyte-go-modular-sdk/cloudsave-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/cloudsave-sdk/pkg/cloudsaveclient/admin_record"
	"github.com/AccelByte/accelbyte-go-modular-sdk/cloudsave-sdk/pkg/cloudsaveclientmodels"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// BulkGetAdminPlayerRecordByUserIdsV1Cmd represents the BulkGetAdminPlayerRecordByUserIdsV1 command
var BulkGetAdminPlayerRecordByUserIdsV1Cmd = &cobra.Command{
	Use:   "bulkGetAdminPlayerRecordByUserIdsV1",
	Short: "Bulk get admin player record by user ids V1",
	Long:  `Bulk get admin player record by user ids V1`,
	RunE: func(cmd *cobra.Command, args []string) error {
		adminRecordService := &cloudsave.AdminRecordService{
			Client:          cloudsave.NewCloudsaveClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *cloudsaveclientmodels.ModelsBulkUserIDsRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		key, _ := cmd.Flags().GetString("key")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &admin_record.BulkGetAdminPlayerRecordByUserIdsV1Params{
			Body:      body,
			Key:       key,
			Namespace: namespace,
		}
		ok, errOK := adminRecordService.BulkGetAdminPlayerRecordByUserIdsV1Short(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	BulkGetAdminPlayerRecordByUserIdsV1Cmd.Flags().String("body", "", "Body")
	_ = BulkGetAdminPlayerRecordByUserIdsV1Cmd.MarkFlagRequired("body")
	BulkGetAdminPlayerRecordByUserIdsV1Cmd.Flags().String("key", "", "Key")
	_ = BulkGetAdminPlayerRecordByUserIdsV1Cmd.MarkFlagRequired("key")
	BulkGetAdminPlayerRecordByUserIdsV1Cmd.Flags().String("namespace", "", "Namespace")
	_ = BulkGetAdminPlayerRecordByUserIdsV1Cmd.MarkFlagRequired("namespace")
}
