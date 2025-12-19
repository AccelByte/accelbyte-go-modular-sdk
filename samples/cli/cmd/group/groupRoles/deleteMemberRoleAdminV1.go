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

// DeleteMemberRoleAdminV1Cmd represents the DeleteMemberRoleAdminV1 command
var DeleteMemberRoleAdminV1Cmd = &cobra.Command{
	Use:   "deleteMemberRoleAdminV1",
	Short: "Delete member role admin V1",
	Long:  `Delete member role admin V1`,
	RunE: func(cmd *cobra.Command, args []string) error {
		groupRolesService := &group.GroupRolesService{
			Client:          group.NewGroupClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		memberRoleId, _ := cmd.Flags().GetString("memberRoleId")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &group_roles.DeleteMemberRoleAdminV1Params{
			MemberRoleID: memberRoleId,
			Namespace:    namespace,
		}
		errNoContent := groupRolesService.DeleteMemberRoleAdminV1Short(input)
		if errNoContent != nil {
			slog.Error("operation failed", "error", errNoContent)

			return errNoContent
		}

		slog.Info("Response CLI success.")

		return nil
	},
}

func init() {
	DeleteMemberRoleAdminV1Cmd.Flags().String("memberRoleId", "", "Member role id")
	_ = DeleteMemberRoleAdminV1Cmd.MarkFlagRequired("memberRoleId")
	DeleteMemberRoleAdminV1Cmd.Flags().String("namespace", "", "Namespace")
	_ = DeleteMemberRoleAdminV1Cmd.MarkFlagRequired("namespace")
}
