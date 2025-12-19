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

// AdminGetOfficialGroupContentsV2Cmd represents the AdminGetOfficialGroupContentsV2 command
var AdminGetOfficialGroupContentsV2Cmd = &cobra.Command{
	Use:   "adminGetOfficialGroupContentsV2",
	Short: "Admin get official group contents V2",
	Long:  `Admin get official group contents V2`,
	RunE: func(cmd *cobra.Command, args []string) error {
		adminGroupService := &ugc.AdminGroupService{
			Client:          ugc.NewUgcClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		groupId, _ := cmd.Flags().GetString("groupId")
		namespace, _ := cmd.Flags().GetString("namespace")
		limit, _ := cmd.Flags().GetInt64("limit")
		offset, _ := cmd.Flags().GetInt64("offset")
		input := &admin_group.AdminGetOfficialGroupContentsV2Params{
			GroupID:   groupId,
			Namespace: namespace,
			Limit:     &limit,
			Offset:    &offset,
		}
		ok, errOK := adminGroupService.AdminGetOfficialGroupContentsV2Short(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	AdminGetOfficialGroupContentsV2Cmd.Flags().String("groupId", "", "Group id")
	_ = AdminGetOfficialGroupContentsV2Cmd.MarkFlagRequired("groupId")
	AdminGetOfficialGroupContentsV2Cmd.Flags().String("namespace", "", "Namespace")
	_ = AdminGetOfficialGroupContentsV2Cmd.MarkFlagRequired("namespace")
	AdminGetOfficialGroupContentsV2Cmd.Flags().Int64("limit", 20, "Limit")
	AdminGetOfficialGroupContentsV2Cmd.Flags().Int64("offset", 0, "Offset")
}
