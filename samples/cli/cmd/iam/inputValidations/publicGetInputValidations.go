// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package inputValidations

import (
	iam "github.com/AccelByte/accelbyte-go-modular-sdk/iam-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/iam-sdk/pkg/iamclient/input_validations"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// PublicGetInputValidationsCmd represents the PublicGetInputValidations command
var PublicGetInputValidationsCmd = &cobra.Command{
	Use:   "publicGetInputValidations",
	Short: "Public get input validations",
	Long:  `Public get input validations`,
	RunE: func(cmd *cobra.Command, args []string) error {
		inputValidationsService := &iam.InputValidationsService{
			Client:          iam.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		defaultOnEmpty, _ := cmd.Flags().GetBool("defaultOnEmpty")
		languageCode, _ := cmd.Flags().GetString("languageCode")
		input := &input_validations.PublicGetInputValidationsParams{
			DefaultOnEmpty: &defaultOnEmpty,
			LanguageCode:   &languageCode,
		}
		ok, errOK := inputValidationsService.PublicGetInputValidationsShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	PublicGetInputValidationsCmd.Flags().Bool("defaultOnEmpty", false, "Default on empty")
	PublicGetInputValidationsCmd.Flags().String("languageCode", "", "Language code")
}
