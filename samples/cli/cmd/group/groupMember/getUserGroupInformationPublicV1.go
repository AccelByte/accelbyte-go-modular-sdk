// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package groupMember

import (
	group "github.com/AccelByte/accelbyte-go-sdk/group-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-sdk/group-sdk/pkg/groupclient/group_member"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// GetUserGroupInformationPublicV1Cmd represents the GetUserGroupInformationPublicV1 command
var GetUserGroupInformationPublicV1Cmd = &cobra.Command{
	Use:   "getUserGroupInformationPublicV1",
	Short: "Get user group information public V1",
	Long:  `Get user group information public V1`,
	RunE: func(cmd *cobra.Command, args []string) error {
		groupMemberService := &group.GroupMemberService{
			Client:          group.NewGroupClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &group_member.GetUserGroupInformationPublicV1Params{
			Namespace: namespace,
			UserID:    userId,
		}
		ok, errOK := groupMemberService.GetUserGroupInformationPublicV1Short(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	GetUserGroupInformationPublicV1Cmd.Flags().String("namespace", "", "Namespace")
	_ = GetUserGroupInformationPublicV1Cmd.MarkFlagRequired("namespace")
	GetUserGroupInformationPublicV1Cmd.Flags().String("userId", "", "User id")
	_ = GetUserGroupInformationPublicV1Cmd.MarkFlagRequired("userId")
}
