// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package dsmcDefaultConfiguration

import (
	"log/slog"

	session "github.com/AccelByte/accelbyte-go-modular-sdk/session-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/session-sdk/pkg/sessionclient/d_s_m_c_default_configuration"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// AdminGetDSMCConfigurationDefaultCmd represents the AdminGetDSMCConfigurationDefault command
var AdminGetDSMCConfigurationDefaultCmd = &cobra.Command{
	Use:   "adminGetDSMCConfigurationDefault",
	Short: "Admin get DSMC configuration default",
	Long:  `Admin get DSMC configuration default`,
	RunE: func(cmd *cobra.Command, args []string) error {
		dsmcDefaultConfigurationService := &session.DSMCDefaultConfigurationService{
			Client:          session.NewSessionClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		input := &d_s_m_c_default_configuration.AdminGetDSMCConfigurationDefaultParams{}
		ok, errOK := dsmcDefaultConfigurationService.AdminGetDSMCConfigurationDefaultShort(input)
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
