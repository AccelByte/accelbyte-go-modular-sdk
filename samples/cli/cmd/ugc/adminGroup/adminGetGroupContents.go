// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package adminGroup

import (
	"log/slog"

	ugc "github.com/AccelByte/accelbyte-go-modular-sdk/ugc-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/ugc-sdk/pkg/ugcclient/admin_group"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// AdminGetGroupContentsCmd represents the AdminGetGroupContents command
var AdminGetGroupContentsCmd = &cobra.Command{
	Use:   "adminGetGroupContents",
	Short: "Admin get group contents",
	Long:  `Admin get group contents`,
	RunE: func(cmd *cobra.Command, args []string) error {
		adminGroupService := &ugc.AdminGroupService{
			Client:          ugc.NewUgcClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		groupId, _ := cmd.Flags().GetString("groupId")
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		limit, _ := cmd.Flags().GetInt64("limit")
		offset, _ := cmd.Flags().GetInt64("offset")
		input := &admin_group.AdminGetGroupContentsParams{
			GroupID:   groupId,
			Namespace: namespace,
			UserID:    userId,
			Limit:     &limit,
			Offset:    &offset,
		}
		ok, errOK := adminGroupService.AdminGetGroupContentsShort(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	AdminGetGroupContentsCmd.Flags().String("groupId", "", "Group id")
	_ = AdminGetGroupContentsCmd.MarkFlagRequired("groupId")
	AdminGetGroupContentsCmd.Flags().String("namespace", "", "Namespace")
	_ = AdminGetGroupContentsCmd.MarkFlagRequired("namespace")
	AdminGetGroupContentsCmd.Flags().String("userId", "", "User id")
	_ = AdminGetGroupContentsCmd.MarkFlagRequired("userId")
	AdminGetGroupContentsCmd.Flags().Int64("limit", 20, "Limit")
	AdminGetGroupContentsCmd.Flags().Int64("offset", 0, "Offset")
}
