// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package groupMember

import (
	group "github.com/AccelByte/accelbyte-go-modular-sdk/group-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/group-sdk/pkg/groupclient/group_member"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// AcceptGroupInvitationPublicV2Cmd represents the AcceptGroupInvitationPublicV2 command
var AcceptGroupInvitationPublicV2Cmd = &cobra.Command{
	Use:   "acceptGroupInvitationPublicV2",
	Short: "Accept group invitation public V2",
	Long:  `Accept group invitation public V2`,
	RunE: func(cmd *cobra.Command, args []string) error {
		groupMemberService := &group.GroupMemberService{
			Client:          group.NewGroupClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		groupId, _ := cmd.Flags().GetString("groupId")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &group_member.AcceptGroupInvitationPublicV2Params{
			GroupID:   groupId,
			Namespace: namespace,
		}
		ok, errOK := groupMemberService.AcceptGroupInvitationPublicV2Short(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	AcceptGroupInvitationPublicV2Cmd.Flags().String("groupId", "", "Group id")
	_ = AcceptGroupInvitationPublicV2Cmd.MarkFlagRequired("groupId")
	AcceptGroupInvitationPublicV2Cmd.Flags().String("namespace", "", "Namespace")
	_ = AcceptGroupInvitationPublicV2Cmd.MarkFlagRequired("namespace")
}
