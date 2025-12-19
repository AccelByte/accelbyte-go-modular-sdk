// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package bans

import (
	"encoding/json"
	"log/slog"

	iam "github.com/AccelByte/accelbyte-go-modular-sdk/iam-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/iam-sdk/pkg/iamclient/bans"
	"github.com/AccelByte/accelbyte-go-modular-sdk/iam-sdk/pkg/iamclientmodels"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// AdminUnbanUserBulkV3Cmd represents the AdminUnbanUserBulkV3 command
var AdminUnbanUserBulkV3Cmd = &cobra.Command{
	Use:   "adminUnbanUserBulkV3",
	Short: "Admin unban user bulk V3",
	Long:  `Admin unban user bulk V3`,
	RunE: func(cmd *cobra.Command, args []string) error {
		bansService := &iam.BansService{
			Client:          iam.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *iamclientmodels.ModelBulkUnbanCreateRequestV3
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &bans.AdminUnbanUserBulkV3Params{
			Body:      body,
			Namespace: namespace,
		}
		created, errCreated := bansService.AdminUnbanUserBulkV3Short(input)
		if errCreated != nil {
			slog.Error("operation failed", "error", errCreated)

			return errCreated
		}

		slog.Info("Response CLI success", "response", created)

		return nil
	},
}

func init() {
	AdminUnbanUserBulkV3Cmd.Flags().String("body", "", "Body")
	_ = AdminUnbanUserBulkV3Cmd.MarkFlagRequired("body")
	AdminUnbanUserBulkV3Cmd.Flags().String("namespace", "", "Namespace")
	_ = AdminUnbanUserBulkV3Cmd.MarkFlagRequired("namespace")
}
