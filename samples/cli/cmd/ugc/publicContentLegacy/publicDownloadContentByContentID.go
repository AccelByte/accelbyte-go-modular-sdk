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

// PublicDownloadContentByContentIDCmd represents the PublicDownloadContentByContentID command
var PublicDownloadContentByContentIDCmd = &cobra.Command{
	Use:   "publicDownloadContentByContentID",
	Short: "Public download content by content ID",
	Long:  `Public download content by content ID`,
	RunE: func(cmd *cobra.Command, args []string) error {
		publicContentLegacyService := &ugc.PublicContentLegacyService{
			Client:          ugc.NewUgcClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		contentId, _ := cmd.Flags().GetString("contentId")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &public_content_legacy.PublicDownloadContentByContentIDParams{
			ContentID: contentId,
			Namespace: namespace,
		}
		ok, errOK := publicContentLegacyService.PublicDownloadContentByContentIDShort(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	PublicDownloadContentByContentIDCmd.Flags().String("contentId", "", "Content id")
	_ = PublicDownloadContentByContentIDCmd.MarkFlagRequired("contentId")
	PublicDownloadContentByContentIDCmd.Flags().String("namespace", "", "Namespace")
	_ = PublicDownloadContentByContentIDCmd.MarkFlagRequired("namespace")
}
