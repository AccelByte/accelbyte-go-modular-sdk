// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package users

import (
	"encoding/json"

	iam "github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/users"
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclientmodels"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// AdminGetBulkUserByEmailAddressV3Cmd represents the AdminGetBulkUserByEmailAddressV3 command
var AdminGetBulkUserByEmailAddressV3Cmd = &cobra.Command{
	Use:   "adminGetBulkUserByEmailAddressV3",
	Short: "Admin get bulk user by email address V3",
	Long:  `Admin get bulk user by email address V3`,
	RunE: func(cmd *cobra.Command, args []string) error {
		usersService := &iam.UsersService{
			Client:          iam.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *iamclientmodels.ModelListEmailAddressRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &users.AdminGetBulkUserByEmailAddressV3Params{
			Body:      body,
			Namespace: namespace,
		}
		ok, errOK := usersService.AdminGetBulkUserByEmailAddressV3Short(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	AdminGetBulkUserByEmailAddressV3Cmd.Flags().String("body", "", "Body")
	_ = AdminGetBulkUserByEmailAddressV3Cmd.MarkFlagRequired("body")
	AdminGetBulkUserByEmailAddressV3Cmd.Flags().String("namespace", "", "Namespace")
	_ = AdminGetBulkUserByEmailAddressV3Cmd.MarkFlagRequired("namespace")
}
