// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package fileUpload

import (
	"log/slog"

	basic "github.com/AccelByte/accelbyte-go-modular-sdk/basic-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/basic-sdk/pkg/basicclient/file_upload"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// GeneratedUploadUrlCmd represents the GeneratedUploadUrl command
var GeneratedUploadUrlCmd = &cobra.Command{
	Use:   "generatedUploadUrl",
	Short: "Generated upload url",
	Long:  `Generated upload url`,
	RunE: func(cmd *cobra.Command, args []string) error {
		fileUploadService := &basic.FileUploadService{
			Client:          basic.NewBasicClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		folder, _ := cmd.Flags().GetString("folder")
		namespace, _ := cmd.Flags().GetString("namespace")
		fileType, _ := cmd.Flags().GetString("fileType")
		input := &file_upload.GeneratedUploadURLParams{
			Folder:    folder,
			Namespace: namespace,
			FileType:  fileType,
		}
		ok, errOK := fileUploadService.GeneratedUploadURLShort(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	GeneratedUploadUrlCmd.Flags().String("folder", "", "Folder")
	_ = GeneratedUploadUrlCmd.MarkFlagRequired("folder")
	GeneratedUploadUrlCmd.Flags().String("namespace", "", "Namespace")
	_ = GeneratedUploadUrlCmd.MarkFlagRequired("namespace")
	GeneratedUploadUrlCmd.Flags().String("fileType", "", "File type")
	_ = GeneratedUploadUrlCmd.MarkFlagRequired("fileType")
}
