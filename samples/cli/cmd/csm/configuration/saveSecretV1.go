// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package configuration

import (
	"encoding/json"
	"log/slog"

	csm "github.com/AccelByte/accelbyte-go-modular-sdk/csm-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/csm-sdk/pkg/csmclient/configuration"
	"github.com/AccelByte/accelbyte-go-modular-sdk/csm-sdk/pkg/csmclientmodels"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// SaveSecretV1Cmd represents the SaveSecretV1 command
var SaveSecretV1Cmd = &cobra.Command{
	Use:   "saveSecretV1",
	Short: "Save secret V1",
	Long:  `Save secret V1`,
	RunE: func(cmd *cobra.Command, args []string) error {
		configurationService := &csm.ConfigurationService{
			Client:          csm.NewCsmClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *csmclientmodels.GeneratedSaveConfigurationV1Request
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		app, _ := cmd.Flags().GetString("app")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &configuration.SaveSecretV1Params{
			Body:      body,
			App:       app,
			Namespace: namespace,
		}
		ok, errOK := configurationService.SaveSecretV1Short(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	SaveSecretV1Cmd.Flags().String("body", "", "Body")
	_ = SaveSecretV1Cmd.MarkFlagRequired("body")
	SaveSecretV1Cmd.Flags().String("app", "", "App")
	_ = SaveSecretV1Cmd.MarkFlagRequired("app")
	SaveSecretV1Cmd.Flags().String("namespace", "", "Namespace")
	_ = SaveSecretV1Cmd.MarkFlagRequired("namespace")
}
