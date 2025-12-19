// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package configurationV2

import (
	"encoding/json"
	"log/slog"

	csm "github.com/AccelByte/accelbyte-go-modular-sdk/csm-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/csm-sdk/pkg/csmclient/configuration_v2"
	"github.com/AccelByte/accelbyte-go-modular-sdk/csm-sdk/pkg/csmclientmodels"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// SaveSecretV2Cmd represents the SaveSecretV2 command
var SaveSecretV2Cmd = &cobra.Command{
	Use:   "saveSecretV2",
	Short: "Save secret V2",
	Long:  `Save secret V2`,
	RunE: func(cmd *cobra.Command, args []string) error {
		configurationV2Service := &csm.ConfigurationV2Service{
			Client:          csm.NewCsmClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *csmclientmodels.ApimodelSaveSecretConfigurationV2Request
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		app, _ := cmd.Flags().GetString("app")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &configuration_v2.SaveSecretV2Params{
			Body:      body,
			App:       app,
			Namespace: namespace,
		}
		ok, errOK := configurationV2Service.SaveSecretV2Short(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	SaveSecretV2Cmd.Flags().String("body", "", "Body")
	_ = SaveSecretV2Cmd.MarkFlagRequired("body")
	SaveSecretV2Cmd.Flags().String("app", "", "App")
	_ = SaveSecretV2Cmd.MarkFlagRequired("app")
	SaveSecretV2Cmd.Flags().String("namespace", "", "Namespace")
	_ = SaveSecretV2Cmd.MarkFlagRequired("namespace")
}
