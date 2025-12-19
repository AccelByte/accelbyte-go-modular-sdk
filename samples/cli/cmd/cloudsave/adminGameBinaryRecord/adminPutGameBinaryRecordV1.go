// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package adminGameBinaryRecord

import (
	"encoding/json"
	"log/slog"

	cloudsave "github.com/AccelByte/accelbyte-go-modular-sdk/cloudsave-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/cloudsave-sdk/pkg/cloudsaveclient/admin_game_binary_record"
	"github.com/AccelByte/accelbyte-go-modular-sdk/cloudsave-sdk/pkg/cloudsaveclientmodels"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// AdminPutGameBinaryRecordV1Cmd represents the AdminPutGameBinaryRecordV1 command
var AdminPutGameBinaryRecordV1Cmd = &cobra.Command{
	Use:   "adminPutGameBinaryRecordV1",
	Short: "Admin put game binary record V1",
	Long:  `Admin put game binary record V1`,
	RunE: func(cmd *cobra.Command, args []string) error {
		adminGameBinaryRecordService := &cloudsave.AdminGameBinaryRecordService{
			Client:          cloudsave.NewCloudsaveClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *cloudsaveclientmodels.ModelsBinaryRecordRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		key, _ := cmd.Flags().GetString("key")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &admin_game_binary_record.AdminPutGameBinaryRecordV1Params{
			Body:      body,
			Key:       key,
			Namespace: namespace,
		}
		ok, errOK := adminGameBinaryRecordService.AdminPutGameBinaryRecordV1Short(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	AdminPutGameBinaryRecordV1Cmd.Flags().String("body", "", "Body")
	_ = AdminPutGameBinaryRecordV1Cmd.MarkFlagRequired("body")
	AdminPutGameBinaryRecordV1Cmd.Flags().String("key", "", "Key")
	_ = AdminPutGameBinaryRecordV1Cmd.MarkFlagRequired("key")
	AdminPutGameBinaryRecordV1Cmd.Flags().String("namespace", "", "Namespace")
	_ = AdminPutGameBinaryRecordV1Cmd.MarkFlagRequired("namespace")
}
