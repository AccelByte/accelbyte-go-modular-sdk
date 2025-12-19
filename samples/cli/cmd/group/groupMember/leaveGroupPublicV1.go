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

// LeaveGroupPublicV1Cmd represents the LeaveGroupPublicV1 command
var LeaveGroupPublicV1Cmd = &cobra.Command{
	Use:   "leaveGroupPublicV1",
	Short: "Leave group public V1",
	Long:  `Leave group public V1`,
	RunE: func(cmd *cobra.Command, args []string) error {
		groupMemberService := &group.GroupMemberService{
			Client:          group.NewGroupClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &group_member.LeaveGroupPublicV1Params{
			Namespace: namespace,
		}
		ok, errOK := groupMemberService.LeaveGroupPublicV1Short(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	LeaveGroupPublicV1Cmd.Flags().String("namespace", "", "Namespace")
	_ = LeaveGroupPublicV1Cmd.MarkFlagRequired("namespace")
}
