// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package roles

import (
	iam "github.com/AccelByte/accelbyte-go-modular-sdk/iam-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/iam-sdk/pkg/iamclient/roles"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// PublicGetRoleV3Cmd represents the PublicGetRoleV3 command
var PublicGetRoleV3Cmd = &cobra.Command{
	Use:   "publicGetRoleV3",
	Short: "Public get role V3",
	Long:  `Public get role V3`,
	RunE: func(cmd *cobra.Command, args []string) error {
		rolesService := &iam.RolesService{
			Client:          iam.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		roleId, _ := cmd.Flags().GetString("roleId")
		input := &roles.PublicGetRoleV3Params{
			RoleID: roleId,
		}
		ok, errOK := rolesService.PublicGetRoleV3Short(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	PublicGetRoleV3Cmd.Flags().String("roleId", "", "Role id")
	_ = PublicGetRoleV3Cmd.MarkFlagRequired("roleId")
}
