// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package memberRequest

import (
	"log/slog"

	group "github.com/AccelByte/accelbyte-go-modular-sdk/group-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/group-sdk/pkg/groupclient/member_request"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// GetGroupJoinRequestPublicV2Cmd represents the GetGroupJoinRequestPublicV2 command
var GetGroupJoinRequestPublicV2Cmd = &cobra.Command{
	Use:   "getGroupJoinRequestPublicV2",
	Short: "Get group join request public V2",
	Long:  `Get group join request public V2`,
	RunE: func(cmd *cobra.Command, args []string) error {
		memberRequestService := &group.MemberRequestService{
			Client:          group.NewGroupClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		groupId, _ := cmd.Flags().GetString("groupId")
		namespace, _ := cmd.Flags().GetString("namespace")
		limit, _ := cmd.Flags().GetInt64("limit")
		offset, _ := cmd.Flags().GetInt64("offset")
		input := &member_request.GetGroupJoinRequestPublicV2Params{
			GroupID:   groupId,
			Namespace: namespace,
			Limit:     &limit,
			Offset:    &offset,
		}
		ok, errOK := memberRequestService.GetGroupJoinRequestPublicV2Short(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	GetGroupJoinRequestPublicV2Cmd.Flags().String("groupId", "", "Group id")
	_ = GetGroupJoinRequestPublicV2Cmd.MarkFlagRequired("groupId")
	GetGroupJoinRequestPublicV2Cmd.Flags().String("namespace", "", "Namespace")
	_ = GetGroupJoinRequestPublicV2Cmd.MarkFlagRequired("namespace")
	GetGroupJoinRequestPublicV2Cmd.Flags().Int64("limit", 20, "Limit")
	GetGroupJoinRequestPublicV2Cmd.Flags().Int64("offset", 0, "Offset")
}
