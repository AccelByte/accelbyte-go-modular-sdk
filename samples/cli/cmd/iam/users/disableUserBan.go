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

// DisableUserBanCmd represents the DisableUserBan command
var DisableUserBanCmd = &cobra.Command{
	Use:   "disableUserBan",
	Short: "Disable user ban",
	Long:  `Disable user ban`,
	RunE: func(cmd *cobra.Command, args []string) error {
		usersService := &iam.UsersService{
			Client:          iam.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		banId, _ := cmd.Flags().GetString("banId")
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &users.DisableUserBanParams{
			BanID:     banId,
			Namespace: namespace,
			UserID:    userId,
		}
		ok, errOK := usersService.DisableUserBanShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	DisableUserBanCmd.Flags().String("banId", "", "Ban id")
	_ = DisableUserBanCmd.MarkFlagRequired("banId")
	DisableUserBanCmd.Flags().String("namespace", "", "Namespace")
	_ = DisableUserBanCmd.MarkFlagRequired("namespace")
	DisableUserBanCmd.Flags().String("userId", "", "User id")
	_ = DisableUserBanCmd.MarkFlagRequired("userId")
}
