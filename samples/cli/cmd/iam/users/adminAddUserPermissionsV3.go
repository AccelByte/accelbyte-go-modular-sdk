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

// AdminAddUserPermissionsV3Cmd represents the AdminAddUserPermissionsV3 command
var AdminAddUserPermissionsV3Cmd = &cobra.Command{
	Use:   "adminAddUserPermissionsV3",
	Short: "Admin add user permissions V3",
	Long:  `Admin add user permissions V3`,
	RunE: func(cmd *cobra.Command, args []string) error {
		usersService := &iam.UsersService{
			Client:          iam.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *iamclientmodels.AccountcommonPermissions
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &users.AdminAddUserPermissionsV3Params{
			Body:      body,
			Namespace: namespace,
			UserID:    userId,
		}
		errNoContent := usersService.AdminAddUserPermissionsV3Short(input)
		if errNoContent != nil {
			logrus.Error(errNoContent)

			return errNoContent
		}

		logrus.Infof("Response CLI success.")

		return nil
	},
}

func init() {
	AdminAddUserPermissionsV3Cmd.Flags().String("body", "", "Body")
	_ = AdminAddUserPermissionsV3Cmd.MarkFlagRequired("body")
	AdminAddUserPermissionsV3Cmd.Flags().String("namespace", "", "Namespace")
	_ = AdminAddUserPermissionsV3Cmd.MarkFlagRequired("namespace")
	AdminAddUserPermissionsV3Cmd.Flags().String("userId", "", "User id")
	_ = AdminAddUserPermissionsV3Cmd.MarkFlagRequired("userId")
}
