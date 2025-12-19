// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package plugins

import (
	"encoding/json"
	"log/slog"

	challenge "github.com/AccelByte/accelbyte-go-modular-sdk/challenge-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/challenge-sdk/pkg/challengeclient/plugins"
	"github.com/AccelByte/accelbyte-go-modular-sdk/challenge-sdk/pkg/challengeclientmodels"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// AdminUpdateAssignmentPluginCmd represents the AdminUpdateAssignmentPlugin command
var AdminUpdateAssignmentPluginCmd = &cobra.Command{
	Use:   "adminUpdateAssignmentPlugin",
	Short: "Admin update assignment plugin",
	Long:  `Admin update assignment plugin`,
	RunE: func(cmd *cobra.Command, args []string) error {
		pluginsService := &challenge.PluginsService{
			Client:          challenge.NewChallengeClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *challengeclientmodels.ModelPluginAssignmentRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &plugins.AdminUpdateAssignmentPluginParams{
			Body:      body,
			Namespace: namespace,
		}
		ok, errOK := pluginsService.AdminUpdateAssignmentPluginShort(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	AdminUpdateAssignmentPluginCmd.Flags().String("body", "", "Body")
	_ = AdminUpdateAssignmentPluginCmd.MarkFlagRequired("body")
	AdminUpdateAssignmentPluginCmd.Flags().String("namespace", "", "Namespace")
	_ = AdminUpdateAssignmentPluginCmd.MarkFlagRequired("namespace")
}
