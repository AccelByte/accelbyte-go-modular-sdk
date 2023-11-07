// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package maxActive

import (
	session "github.com/AccelByte/accelbyte-go-modular-sdk/session-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/session-sdk/pkg/sessionclient/max_active"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// AdminGetMemberActiveSessionCmd represents the AdminGetMemberActiveSession command
var AdminGetMemberActiveSessionCmd = &cobra.Command{
	Use:   "adminGetMemberActiveSession",
	Short: "Admin get member active session",
	Long:  `Admin get member active session`,
	RunE: func(cmd *cobra.Command, args []string) error {
		maxActiveService := &session.MaxActiveService{
			Client:          session.NewSessionClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		name, _ := cmd.Flags().GetString("name")
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &max_active.AdminGetMemberActiveSessionParams{
			Name:      name,
			Namespace: namespace,
			UserID:    userId,
		}
		ok, errOK := maxActiveService.AdminGetMemberActiveSessionShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	AdminGetMemberActiveSessionCmd.Flags().String("name", "", "Name")
	_ = AdminGetMemberActiveSessionCmd.MarkFlagRequired("name")
	AdminGetMemberActiveSessionCmd.Flags().String("namespace", "", "Namespace")
	_ = AdminGetMemberActiveSessionCmd.MarkFlagRequired("namespace")
	AdminGetMemberActiveSessionCmd.Flags().String("userId", "", "User id")
	_ = AdminGetMemberActiveSessionCmd.MarkFlagRequired("userId")
}
