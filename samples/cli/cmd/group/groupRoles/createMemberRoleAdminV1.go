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

// CreateMemberRoleAdminV1Cmd represents the CreateMemberRoleAdminV1 command
var CreateMemberRoleAdminV1Cmd = &cobra.Command{
	Use:   "createMemberRoleAdminV1",
	Short: "Create member role admin V1",
	Long:  `Create member role admin V1`,
	RunE: func(cmd *cobra.Command, args []string) error {
		groupRolesService := &group.GroupRolesService{
			Client:          group.NewGroupClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *groupclientmodels.ModelsCreateMemberRoleRequestV1
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &group_roles.CreateMemberRoleAdminV1Params{
			Body:      body,
			Namespace: namespace,
		}
		created, errCreated := groupRolesService.CreateMemberRoleAdminV1Short(input)
		if errCreated != nil {
			slog.Error("operation failed", "error", errCreated)

			return errCreated
		}

		slog.Info("Response CLI success", "response", created)

		return nil
	},
}

func init() {
	CreateMemberRoleAdminV1Cmd.Flags().String("body", "", "Body")
	_ = CreateMemberRoleAdminV1Cmd.MarkFlagRequired("body")
	CreateMemberRoleAdminV1Cmd.Flags().String("namespace", "", "Namespace")
	_ = CreateMemberRoleAdminV1Cmd.MarkFlagRequired("namespace")
}
