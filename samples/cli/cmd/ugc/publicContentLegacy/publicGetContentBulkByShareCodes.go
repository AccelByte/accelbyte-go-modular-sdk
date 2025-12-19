// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package publicContentLegacy

import (
	"encoding/json"
	"log/slog"

	ugc "github.com/AccelByte/accelbyte-go-modular-sdk/ugc-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/ugc-sdk/pkg/ugcclient/public_content_legacy"
	"github.com/AccelByte/accelbyte-go-modular-sdk/ugc-sdk/pkg/ugcclientmodels"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// PublicGetContentBulkByShareCodesCmd represents the PublicGetContentBulkByShareCodes command
var PublicGetContentBulkByShareCodesCmd = &cobra.Command{
	Use:   "publicGetContentBulkByShareCodes",
	Short: "Public get content bulk by share codes",
	Long:  `Public get content bulk by share codes`,
	RunE: func(cmd *cobra.Command, args []string) error {
		publicContentLegacyService := &ugc.PublicContentLegacyService{
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
		input := &public_content_legacy.PublicGetContentBulkByShareCodesParams{
			Body:      body,
			Namespace: namespace,
		}
		ok, errOK := publicContentLegacyService.PublicGetContentBulkByShareCodesShort(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	PublicGetContentBulkByShareCodesCmd.Flags().String("body", "", "Body")
	_ = PublicGetContentBulkByShareCodesCmd.MarkFlagRequired("body")
	PublicGetContentBulkByShareCodesCmd.Flags().String("namespace", "", "Namespace")
	_ = PublicGetContentBulkByShareCodesCmd.MarkFlagRequired("namespace")
}
