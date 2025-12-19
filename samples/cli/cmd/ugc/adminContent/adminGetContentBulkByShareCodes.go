// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package adminContent

import (
	"encoding/json"
	"log/slog"

	ugc "github.com/AccelByte/accelbyte-go-modular-sdk/ugc-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/ugc-sdk/pkg/ugcclient/admin_content"
	"github.com/AccelByte/accelbyte-go-modular-sdk/ugc-sdk/pkg/ugcclientmodels"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// AdminGetContentBulkByShareCodesCmd represents the AdminGetContentBulkByShareCodes command
var AdminGetContentBulkByShareCodesCmd = &cobra.Command{
	Use:   "adminGetContentBulkByShareCodes",
	Short: "Admin get content bulk by share codes",
	Long:  `Admin get content bulk by share codes`,
	RunE: func(cmd *cobra.Command, args []string) error {
		adminContentService := &ugc.AdminContentService{
			Client:          ugc.NewUgcClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *ugcclientmodels.ModelsGetContentBulkByShareCodesRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &admin_content.AdminGetContentBulkByShareCodesParams{
			Body:      body,
			Namespace: namespace,
		}
		ok, errOK := adminContentService.AdminGetContentBulkByShareCodesShort(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	AdminGetContentBulkByShareCodesCmd.Flags().String("body", "", "Body")
	_ = AdminGetContentBulkByShareCodesCmd.MarkFlagRequired("body")
	AdminGetContentBulkByShareCodesCmd.Flags().String("namespace", "", "Namespace")
	_ = AdminGetContentBulkByShareCodesCmd.MarkFlagRequired("namespace")
}
