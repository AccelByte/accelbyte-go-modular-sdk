// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package imageConfig

import (
	"encoding/json"

	dsmc "github.com/AccelByte/accelbyte-go-modular-sdk/dsmc-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/dsmc-sdk/pkg/dsmcclient/image_config"
	"github.com/AccelByte/accelbyte-go-modular-sdk/dsmc-sdk/pkg/dsmcclientmodels"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// CreateImagePatchCmd represents the CreateImagePatch command
var CreateImagePatchCmd = &cobra.Command{
	Use:   "createImagePatch",
	Short: "Create image patch",
	Long:  `Create image patch`,
	RunE: func(cmd *cobra.Command, args []string) error {
		imageConfigService := &dsmc.ImageConfigService{
			Client:          dsmc.NewDsmcClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *dsmcclientmodels.ModelsCreateImagePatchRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		input := &image_config.CreateImagePatchParams{
			Body: body,
		}
		errCreated := imageConfigService.CreateImagePatchShort(input)
		if errCreated != nil {
			logrus.Error(errCreated)

			return errCreated
		}

		logrus.Infof("Response CLI success.")

		return nil
	},
}

func init() {
	CreateImagePatchCmd.Flags().String("body", "", "Body")
	_ = CreateImagePatchCmd.MarkFlagRequired("body")
}
