// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package plugins

import (
	"log/slog"

	challenge "github.com/AccelByte/accelbyte-go-modular-sdk/challenge-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/challenge-sdk/pkg/challengeclient/plugins"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// AdminDeleteAssignmentPluginCmd represents the AdminDeleteAssignmentPlugin command
var AdminDeleteAssignmentPluginCmd = &cobra.Command{
	Use:   "adminDeleteAssignmentPlugin",
	Short: "Admin delete assignment plugin",
	Long:  `Admin delete assignment plugin`,
	RunE: func(cmd *cobra.Command, args []string) error {
		pluginsService := &challenge.PluginsService{
			Client:          challenge.NewChallengeClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &plugins.AdminDeleteAssignmentPluginParams{
			Namespace: namespace,
		}
		errNoContent := pluginsService.AdminDeleteAssignmentPluginShort(input)
		if errNoContent != nil {
			slog.Error("operation failed", "error", errNoContent)

			return errNoContent
		}

		slog.Info("Response CLI success.")

		return nil
	},
}

func init() {
	AdminDeleteAssignmentPluginCmd.Flags().String("namespace", "", "Namespace")
	_ = AdminDeleteAssignmentPluginCmd.MarkFlagRequired("namespace")
}
