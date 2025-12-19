// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package images

import (
	"log/slog"

	ams "github.com/AccelByte/accelbyte-go-modular-sdk/ams-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/ams-sdk/pkg/amsclient/images"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// ImageMarkForDeletionCmd represents the ImageMarkForDeletion command
var ImageMarkForDeletionCmd = &cobra.Command{
	Use:   "imageMarkForDeletion",
	Short: "Image mark for deletion",
	Long:  `Image mark for deletion`,
	RunE: func(cmd *cobra.Command, args []string) error {
		imagesService := &ams.ImagesService{
			Client:          ams.NewAmsClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		imageID, _ := cmd.Flags().GetString("imageID")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &images.ImageMarkForDeletionParams{
			ImageID:   imageID,
			Namespace: namespace,
		}
		errAccepted := imagesService.ImageMarkForDeletionShort(input)
		if errAccepted != nil {
			slog.Error("operation failed", "error", errAccepted)

			return errAccepted
		}

		slog.Info("Response CLI success.")

		return nil
	},
}

func init() {
	ImageMarkForDeletionCmd.Flags().String("imageID", "", "Image ID")
	_ = ImageMarkForDeletionCmd.MarkFlagRequired("imageID")
	ImageMarkForDeletionCmd.Flags().String("namespace", "", "Namespace")
	_ = ImageMarkForDeletionCmd.MarkFlagRequired("namespace")
}
