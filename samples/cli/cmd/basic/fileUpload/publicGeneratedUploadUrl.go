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

// PublicGeneratedUploadUrlCmd represents the PublicGeneratedUploadUrl command
var PublicGeneratedUploadUrlCmd = &cobra.Command{
	Use:   "publicGeneratedUploadUrl",
	Short: "Public generated upload url",
	Long:  `Public generated upload url`,
	RunE: func(cmd *cobra.Command, args []string) error {
		fileUploadService := &basic.FileUploadService{
			Client:          basic.NewBasicClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		folder, _ := cmd.Flags().GetString("folder")
		namespace, _ := cmd.Flags().GetString("namespace")
		fileType, _ := cmd.Flags().GetString("fileType")
		input := &file_upload.PublicGeneratedUploadURLParams{
			Folder:    folder,
			Namespace: namespace,
			FileType:  fileType,
		}
		ok, errOK := fileUploadService.PublicGeneratedUploadURLShort(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	PublicGeneratedUploadUrlCmd.Flags().String("folder", "", "Folder")
	_ = PublicGeneratedUploadUrlCmd.MarkFlagRequired("folder")
	PublicGeneratedUploadUrlCmd.Flags().String("namespace", "", "Namespace")
	_ = PublicGeneratedUploadUrlCmd.MarkFlagRequired("namespace")
	PublicGeneratedUploadUrlCmd.Flags().String("fileType", "", "File type")
	_ = PublicGeneratedUploadUrlCmd.MarkFlagRequired("fileType")
}
