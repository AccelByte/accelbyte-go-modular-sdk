// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package inputValidations

import (
	"log/slog"

	iam "github.com/AccelByte/accelbyte-go-modular-sdk/iam-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/iam-sdk/pkg/iamclient/input_validations"
	sdkrepository "github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/repository"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// PublicGetNamespaceScopedInputValidationByFieldCmd represents the PublicGetNamespaceScopedInputValidationByField command
var PublicGetNamespaceScopedInputValidationByFieldCmd = &cobra.Command{
	Use:   "publicGetNamespaceScopedInputValidationByField",
	Short: "Public get namespace scoped input validation by field",
	Long:  `Public get namespace scoped input validation by field`,
	RunE: func(cmd *cobra.Command, args []string) error {
		inputValidationsService := &iam.InputValidationsService{
			Client: iam.NewIamHttpClient(&repository.ConfigRepositoryImpl{}),
			Session: sdkrepository.Session{
				TokenRepository: &repository.TokenRepositoryImpl{},
			},
		}
		field, _ := cmd.Flags().GetString("field")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &input_validations.PublicGetNamespaceScopedInputValidationByFieldParams{
			Field:     field,
			Namespace: namespace,
		}
		ok, errOK := inputValidationsService.PublicGetNamespaceScopedInputValidationByFieldShort(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	PublicGetNamespaceScopedInputValidationByFieldCmd.Flags().String("field", "", "Field")
	_ = PublicGetNamespaceScopedInputValidationByFieldCmd.MarkFlagRequired("field")
	PublicGetNamespaceScopedInputValidationByFieldCmd.Flags().String("namespace", "", "Namespace")
	_ = PublicGetNamespaceScopedInputValidationByFieldCmd.MarkFlagRequired("namespace")
}
