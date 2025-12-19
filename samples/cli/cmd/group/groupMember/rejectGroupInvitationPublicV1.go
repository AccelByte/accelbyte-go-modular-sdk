// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package groupMember

import (
	"log/slog"

	group "github.com/AccelByte/accelbyte-go-modular-sdk/group-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/group-sdk/pkg/groupclient/group_member"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// RejectGroupInvitationPublicV1Cmd represents the RejectGroupInvitationPublicV1 command
var RejectGroupInvitationPublicV1Cmd = &cobra.Command{
	Use:   "rejectGroupInvitationPublicV1",
	Short: "Reject group invitation public V1",
	Long:  `Reject group invitation public V1`,
	RunE: func(cmd *cobra.Command, args []string) error {
		groupMemberService := &group.GroupMemberService{
			Client:          group.NewGroupClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		groupId, _ := cmd.Flags().GetString("groupId")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &group_member.RejectGroupInvitationPublicV1Params{
			GroupID:   groupId,
			Namespace: namespace,
		}
		ok, errOK := groupMemberService.RejectGroupInvitationPublicV1Short(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	RejectGroupInvitationPublicV1Cmd.Flags().String("groupId", "", "Group id")
	_ = RejectGroupInvitationPublicV1Cmd.MarkFlagRequired("groupId")
	RejectGroupInvitationPublicV1Cmd.Flags().String("namespace", "", "Namespace")
	_ = RejectGroupInvitationPublicV1Cmd.MarkFlagRequired("namespace")
}
