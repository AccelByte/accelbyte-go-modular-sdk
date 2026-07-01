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

// AdminUpdateNamespaceScopedInputValidationsCmd represents the AdminUpdateNamespaceScopedInputValidations command
var AdminUpdateNamespaceScopedInputValidationsCmd = &cobra.Command{
	Use:	"adminUpdateNamespaceScopedInputValidations",
	Short:  "Admin update namespace scoped input validations",
	Long:   `Admin update namespace scoped input validations`,
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
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &input_validations.AdminUpdateNamespaceScopedInputValidationsParams{
			Body     : body,
			Namespace: namespace,
		}
errNoContent := inputValidationsService.AdminUpdateNamespaceScopedInputValidationsShort(input)
		if errNoContent != nil {
			slog.Error("operation failed", "error", errNoContent)

			return errNoContent
		}

        slog.Info("Response CLI success.")

		return nil
	},
}

func init() {
	AdminUpdateNamespaceScopedInputValidationsCmd.Flags().String("body", "", "Body")
	_ = AdminUpdateNamespaceScopedInputValidationsCmd.MarkFlagRequired("body")
	AdminUpdateNamespaceScopedInputValidationsCmd.Flags().String("namespace", "", "Namespace")
	_ = AdminUpdateNamespaceScopedInputValidationsCmd.MarkFlagRequired("namespace")
}