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

// ImageUnmarkForDeletionCmd represents the ImageUnmarkForDeletion command
var ImageUnmarkForDeletionCmd = &cobra.Command{
	Use:   "imageUnmarkForDeletion",
	Short: "Image unmark for deletion",
	Long:  `Image unmark for deletion`,
	RunE: func(cmd *cobra.Command, args []string) error {
		imagesService := &ams.ImagesService{
			Client:          ams.NewAmsClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		imageID, _ := cmd.Flags().GetString("imageID")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &images.ImageUnmarkForDeletionParams{
			ImageID:   imageID,
			Namespace: namespace,
		}
		errAccepted := imagesService.ImageUnmarkForDeletionShort(input)
		if errAccepted != nil {
			slog.Error("operation failed", "error", errAccepted)

			return errAccepted
		}

		slog.Info("Response CLI success.")

		return nil
	},
}

func init() {
	ImageUnmarkForDeletionCmd.Flags().String("imageID", "", "Image ID")
	_ = ImageUnmarkForDeletionCmd.MarkFlagRequired("imageID")
	ImageUnmarkForDeletionCmd.Flags().String("namespace", "", "Namespace")
	_ = ImageUnmarkForDeletionCmd.MarkFlagRequired("namespace")
}
