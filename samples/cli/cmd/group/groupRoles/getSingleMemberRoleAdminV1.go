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

// GetSingleMemberRoleAdminV1Cmd represents the GetSingleMemberRoleAdminV1 command
var GetSingleMemberRoleAdminV1Cmd = &cobra.Command{
	Use:   "getSingleMemberRoleAdminV1",
	Short: "Get single member role admin V1",
	Long:  `Get single member role admin V1`,
	RunE: func(cmd *cobra.Command, args []string) error {
		groupRolesService := &group.GroupRolesService{
			Client:          group.NewGroupClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		memberRoleId, _ := cmd.Flags().GetString("memberRoleId")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &group_roles.GetSingleMemberRoleAdminV1Params{
			MemberRoleID: memberRoleId,
			Namespace:    namespace,
		}
		ok, errOK := groupRolesService.GetSingleMemberRoleAdminV1Short(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	GetSingleMemberRoleAdminV1Cmd.Flags().String("memberRoleId", "", "Member role id")
	_ = GetSingleMemberRoleAdminV1Cmd.MarkFlagRequired("memberRoleId")
	GetSingleMemberRoleAdminV1Cmd.Flags().String("namespace", "", "Namespace")
	_ = GetSingleMemberRoleAdminV1Cmd.MarkFlagRequired("namespace")
}
