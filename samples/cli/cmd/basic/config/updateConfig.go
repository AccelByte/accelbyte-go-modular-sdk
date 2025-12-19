// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package config

import (
	"encoding/json"
	"log/slog"

	basic "github.com/AccelByte/accelbyte-go-modular-sdk/basic-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/basic-sdk/pkg/basicclient/config"
	"github.com/AccelByte/accelbyte-go-modular-sdk/basic-sdk/pkg/basicclientmodels"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// UpdateConfigCmd represents the UpdateConfig command
var UpdateConfigCmd = &cobra.Command{
	Use:   "updateConfig",
	Short: "Update config",
	Long:  `Update config`,
	RunE: func(cmd *cobra.Command, args []string) error {
		configService := &basic.ConfigService{
			Client:          basic.NewBasicClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		configKey, _ := cmd.Flags().GetString("configKey")
		namespace, _ := cmd.Flags().GetString("namespace")
		bodyString := cmd.Flag("body").Value.String()
		var body *basicclientmodels.ConfigUpdate
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		input := &config.UpdateConfigParams{
			Body:      body,
			ConfigKey: configKey,
			Namespace: namespace,
		}
		ok, errOK := configService.UpdateConfigShort(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	UpdateConfigCmd.Flags().String("body", "", "Body")
	UpdateConfigCmd.Flags().String("configKey", "", "Config key")
	_ = UpdateConfigCmd.MarkFlagRequired("configKey")
	UpdateConfigCmd.Flags().String("namespace", "", "Namespace")
	_ = UpdateConfigCmd.MarkFlagRequired("namespace")
}
