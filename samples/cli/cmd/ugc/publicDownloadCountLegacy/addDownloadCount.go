// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package publicDownloadCountLegacy

import (
	"log/slog"

	ugc "github.com/AccelByte/accelbyte-go-modular-sdk/ugc-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/ugc-sdk/pkg/ugcclient/public_download_count_legacy"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// AddDownloadCountCmd represents the AddDownloadCount command
var AddDownloadCountCmd = &cobra.Command{
	Use:   "addDownloadCount",
	Short: "Add download count",
	Long:  `Add download count`,
	RunE: func(cmd *cobra.Command, args []string) error {
		publicDownloadCountLegacyService := &ugc.PublicDownloadCountLegacyService{
			Client:          ugc.NewUgcClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		contentId, _ := cmd.Flags().GetString("contentId")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &public_download_count_legacy.AddDownloadCountParams{
			ContentID: contentId,
			Namespace: namespace,
		}
		ok, errOK := publicDownloadCountLegacyService.AddDownloadCountShort(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	AddDownloadCountCmd.Flags().String("contentId", "", "Content id")
	_ = AddDownloadCountCmd.MarkFlagRequired("contentId")
	AddDownloadCountCmd.Flags().String("namespace", "", "Namespace")
	_ = AddDownloadCountCmd.MarkFlagRequired("namespace")
}
