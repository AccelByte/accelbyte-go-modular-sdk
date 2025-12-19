// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package groupRoles

import (
	"log/slog"

	group "github.com/AccelByte/accelbyte-go-modular-sdk/group-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/group-sdk/pkg/groupclient/group_roles"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// GetMemberRolesListPublicV1Cmd represents the GetMemberRolesListPublicV1 command
var GetMemberRolesListPublicV1Cmd = &cobra.Command{
	Use:   "getMemberRolesListPublicV1",
	Short: "Get member roles list public V1",
	Long:  `Get member roles list public V1`,
	RunE: func(cmd *cobra.Command, args []string) error {
		groupRolesService := &group.GroupRolesService{
			Client:          group.NewGroupClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		limit, _ := cmd.Flags().GetInt64("limit")
		offset, _ := cmd.Flags().GetInt64("offset")
		input := &group_roles.GetMemberRolesListPublicV1Params{
			Namespace: namespace,
			Limit:     &limit,
			Offset:    &offset,
		}
		ok, errOK := groupRolesService.GetMemberRolesListPublicV1Short(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	GetMemberRolesListPublicV1Cmd.Flags().String("namespace", "", "Namespace")
	_ = GetMemberRolesListPublicV1Cmd.MarkFlagRequired("namespace")
	GetMemberRolesListPublicV1Cmd.Flags().Int64("limit", 20, "Limit")
	GetMemberRolesListPublicV1Cmd.Flags().Int64("offset", 0, "Offset")
}
