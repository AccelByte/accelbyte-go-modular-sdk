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

// AdminGetGroupCmd represents the AdminGetGroup command
var AdminGetGroupCmd = &cobra.Command{
	Use:   "adminGetGroup",
	Short: "Admin get group",
	Long:  `Admin get group`,
	RunE: func(cmd *cobra.Command, args []string) error {
		adminGroupService := &ugc.AdminGroupService{
			Client:          ugc.NewUgcClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		groupId, _ := cmd.Flags().GetString("groupId")
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &admin_group.AdminGetGroupParams{
			GroupID:   groupId,
			Namespace: namespace,
			UserID:    userId,
		}
		ok, errOK := adminGroupService.AdminGetGroupShort(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	AdminGetGroupCmd.Flags().String("groupId", "", "Group id")
	_ = AdminGetGroupCmd.MarkFlagRequired("groupId")
	AdminGetGroupCmd.Flags().String("namespace", "", "Namespace")
	_ = AdminGetGroupCmd.MarkFlagRequired("namespace")
	AdminGetGroupCmd.Flags().String("userId", "", "User id")
	_ = AdminGetGroupCmd.MarkFlagRequired("userId")
}
