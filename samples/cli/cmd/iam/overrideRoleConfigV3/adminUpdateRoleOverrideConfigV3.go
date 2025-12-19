// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package overrideRoleConfigV3

import (
	"encoding/json"
	"log/slog"

	iam "github.com/AccelByte/accelbyte-go-modular-sdk/iam-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/iam-sdk/pkg/iamclient/override_role_config_v3"
	"github.com/AccelByte/accelbyte-go-modular-sdk/iam-sdk/pkg/iamclientmodels"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// AdminUpdateRoleOverrideConfigV3Cmd represents the AdminUpdateRoleOverrideConfigV3 command
var AdminUpdateRoleOverrideConfigV3Cmd = &cobra.Command{
	Use:   "adminUpdateRoleOverrideConfigV3",
	Short: "Admin update role override config V3",
	Long:  `Admin update role override config V3`,
	RunE: func(cmd *cobra.Command, args []string) error {
		overrideRoleConfigV3Service := &iam.OverrideRoleConfigv3Service{
			Client:          iam.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *iamclientmodels.ModelRoleOverrideUpdateRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		identity, _ := cmd.Flags().GetString("identity")
		input := &override_role_config_v3.AdminUpdateRoleOverrideConfigV3Params{
			Body:      body,
			Namespace: namespace,
			Identity:  identity,
		}
		ok, errOK := overrideRoleConfigV3Service.AdminUpdateRoleOverrideConfigV3Short(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	AdminUpdateRoleOverrideConfigV3Cmd.Flags().String("body", "", "Body")
	_ = AdminUpdateRoleOverrideConfigV3Cmd.MarkFlagRequired("body")
	AdminUpdateRoleOverrideConfigV3Cmd.Flags().String("namespace", "", "Namespace")
	_ = AdminUpdateRoleOverrideConfigV3Cmd.MarkFlagRequired("namespace")
	AdminUpdateRoleOverrideConfigV3Cmd.Flags().String("identity", "", "Identity")
	_ = AdminUpdateRoleOverrideConfigV3Cmd.MarkFlagRequired("identity")
}
