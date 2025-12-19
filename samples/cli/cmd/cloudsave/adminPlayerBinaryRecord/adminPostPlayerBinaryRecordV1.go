// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package adminPlayerBinaryRecord

import (
	"encoding/json"
	"log/slog"

	cloudsave "github.com/AccelByte/accelbyte-go-modular-sdk/cloudsave-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/cloudsave-sdk/pkg/cloudsaveclient/admin_player_binary_record"
	"github.com/AccelByte/accelbyte-go-modular-sdk/cloudsave-sdk/pkg/cloudsaveclientmodels"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// AdminPostPlayerBinaryRecordV1Cmd represents the AdminPostPlayerBinaryRecordV1 command
var AdminPostPlayerBinaryRecordV1Cmd = &cobra.Command{
	Use:   "adminPostPlayerBinaryRecordV1",
	Short: "Admin post player binary record V1",
	Long:  `Admin post player binary record V1`,
	RunE: func(cmd *cobra.Command, args []string) error {
		adminPlayerBinaryRecordService := &cloudsave.AdminPlayerBinaryRecordService{
			Client:          cloudsave.NewCloudsaveClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *cloudsaveclientmodels.ModelsPlayerBinaryRecordCreate
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &admin_player_binary_record.AdminPostPlayerBinaryRecordV1Params{
			Body:      body,
			Namespace: namespace,
			UserID:    userId,
		}
		created, errCreated := adminPlayerBinaryRecordService.AdminPostPlayerBinaryRecordV1Short(input)
		if errCreated != nil {
			slog.Error("operation failed", "error", errCreated)

			return errCreated
		}

		slog.Info("Response CLI success", "response", created)

		return nil
	},
}

func init() {
	AdminPostPlayerBinaryRecordV1Cmd.Flags().String("body", "", "Body")
	_ = AdminPostPlayerBinaryRecordV1Cmd.MarkFlagRequired("body")
	AdminPostPlayerBinaryRecordV1Cmd.Flags().String("namespace", "", "Namespace")
	_ = AdminPostPlayerBinaryRecordV1Cmd.MarkFlagRequired("namespace")
	AdminPostPlayerBinaryRecordV1Cmd.Flags().String("userId", "", "User id")
	_ = AdminPostPlayerBinaryRecordV1Cmd.MarkFlagRequired("userId")
}
