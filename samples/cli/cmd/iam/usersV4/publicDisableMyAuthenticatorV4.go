// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package usersV4

import (
	"encoding/json"

	iam "github.com/AccelByte/accelbyte-go-modular-sdk/iam-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/iam-sdk/pkg/iamclient/users_v4"
	"github.com/AccelByte/accelbyte-go-modular-sdk/iam-sdk/pkg/iamclientmodels"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// PublicDisableMyAuthenticatorV4Cmd represents the PublicDisableMyAuthenticatorV4 command
var PublicDisableMyAuthenticatorV4Cmd = &cobra.Command{
	Use:   "publicDisableMyAuthenticatorV4",
	Short: "Public disable my authenticator V4",
	Long:  `Public disable my authenticator V4`,
	RunE: func(cmd *cobra.Command, args []string) error {
		usersV4Service := &iam.UsersV4Service{
			Client:          iam.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *iamclientmodels.ModelDisableMFARequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &users_v4.PublicDisableMyAuthenticatorV4Params{
			Body:      body,
			Namespace: namespace,
		}
		errNoContent := usersV4Service.PublicDisableMyAuthenticatorV4Short(input)
		if errNoContent != nil {
			logrus.Error(errNoContent)

			return errNoContent
		}

		logrus.Infof("Response CLI success.")

		return nil
	},
}

func init() {
	PublicDisableMyAuthenticatorV4Cmd.Flags().String("body", "", "Body")
	_ = PublicDisableMyAuthenticatorV4Cmd.MarkFlagRequired("body")
	PublicDisableMyAuthenticatorV4Cmd.Flags().String("namespace", "", "Namespace")
	_ = PublicDisableMyAuthenticatorV4Cmd.MarkFlagRequired("namespace")
}
