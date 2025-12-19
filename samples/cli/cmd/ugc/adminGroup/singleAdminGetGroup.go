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

// SingleAdminGetGroupCmd represents the SingleAdminGetGroup command
var SingleAdminGetGroupCmd = &cobra.Command{
	Use:   "singleAdminGetGroup",
	Short: "Single admin get group",
	Long:  `Single admin get group`,
	RunE: func(cmd *cobra.Command, args []string) error {
		adminGroupService := &ugc.AdminGroupService{
			Client:          ugc.NewUgcClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		groupId, _ := cmd.Flags().GetString("groupId")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &admin_group.SingleAdminGetGroupParams{
			GroupID:   groupId,
			Namespace: namespace,
		}
		ok, errOK := adminGroupService.SingleAdminGetGroupShort(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	SingleAdminGetGroupCmd.Flags().String("groupId", "", "Group id")
	_ = SingleAdminGetGroupCmd.MarkFlagRequired("groupId")
	SingleAdminGetGroupCmd.Flags().String("namespace", "", "Namespace")
	_ = SingleAdminGetGroupCmd.MarkFlagRequired("namespace")
}
