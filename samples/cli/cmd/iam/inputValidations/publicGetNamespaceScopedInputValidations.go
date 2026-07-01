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

// PublicGetNamespaceScopedInputValidationsCmd represents the PublicGetNamespaceScopedInputValidations command
var PublicGetNamespaceScopedInputValidationsCmd = &cobra.Command{
	Use:   "publicGetNamespaceScopedInputValidations",
	Short: "Public get namespace scoped input validations",
	Long:  `Public get namespace scoped input validations`,
	RunE: func(cmd *cobra.Command, args []string) error {
		inputValidationsService := &iam.InputValidationsService{
			Client: iam.NewIamHttpClient(&repository.ConfigRepositoryImpl{}),
			Session: sdkrepository.Session{
				TokenRepository: &repository.TokenRepositoryImpl{},
			},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		defaultOnEmpty, _ := cmd.Flags().GetBool("defaultOnEmpty")
		languageCode, _ := cmd.Flags().GetString("languageCode")
		input := &input_validations.PublicGetNamespaceScopedInputValidationsParams{
			Namespace:      namespace,
			DefaultOnEmpty: &defaultOnEmpty,
			LanguageCode:   &languageCode,
		}
		ok, errOK := inputValidationsService.PublicGetNamespaceScopedInputValidationsShort(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	PublicGetNamespaceScopedInputValidationsCmd.Flags().String("namespace", "", "Namespace")
	_ = PublicGetNamespaceScopedInputValidationsCmd.MarkFlagRequired("namespace")
	PublicGetNamespaceScopedInputValidationsCmd.Flags().Bool("defaultOnEmpty", false, "Default on empty")
	PublicGetNamespaceScopedInputValidationsCmd.Flags().String("languageCode", "", "Language code")
}
