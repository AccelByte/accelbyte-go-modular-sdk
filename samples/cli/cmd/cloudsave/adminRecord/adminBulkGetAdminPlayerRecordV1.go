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

// AdminBulkGetAdminPlayerRecordV1Cmd represents the AdminBulkGetAdminPlayerRecordV1 command
var AdminBulkGetAdminPlayerRecordV1Cmd = &cobra.Command{
	Use:   "adminBulkGetAdminPlayerRecordV1",
	Short: "Admin bulk get admin player record V1",
	Long:  `Admin bulk get admin player record V1`,
	RunE: func(cmd *cobra.Command, args []string) error {
		adminRecordService := &cloudsave.AdminRecordService{
			Client:          cloudsave.NewCloudsaveClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *cloudsaveclientmodels.ModelsBulkGetAdminPlayerRecordRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &admin_record.AdminBulkGetAdminPlayerRecordV1Params{
			Body:      body,
			Namespace: namespace,
			UserID:    userId,
		}
		ok, errOK := adminRecordService.AdminBulkGetAdminPlayerRecordV1Short(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	AdminBulkGetAdminPlayerRecordV1Cmd.Flags().String("body", "", "Body")
	_ = AdminBulkGetAdminPlayerRecordV1Cmd.MarkFlagRequired("body")
	AdminBulkGetAdminPlayerRecordV1Cmd.Flags().String("namespace", "", "Namespace")
	_ = AdminBulkGetAdminPlayerRecordV1Cmd.MarkFlagRequired("namespace")
	AdminBulkGetAdminPlayerRecordV1Cmd.Flags().String("userId", "", "User id")
	_ = AdminBulkGetAdminPlayerRecordV1Cmd.MarkFlagRequired("userId")
}
