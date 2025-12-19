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

// SingleAdminGetAllGroupsCmd represents the SingleAdminGetAllGroups command
var SingleAdminGetAllGroupsCmd = &cobra.Command{
	Use:   "singleAdminGetAllGroups",
	Short: "Single admin get all groups",
	Long:  `Single admin get all groups`,
	RunE: func(cmd *cobra.Command, args []string) error {
		adminGroupService := &ugc.AdminGroupService{
			Client:          ugc.NewUgcClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		limit, _ := cmd.Flags().GetInt64("limit")
		offset, _ := cmd.Flags().GetInt64("offset")
		input := &admin_group.SingleAdminGetAllGroupsParams{
			Namespace: namespace,
			Limit:     &limit,
			Offset:    &offset,
		}
		ok, errOK := adminGroupService.SingleAdminGetAllGroupsShort(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	SingleAdminGetAllGroupsCmd.Flags().String("namespace", "", "Namespace")
	_ = SingleAdminGetAllGroupsCmd.MarkFlagRequired("namespace")
	SingleAdminGetAllGroupsCmd.Flags().Int64("limit", 20, "Limit")
	SingleAdminGetAllGroupsCmd.Flags().Int64("offset", 0, "Offset")
}
