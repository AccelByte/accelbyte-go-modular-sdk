// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package adminPlayerBinaryRecord

import (
	"encoding/json"

	cloudsave "github.com/AccelByte/accelbyte-go-modular-sdk/cloudsave-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/cloudsave-sdk/pkg/cloudsaveclient/admin_player_binary_record"
	"github.com/AccelByte/accelbyte-go-modular-sdk/cloudsave-sdk/pkg/cloudsaveclientmodels"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// AdminPutPlayerBinaryRecorMetadataV1Cmd represents the AdminPutPlayerBinaryRecorMetadataV1 command
var AdminPutPlayerBinaryRecorMetadataV1Cmd = &cobra.Command{
	Use:   "adminPutPlayerBinaryRecorMetadataV1",
	Short: "Admin put player binary recor metadata V1",
	Long:  `Admin put player binary recor metadata V1`,
	RunE: func(cmd *cobra.Command, args []string) error {
		adminPlayerBinaryRecordService := &cloudsave.AdminPlayerBinaryRecordService{
			Client:          cloudsave.NewCloudsaveClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *cloudsaveclientmodels.ModelsPlayerBinaryRecordMetadataRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		key, _ := cmd.Flags().GetString("key")
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &admin_player_binary_record.AdminPutPlayerBinaryRecorMetadataV1Params{
			Body:      body,
			Key:       key,
			Namespace: namespace,
			UserID:    userId,
		}
		ok, errOK := adminPlayerBinaryRecordService.AdminPutPlayerBinaryRecorMetadataV1Short(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	AdminPutPlayerBinaryRecorMetadataV1Cmd.Flags().String("body", "", "Body")
	_ = AdminPutPlayerBinaryRecorMetadataV1Cmd.MarkFlagRequired("body")
	AdminPutPlayerBinaryRecorMetadataV1Cmd.Flags().String("key", "", "Key")
	_ = AdminPutPlayerBinaryRecorMetadataV1Cmd.MarkFlagRequired("key")
	AdminPutPlayerBinaryRecorMetadataV1Cmd.Flags().String("namespace", "", "Namespace")
	_ = AdminPutPlayerBinaryRecorMetadataV1Cmd.MarkFlagRequired("namespace")
	AdminPutPlayerBinaryRecorMetadataV1Cmd.Flags().String("userId", "", "User id")
	_ = AdminPutPlayerBinaryRecorMetadataV1Cmd.MarkFlagRequired("userId")
}
