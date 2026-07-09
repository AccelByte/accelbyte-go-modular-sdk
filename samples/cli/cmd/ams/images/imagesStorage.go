// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package images

import (
	"log/slog"

	ams "github.com/AccelByte/accelbyte-go-modular-sdk/ams-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/ams-sdk/pkg/amsclient/images"
	sdkrepository "github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/repository"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// ImagesStorageCmd represents the ImagesStorage command
var ImagesStorageCmd = &cobra.Command{
	Use:   "imagesStorage",
	Short: "Images storage",
	Long:  `Images storage`,
	RunE: func(cmd *cobra.Command, args []string) error {
		imagesService := &ams.ImagesService{
			Client: ams.NewAmsHttpClient(&repository.ConfigRepositoryImpl{}),
			Session: sdkrepository.Session{
				TokenRepository: &repository.TokenRepositoryImpl{},
			},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &images.ImagesStorageParams{
			Namespace: namespace,
		}
		ok, errOK := imagesService.ImagesStorageShort(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	ImagesStorageCmd.Flags().String("namespace", "", "Namespace")
	_ = ImagesStorageCmd.MarkFlagRequired("namespace")
}
