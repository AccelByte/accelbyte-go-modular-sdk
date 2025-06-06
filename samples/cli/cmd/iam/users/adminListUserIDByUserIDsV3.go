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

// AdminListUserIDByUserIDsV3Cmd represents the AdminListUserIDByUserIDsV3 command
var AdminListUserIDByUserIDsV3Cmd = &cobra.Command{
	Use:   "adminListUserIDByUserIDsV3",
	Short: "Admin list user ID by user I ds V3",
	Long:  `Admin list user ID by user I ds V3`,
	RunE: func(cmd *cobra.Command, args []string) error {
		usersService := &iam.UsersService{
			Client:          iam.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *iamclientmodels.ModelAdminBulkUserRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &users.AdminListUserIDByUserIDsV3Params{
			Body:      body,
			Namespace: namespace,
		}
		ok, errOK := usersService.AdminListUserIDByUserIDsV3Short(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	AdminListUserIDByUserIDsV3Cmd.Flags().String("body", "", "Body")
	_ = AdminListUserIDByUserIDsV3Cmd.MarkFlagRequired("body")
	AdminListUserIDByUserIDsV3Cmd.Flags().String("namespace", "", "Namespace")
	_ = AdminListUserIDByUserIDsV3Cmd.MarkFlagRequired("namespace")
}
