// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package users

import (
	iam "github.com/AccelByte/accelbyte-go-modular-sdk/iam-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/iam-sdk/pkg/iamclient/users"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// GetUsersByLoginIdsCmd represents the GetUsersByLoginIds command
var GetUsersByLoginIdsCmd = &cobra.Command{
	Use:   "getUsersByLoginIds",
	Short: "Get users by login ids",
	Long:  `Get users by login ids`,
	RunE: func(cmd *cobra.Command, args []string) error {
		usersService := &iam.UsersService{
			Client:          iam.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		loginIds, _ := cmd.Flags().GetString("loginIds")
		input := &users.GetUsersByLoginIdsParams{
			Namespace: namespace,
			LoginIds:  &loginIds,
		}
		ok, errOK := usersService.GetUsersByLoginIdsShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	GetUsersByLoginIdsCmd.Flags().String("namespace", "", "Namespace")
	_ = GetUsersByLoginIdsCmd.MarkFlagRequired("namespace")
	GetUsersByLoginIdsCmd.Flags().String("loginIds", "", "Login ids")
}
