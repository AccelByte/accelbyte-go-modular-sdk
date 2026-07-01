// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package users

import (
	"encoding/json"
	"log/slog"
"github.com/AccelByte/accelbyte-go-modular-sdk/iam-sdk/pkg/iamclient/users"
	"github.com/AccelByte/accelbyte-go-modular-sdk/iam-sdk/pkg/iamclientmodels"
	iam "github.com/AccelByte/accelbyte-go-modular-sdk/iam-sdk/pkg"
	sdkrepository "github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/repository"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// PublicVerifyRegistrationCodeCmd represents the PublicVerifyRegistrationCode command
var PublicVerifyRegistrationCodeCmd = &cobra.Command{
	Use:	"publicVerifyRegistrationCode",
	Short:  "Public verify registration code",
	Long:   `Public verify registration code`,
	RunE: func(cmd *cobra.Command, args []string) error {
		usersService := &iam.UsersService{
			Client: iam.NewIamHttpClient(&repository.ConfigRepositoryImpl{}),
			Session: sdkrepository.Session{
				TokenRepository: &repository.TokenRepositoryImpl{},
			},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *iamclientmodels.ModelVerifyRegistrationCode
errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &users.PublicVerifyRegistrationCodeParams{
			Body     : body,
			Namespace: namespace,
		}
errNoContent := usersService.PublicVerifyRegistrationCodeShort(input)
		if errNoContent != nil {
			slog.Error("operation failed", "error", errNoContent)

			return errNoContent
		}

        slog.Info("Response CLI success.")

		return nil
	},
}

func init() {
	PublicVerifyRegistrationCodeCmd.Flags().String("body", "", "Body")
	_ = PublicVerifyRegistrationCodeCmd.MarkFlagRequired("body")
	PublicVerifyRegistrationCodeCmd.Flags().String("namespace", "", "Namespace")
	_ = PublicVerifyRegistrationCodeCmd.MarkFlagRequired("namespace")
}