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

// CancelGroupJoinRequestV1Cmd represents the CancelGroupJoinRequestV1 command
var CancelGroupJoinRequestV1Cmd = &cobra.Command{
	Use:   "cancelGroupJoinRequestV1",
	Short: "Cancel group join request V1",
	Long:  `Cancel group join request V1`,
	RunE: func(cmd *cobra.Command, args []string) error {
		groupMemberService := &group.GroupMemberService{
			Client:          group.NewGroupClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		groupId, _ := cmd.Flags().GetString("groupId")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &group_member.CancelGroupJoinRequestV1Params{
			GroupID:   groupId,
			Namespace: namespace,
		}
		ok, errOK := groupMemberService.CancelGroupJoinRequestV1Short(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	CancelGroupJoinRequestV1Cmd.Flags().String("groupId", "", "Group id")
	_ = CancelGroupJoinRequestV1Cmd.MarkFlagRequired("groupId")
	CancelGroupJoinRequestV1Cmd.Flags().String("namespace", "", "Namespace")
	_ = CancelGroupJoinRequestV1Cmd.MarkFlagRequired("namespace")
}
