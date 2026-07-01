// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package inputValidations

import (
	"log/slog"
"github.com/AccelByte/accelbyte-go-modular-sdk/iam-sdk/pkg/iamclient/input_validations"
	iam "github.com/AccelByte/accelbyte-go-modular-sdk/iam-sdk/pkg"
	sdkrepository "github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/repository"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// AdminResetInputValidationsCmd represents the AdminResetInputValidations command
var AdminResetInputValidationsCmd = &cobra.Command{
	Use:	"adminResetInputValidations",
	Short:  "Admin reset input validations",
	Long:   `Admin reset input validations`,
	RunE: func(cmd *cobra.Command, args []string) error {
		inputValidationsService := &iam.InputValidationsService{
			Client: iam.NewIamHttpClient(&repository.ConfigRepositoryImpl{}),
			Session: sdkrepository.Session{
				TokenRepository: &repository.TokenRepositoryImpl{},
			},
		}
		field, _ := cmd.Flags().GetString("field")
		input := &input_validations.AdminResetInputValidationsParams{
			Field: field,
		}
errNoContent := inputValidationsService.AdminResetInputValidationsShort(input)
		if errNoContent != nil {
			slog.Error("operation failed", "error", errNoContent)

			return errNoContent
		}

        slog.Info("Response CLI success.")

		return nil
	},
}

func init() {
	AdminResetInputValidationsCmd.Flags().String("field", "", "Field")
	_ = AdminResetInputValidationsCmd.MarkFlagRequired("field")
}