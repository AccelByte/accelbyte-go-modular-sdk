// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package adminPlayerRecord

import (
	cloudsave "github.com/AccelByte/accelbyte-go-sdk/cloudsave-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-sdk/cloudsave-sdk/pkg/cloudsaveclient/admin_player_record"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
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
		input := &admin_player_record.AdminRetrievePlayerRecordsParams{
			Namespace: namespace,
			UserID:    userId,
			Limit:     &limit,
			Offset:    &offset,
		}
		ok, errOK := adminPlayerRecordService.AdminRetrievePlayerRecordsShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

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
}
