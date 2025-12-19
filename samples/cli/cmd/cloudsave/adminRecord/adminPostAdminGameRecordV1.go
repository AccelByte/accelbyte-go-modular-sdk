// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package adminRecord

import (
	"encoding/json"
	"log/slog"

	cloudsave "github.com/AccelByte/accelbyte-go-modular-sdk/cloudsave-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/cloudsave-sdk/pkg/cloudsaveclient/admin_record"
	"github.com/AccelByte/accelbyte-go-modular-sdk/cloudsave-sdk/pkg/cloudsaveclientmodels"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// AdminPostAdminGameRecordV1Cmd represents the AdminPostAdminGameRecordV1 command
var AdminPostAdminGameRecordV1Cmd = &cobra.Command{
	Use:   "adminPostAdminGameRecordV1",
	Short: "Admin post admin game record V1",
	Long:  `Admin post admin game record V1`,
	RunE: func(cmd *cobra.Command, args []string) error {
		adminRecordService := &cloudsave.AdminRecordService{
			Client:          cloudsave.NewCloudsaveClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *cloudsaveclientmodels.ModelsAdminGameRecordRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		key, _ := cmd.Flags().GetString("key")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &admin_record.AdminPostAdminGameRecordV1Params{
			Body:      body,
			Key:       key,
			Namespace: namespace,
		}
		created, errCreated := adminRecordService.AdminPostAdminGameRecordV1Short(input)
		if errCreated != nil {
			slog.Error("operation failed", "error", errCreated)

			return errCreated
		}

		slog.Info("Response CLI success", "response", created)

		return nil
	},
}

func init() {
	AdminPostAdminGameRecordV1Cmd.Flags().String("body", "", "Body")
	_ = AdminPostAdminGameRecordV1Cmd.MarkFlagRequired("body")
	AdminPostAdminGameRecordV1Cmd.Flags().String("key", "", "Key")
	_ = AdminPostAdminGameRecordV1Cmd.MarkFlagRequired("key")
	AdminPostAdminGameRecordV1Cmd.Flags().String("namespace", "", "Namespace")
	_ = AdminPostAdminGameRecordV1Cmd.MarkFlagRequired("namespace")
}
