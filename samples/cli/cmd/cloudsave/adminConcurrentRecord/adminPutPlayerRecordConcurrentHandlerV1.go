// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package adminConcurrentRecord

import (
	"encoding/json"
	"log/slog"

	cloudsave "github.com/AccelByte/accelbyte-go-modular-sdk/cloudsave-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/cloudsave-sdk/pkg/cloudsaveclient/admin_concurrent_record"
	"github.com/AccelByte/accelbyte-go-modular-sdk/cloudsave-sdk/pkg/cloudsaveclientmodels"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// AdminPutPlayerRecordConcurrentHandlerV1Cmd represents the AdminPutPlayerRecordConcurrentHandlerV1 command
var AdminPutPlayerRecordConcurrentHandlerV1Cmd = &cobra.Command{
	Use:   "adminPutPlayerRecordConcurrentHandlerV1",
	Short: "Admin put player record concurrent handler V1",
	Long:  `Admin put player record concurrent handler V1`,
	RunE: func(cmd *cobra.Command, args []string) error {
		adminConcurrentRecordService := &cloudsave.AdminConcurrentRecordService{
			Client:          cloudsave.NewCloudsaveClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *cloudsaveclientmodels.ModelsAdminConcurrentRecordRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		key, _ := cmd.Flags().GetString("key")
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		responseBody, _ := cmd.Flags().GetBool("responseBody")
		input := &admin_concurrent_record.AdminPutPlayerRecordConcurrentHandlerV1Params{
			Body:         body,
			Key:          key,
			Namespace:    namespace,
			UserID:       userId,
			ResponseBody: &responseBody,
		}
		ok, errOK := adminConcurrentRecordService.AdminPutPlayerRecordConcurrentHandlerV1Short(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	AdminPutPlayerRecordConcurrentHandlerV1Cmd.Flags().String("body", "", "Body")
	_ = AdminPutPlayerRecordConcurrentHandlerV1Cmd.MarkFlagRequired("body")
	AdminPutPlayerRecordConcurrentHandlerV1Cmd.Flags().String("key", "", "Key")
	_ = AdminPutPlayerRecordConcurrentHandlerV1Cmd.MarkFlagRequired("key")
	AdminPutPlayerRecordConcurrentHandlerV1Cmd.Flags().String("namespace", "", "Namespace")
	_ = AdminPutPlayerRecordConcurrentHandlerV1Cmd.MarkFlagRequired("namespace")
	AdminPutPlayerRecordConcurrentHandlerV1Cmd.Flags().String("userId", "", "User id")
	_ = AdminPutPlayerRecordConcurrentHandlerV1Cmd.MarkFlagRequired("userId")
	AdminPutPlayerRecordConcurrentHandlerV1Cmd.Flags().Bool("responseBody", false, "Response body")
}
