// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package development

import (
	"log/slog"

	ams "github.com/AccelByte/accelbyte-go-modular-sdk/ams-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/ams-sdk/pkg/amsclient/development"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// DevelopmentServerConfigurationGetCmd represents the DevelopmentServerConfigurationGet command
var DevelopmentServerConfigurationGetCmd = &cobra.Command{
	Use:   "developmentServerConfigurationGet",
	Short: "Development server configuration get",
	Long:  `Development server configuration get`,
	RunE: func(cmd *cobra.Command, args []string) error {
		developmentService := &ams.DevelopmentService{
			Client:          ams.NewAmsClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		developmentServerConfigID, _ := cmd.Flags().GetString("developmentServerConfigID")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &development.DevelopmentServerConfigurationGetParams{
			DevelopmentServerConfigID: developmentServerConfigID,
			Namespace:                 namespace,
		}
		ok, errOK := developmentService.DevelopmentServerConfigurationGetShort(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	DevelopmentServerConfigurationGetCmd.Flags().String("developmentServerConfigID", "", "Development server config ID")
	_ = DevelopmentServerConfigurationGetCmd.MarkFlagRequired("developmentServerConfigID")
	DevelopmentServerConfigurationGetCmd.Flags().String("namespace", "", "Namespace")
	_ = DevelopmentServerConfigurationGetCmd.MarkFlagRequired("namespace")
}
