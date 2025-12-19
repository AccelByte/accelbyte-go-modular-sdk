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

// AcceptGroupJoinRequestPublicV1Cmd represents the AcceptGroupJoinRequestPublicV1 command
var AcceptGroupJoinRequestPublicV1Cmd = &cobra.Command{
	Use:   "acceptGroupJoinRequestPublicV1",
	Short: "Accept group join request public V1",
	Long:  `Accept group join request public V1`,
	RunE: func(cmd *cobra.Command, args []string) error {
		groupMemberService := &group.GroupMemberService{
			Client:          group.NewGroupClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &group_member.AcceptGroupJoinRequestPublicV1Params{
			Namespace: namespace,
			UserID:    userId,
		}
		ok, errOK := groupMemberService.AcceptGroupJoinRequestPublicV1Short(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	AcceptGroupJoinRequestPublicV1Cmd.Flags().String("namespace", "", "Namespace")
	_ = AcceptGroupJoinRequestPublicV1Cmd.MarkFlagRequired("namespace")
	AcceptGroupJoinRequestPublicV1Cmd.Flags().String("userId", "", "User id")
	_ = AcceptGroupJoinRequestPublicV1Cmd.MarkFlagRequired("userId")
}
