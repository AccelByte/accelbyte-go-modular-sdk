// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package environmentVariable

import (
	"log/slog"

	session "github.com/AccelByte/accelbyte-go-modular-sdk/session-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/session-sdk/pkg/sessionclient/environment_variable"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// AdminListEnvironmentVariablesCmd represents the AdminListEnvironmentVariables command
var AdminListEnvironmentVariablesCmd = &cobra.Command{
	Use:   "adminListEnvironmentVariables",
	Short: "Admin list environment variables",
	Long:  `Admin list environment variables`,
	RunE: func(cmd *cobra.Command, args []string) error {
		environmentVariableService := &session.EnvironmentVariableService{
			Client:          session.NewSessionClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		input := &environment_variable.AdminListEnvironmentVariablesParams{}
		ok, errOK := environmentVariableService.AdminListEnvironmentVariablesShort(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
}
