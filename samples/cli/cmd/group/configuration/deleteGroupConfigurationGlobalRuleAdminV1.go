// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package configuration

import (
	"log/slog"

	group "github.com/AccelByte/accelbyte-go-modular-sdk/group-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/group-sdk/pkg/groupclient/configuration"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// DeleteGroupConfigurationGlobalRuleAdminV1Cmd represents the DeleteGroupConfigurationGlobalRuleAdminV1 command
var DeleteGroupConfigurationGlobalRuleAdminV1Cmd = &cobra.Command{
	Use:   "deleteGroupConfigurationGlobalRuleAdminV1",
	Short: "Delete group configuration global rule admin V1",
	Long:  `Delete group configuration global rule admin V1`,
	RunE: func(cmd *cobra.Command, args []string) error {
		configurationService := &group.ConfigurationService{
			Client:          group.NewGroupClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		allowedAction, _ := cmd.Flags().GetString("allowedAction")
		configurationCode, _ := cmd.Flags().GetString("configurationCode")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &configuration.DeleteGroupConfigurationGlobalRuleAdminV1Params{
			AllowedAction:     allowedAction,
			ConfigurationCode: configurationCode,
			Namespace:         namespace,
		}
		ok, errOK := configurationService.DeleteGroupConfigurationGlobalRuleAdminV1Short(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	DeleteGroupConfigurationGlobalRuleAdminV1Cmd.Flags().String("allowedAction", "", "Allowed action")
	_ = DeleteGroupConfigurationGlobalRuleAdminV1Cmd.MarkFlagRequired("allowedAction")
	DeleteGroupConfigurationGlobalRuleAdminV1Cmd.Flags().String("configurationCode", "", "Configuration code")
	_ = DeleteGroupConfigurationGlobalRuleAdminV1Cmd.MarkFlagRequired("configurationCode")
	DeleteGroupConfigurationGlobalRuleAdminV1Cmd.Flags().String("namespace", "", "Namespace")
	_ = DeleteGroupConfigurationGlobalRuleAdminV1Cmd.MarkFlagRequired("namespace")
}
