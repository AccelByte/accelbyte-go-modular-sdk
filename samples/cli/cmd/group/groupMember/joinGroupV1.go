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

// JoinGroupV1Cmd represents the JoinGroupV1 command
var JoinGroupV1Cmd = &cobra.Command{
	Use:   "joinGroupV1",
	Short: "Join group V1",
	Long:  `Join group V1`,
	RunE: func(cmd *cobra.Command, args []string) error {
		groupMemberService := &group.GroupMemberService{
			Client:          group.NewGroupClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		groupId, _ := cmd.Flags().GetString("groupId")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &group_member.JoinGroupV1Params{
			GroupID:   groupId,
			Namespace: namespace,
		}
		created, errCreated := groupMemberService.JoinGroupV1Short(input)
		if errCreated != nil {
			slog.Error("operation failed", "error", errCreated)

			return errCreated
		}

		slog.Info("Response CLI success", "response", created)

		return nil
	},
}

func init() {
	JoinGroupV1Cmd.Flags().String("groupId", "", "Group id")
	_ = JoinGroupV1Cmd.MarkFlagRequired("groupId")
	JoinGroupV1Cmd.Flags().String("namespace", "", "Namespace")
	_ = JoinGroupV1Cmd.MarkFlagRequired("namespace")
}
