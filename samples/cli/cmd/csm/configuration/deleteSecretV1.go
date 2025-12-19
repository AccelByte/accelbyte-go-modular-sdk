// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package configuration

import (
	"log/slog"

	csm "github.com/AccelByte/accelbyte-go-modular-sdk/csm-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/csm-sdk/pkg/csmclient/configuration"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// DeleteSecretV1Cmd represents the DeleteSecretV1 command
var DeleteSecretV1Cmd = &cobra.Command{
	Use:   "deleteSecretV1",
	Short: "Delete secret V1",
	Long:  `Delete secret V1`,
	RunE: func(cmd *cobra.Command, args []string) error {
		configurationService := &csm.ConfigurationService{
			Client:          csm.NewCsmClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		app, _ := cmd.Flags().GetString("app")
		configId, _ := cmd.Flags().GetString("configId")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &configuration.DeleteSecretV1Params{
			App:       app,
			ConfigID:  configId,
			Namespace: namespace,
		}
		errNoContent := configurationService.DeleteSecretV1Short(input)
		if errNoContent != nil {
			slog.Error("operation failed", "error", errNoContent)

			return errNoContent
		}

		slog.Info("Response CLI success.")

		return nil
	},
}

func init() {
	DeleteSecretV1Cmd.Flags().String("app", "", "App")
	_ = DeleteSecretV1Cmd.MarkFlagRequired("app")
	DeleteSecretV1Cmd.Flags().String("configId", "", "Config id")
	_ = DeleteSecretV1Cmd.MarkFlagRequired("configId")
	DeleteSecretV1Cmd.Flags().String("namespace", "", "Namespace")
	_ = DeleteSecretV1Cmd.MarkFlagRequired("namespace")
}
