// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package images

import (
	"encoding/json"
	"log/slog"

	ams "github.com/AccelByte/accelbyte-go-modular-sdk/ams-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/ams-sdk/pkg/amsclient/images"
	"github.com/AccelByte/accelbyte-go-modular-sdk/ams-sdk/pkg/amsclientmodels"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// ImagePatchCmd represents the ImagePatch command
var ImagePatchCmd = &cobra.Command{
	Use:   "imagePatch",
	Short: "Image patch",
	Long:  `Image patch`,
	RunE: func(cmd *cobra.Command, args []string) error {
		imagesService := &ams.ImagesService{
			Client:          ams.NewAmsClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *amsclientmodels.APIImageUpdate
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		imageID, _ := cmd.Flags().GetString("imageID")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &images.ImagePatchParams{
			Body:      body,
			ImageID:   imageID,
			Namespace: namespace,
		}
		ok, errOK := imagesService.ImagePatchShort(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	ImagePatchCmd.Flags().String("body", "", "Body")
	_ = ImagePatchCmd.MarkFlagRequired("body")
	ImagePatchCmd.Flags().String("imageID", "", "Image ID")
	_ = ImagePatchCmd.MarkFlagRequired("imageID")
	ImagePatchCmd.Flags().String("namespace", "", "Namespace")
	_ = ImagePatchCmd.MarkFlagRequired("namespace")
}
