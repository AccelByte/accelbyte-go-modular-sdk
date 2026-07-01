// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package inputValidations

import (
	"encoding/json"
	"log/slog"
"github.com/AccelByte/accelbyte-go-modular-sdk/iam-sdk/pkg/iamclient/input_validations"
	"github.com/AccelByte/accelbyte-go-modular-sdk/iam-sdk/pkg/iamclientmodels"
	iam "github.com/AccelByte/accelbyte-go-modular-sdk/iam-sdk/pkg"
	sdkrepository "github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/repository"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// AdminUpdateInputValidationsCmd represents the AdminUpdateInputValidations command
var AdminUpdateInputValidationsCmd = &cobra.Command{
	Use:	"adminUpdateInputValidations",
	Short:  "Admin update input validations",
	Long:   `Admin update input validations`,
	RunE: func(cmd *cobra.Command, args []string) error {
		inputValidationsService := &iam.InputValidationsService{
			Client: iam.NewIamHttpClient(&repository.ConfigRepositoryImpl{}),
			Session: sdkrepository.Session{
				TokenRepository: &repository.TokenRepositoryImpl{},
			},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body []*iamclientmodels.ModelInputValidationUpdatePayload
errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		input := &input_validations.AdminUpdateInputValidationsParams{
			Body: body,
		}
errNoContent := inputValidationsService.AdminUpdateInputValidationsShort(input)
		if errNoContent != nil {
			slog.Error("operation failed", "error", errNoContent)

			return errNoContent
		}

        slog.Info("Response CLI success.")

		return nil
	},
}

func init() {
	AdminUpdateInputValidationsCmd.Flags().String("body", "", "Body")
	_ = AdminUpdateInputValidationsCmd.MarkFlagRequired("body")
}