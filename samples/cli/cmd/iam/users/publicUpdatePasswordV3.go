// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package users

import (
	"encoding/json"

	iam "github.com/AccelByte/accelbyte-go-modular-sdk/iam-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/iam-sdk/pkg/iamclient/users"
	"github.com/AccelByte/accelbyte-go-modular-sdk/iam-sdk/pkg/iamclientmodels"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// PublicUpdatePasswordV3Cmd represents the PublicUpdatePasswordV3 command
var PublicUpdatePasswordV3Cmd = &cobra.Command{
	Use:   "publicUpdatePasswordV3",
	Short: "Public update password V3",
	Long:  `Public update password V3`,
	RunE: func(cmd *cobra.Command, args []string) error {
		usersService := &iam.UsersService{
			Client:          iam.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *iamclientmodels.ModelUserPasswordUpdateV3Request
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &users.PublicUpdatePasswordV3Params{
			Body:      body,
			Namespace: namespace,
		}
		errNoContent := usersService.PublicUpdatePasswordV3Short(input)
		if errNoContent != nil {
			logrus.Error(errNoContent)

			return errNoContent
		}

		logrus.Infof("Response CLI success.")

		return nil
	},
}

func init() {
	PublicUpdatePasswordV3Cmd.Flags().String("body", "", "Body")
	_ = PublicUpdatePasswordV3Cmd.MarkFlagRequired("body")
	PublicUpdatePasswordV3Cmd.Flags().String("namespace", "", "Namespace")
	_ = PublicUpdatePasswordV3Cmd.MarkFlagRequired("namespace")
}
