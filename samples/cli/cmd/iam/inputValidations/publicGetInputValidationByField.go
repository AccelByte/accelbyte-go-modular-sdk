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

// PublicGetInputValidationByFieldCmd represents the PublicGetInputValidationByField command
var PublicGetInputValidationByFieldCmd = &cobra.Command{
	Use:   "publicGetInputValidationByField",
	Short: "Public get input validation by field",
	Long:  `Public get input validation by field`,
	RunE: func(cmd *cobra.Command, args []string) error {
		inputValidationsService := &iam.InputValidationsService{
			Client:          iam.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		field, _ := cmd.Flags().GetString("field")
		input := &input_validations.PublicGetInputValidationByFieldParams{
			Field: field,
		}
		ok, errOK := inputValidationsService.PublicGetInputValidationByFieldShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	PublicGetInputValidationByFieldCmd.Flags().String("field", "", "Field")
	_ = PublicGetInputValidationByFieldCmd.MarkFlagRequired("field")
}
