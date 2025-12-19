// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package publicContentLegacy

import (
	"log/slog"

	ugc "github.com/AccelByte/accelbyte-go-modular-sdk/ugc-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/ugc-sdk/pkg/ugcclient/public_content_legacy"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// PublicDownloadContentByShareCodeCmd represents the PublicDownloadContentByShareCode command
var PublicDownloadContentByShareCodeCmd = &cobra.Command{
	Use:   "publicDownloadContentByShareCode",
	Short: "Public download content by share code",
	Long:  `Public download content by share code`,
	RunE: func(cmd *cobra.Command, args []string) error {
		publicContentLegacyService := &ugc.PublicContentLegacyService{
			Client:          ugc.NewUgcClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		shareCode, _ := cmd.Flags().GetString("shareCode")
		input := &public_content_legacy.PublicDownloadContentByShareCodeParams{
			Namespace: namespace,
			ShareCode: shareCode,
		}
		ok, errOK := publicContentLegacyService.PublicDownloadContentByShareCodeShort(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	PublicDownloadContentByShareCodeCmd.Flags().String("namespace", "", "Namespace")
	_ = PublicDownloadContentByShareCodeCmd.MarkFlagRequired("namespace")
	PublicDownloadContentByShareCodeCmd.Flags().String("shareCode", "", "Share code")
	_ = PublicDownloadContentByShareCodeCmd.MarkFlagRequired("shareCode")
}
