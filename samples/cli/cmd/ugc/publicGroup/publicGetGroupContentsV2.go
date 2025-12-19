// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package publicGroup

import (
	"log/slog"

	ugc "github.com/AccelByte/accelbyte-go-modular-sdk/ugc-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/ugc-sdk/pkg/ugcclient/public_group"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// PublicGetGroupContentsV2Cmd represents the PublicGetGroupContentsV2 command
var PublicGetGroupContentsV2Cmd = &cobra.Command{
	Use:   "publicGetGroupContentsV2",
	Short: "Public get group contents V2",
	Long:  `Public get group contents V2`,
	RunE: func(cmd *cobra.Command, args []string) error {
		publicGroupService := &ugc.PublicGroupService{
			Client:          ugc.NewUgcClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		groupId, _ := cmd.Flags().GetString("groupId")
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		limit, _ := cmd.Flags().GetInt64("limit")
		offset, _ := cmd.Flags().GetInt64("offset")
		input := &public_group.PublicGetGroupContentsV2Params{
			GroupID:   groupId,
			Namespace: namespace,
			UserID:    userId,
			Limit:     &limit,
			Offset:    &offset,
		}
		ok, errOK := publicGroupService.PublicGetGroupContentsV2Short(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	PublicGetGroupContentsV2Cmd.Flags().String("groupId", "", "Group id")
	_ = PublicGetGroupContentsV2Cmd.MarkFlagRequired("groupId")
	PublicGetGroupContentsV2Cmd.Flags().String("namespace", "", "Namespace")
	_ = PublicGetGroupContentsV2Cmd.MarkFlagRequired("namespace")
	PublicGetGroupContentsV2Cmd.Flags().String("userId", "", "User id")
	_ = PublicGetGroupContentsV2Cmd.MarkFlagRequired("userId")
	PublicGetGroupContentsV2Cmd.Flags().Int64("limit", 20, "Limit")
	PublicGetGroupContentsV2Cmd.Flags().Int64("offset", 0, "Offset")
}
