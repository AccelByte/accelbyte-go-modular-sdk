// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package groupRoles

import (
	"encoding/json"
	"log/slog"

	group "github.com/AccelByte/accelbyte-go-modular-sdk/group-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/group-sdk/pkg/groupclient/group_roles"
	"github.com/AccelByte/accelbyte-go-modular-sdk/group-sdk/pkg/groupclientmodels"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// UpdateMemberRoleAdminV1Cmd represents the UpdateMemberRoleAdminV1 command
var UpdateMemberRoleAdminV1Cmd = &cobra.Command{
	Use:   "updateMemberRoleAdminV1",
	Short: "Update member role admin V1",
	Long:  `Update member role admin V1`,
	RunE: func(cmd *cobra.Command, args []string) error {
		groupRolesService := &group.GroupRolesService{
			Client:          group.NewGroupClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *groupclientmodels.ModelsUpdateMemberRoleRequestV1
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		memberRoleId, _ := cmd.Flags().GetString("memberRoleId")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &group_roles.UpdateMemberRoleAdminV1Params{
			Body:         body,
			MemberRoleID: memberRoleId,
			Namespace:    namespace,
		}
		ok, errOK := groupRolesService.UpdateMemberRoleAdminV1Short(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	UpdateMemberRoleAdminV1Cmd.Flags().String("body", "", "Body")
	_ = UpdateMemberRoleAdminV1Cmd.MarkFlagRequired("body")
	UpdateMemberRoleAdminV1Cmd.Flags().String("memberRoleId", "", "Member role id")
	_ = UpdateMemberRoleAdminV1Cmd.MarkFlagRequired("memberRoleId")
	UpdateMemberRoleAdminV1Cmd.Flags().String("namespace", "", "Namespace")
	_ = UpdateMemberRoleAdminV1Cmd.MarkFlagRequired("namespace")
}
