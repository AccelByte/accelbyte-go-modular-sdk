// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package publicPlayerRecord

import (
	"encoding/json"

	cloudsave "github.com/AccelByte/accelbyte-go-modular-sdk/cloudsave-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/cloudsave-sdk/pkg/cloudsaveclient/public_player_record"
	"github.com/AccelByte/accelbyte-go-modular-sdk/cloudsave-sdk/pkg/cloudsaveclientmodels"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// PutPlayerRecordHandlerV1Cmd represents the PutPlayerRecordHandlerV1 command
var PutPlayerRecordHandlerV1Cmd = &cobra.Command{
	Use:   "putPlayerRecordHandlerV1",
	Short: "Put player record handler V1",
	Long:  `Put player record handler V1`,
	RunE: func(cmd *cobra.Command, args []string) error {
		publicPlayerRecordService := &cloudsave.PublicPlayerRecordService{
			Client:          cloudsave.NewCloudsaveClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *cloudsaveclientmodels.ModelsPlayerRecordRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		key, _ := cmd.Flags().GetString("key")
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &public_player_record.PutPlayerRecordHandlerV1Params{
			Body:      body,
			Key:       key,
			Namespace: namespace,
			UserID:    userId,
		}
		ok, errOK := publicPlayerRecordService.PutPlayerRecordHandlerV1Short(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	PutPlayerRecordHandlerV1Cmd.Flags().String("body", "", "Body")
	_ = PutPlayerRecordHandlerV1Cmd.MarkFlagRequired("body")
	PutPlayerRecordHandlerV1Cmd.Flags().String("key", "", "Key")
	_ = PutPlayerRecordHandlerV1Cmd.MarkFlagRequired("key")
	PutPlayerRecordHandlerV1Cmd.Flags().String("namespace", "", "Namespace")
	_ = PutPlayerRecordHandlerV1Cmd.MarkFlagRequired("namespace")
	PutPlayerRecordHandlerV1Cmd.Flags().String("userId", "", "User id")
	_ = PutPlayerRecordHandlerV1Cmd.MarkFlagRequired("userId")
}
