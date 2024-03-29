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

// ListAdminsV3Cmd represents the ListAdminsV3 command
var ListAdminsV3Cmd = &cobra.Command{
	Use:   "listAdminsV3",
	Short: "List admins V3",
	Long:  `List admins V3`,
	RunE: func(cmd *cobra.Command, args []string) error {
		usersService := &iam.UsersService{
			Client:          iam.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		after, _ := cmd.Flags().GetString("after")
		before, _ := cmd.Flags().GetString("before")
		endDate, _ := cmd.Flags().GetString("endDate")
		limit, _ := cmd.Flags().GetInt64("limit")
		query, _ := cmd.Flags().GetString("query")
		roleId, _ := cmd.Flags().GetString("roleId")
		startDate, _ := cmd.Flags().GetString("startDate")
		input := &users.ListAdminsV3Params{
			Namespace: namespace,
			After:     &after,
			Before:    &before,
			EndDate:   &endDate,
			Limit:     &limit,
			Query:     &query,
			RoleID:    &roleId,
			StartDate: &startDate,
		}
		ok, errOK := usersService.ListAdminsV3Short(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	ListAdminsV3Cmd.Flags().String("namespace", "", "Namespace")
	_ = ListAdminsV3Cmd.MarkFlagRequired("namespace")
	ListAdminsV3Cmd.Flags().String("after", "0", "After")
	ListAdminsV3Cmd.Flags().String("before", "0", "Before")
	ListAdminsV3Cmd.Flags().String("endDate", "", "End date")
	ListAdminsV3Cmd.Flags().Int64("limit", 20, "Limit")
	ListAdminsV3Cmd.Flags().String("query", "", "Query")
	ListAdminsV3Cmd.Flags().String("roleId", "", "Role id")
	ListAdminsV3Cmd.Flags().String("startDate", "", "Start date")
}
