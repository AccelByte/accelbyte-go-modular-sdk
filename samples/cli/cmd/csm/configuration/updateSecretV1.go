// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package configuration

import (
	"encoding/json"

	csm "github.com/AccelByte/accelbyte-go-modular-sdk/csm-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/csm-sdk/pkg/csmclient/configuration"
	"github.com/AccelByte/accelbyte-go-modular-sdk/csm-sdk/pkg/csmclientmodels"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// UpdateSecretV1Cmd represents the UpdateSecretV1 command
var UpdateSecretV1Cmd = &cobra.Command{
	Use:   "updateSecretV1",
	Short: "Update secret V1",
	Long:  `Update secret V1`,
	RunE: func(cmd *cobra.Command, args []string) error {
		configurationService := &csm.ConfigurationService{
			Client:          csm.NewCsmClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *csmclientmodels.GeneratedUpdateConfigurationV1Request
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		app, _ := cmd.Flags().GetString("app")
		configId, _ := cmd.Flags().GetString("configId")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &configuration.UpdateSecretV1Params{
			Body:      body,
			App:       app,
			ConfigID:  configId,
			Namespace: namespace,
		}
		ok, errOK := configurationService.UpdateSecretV1Short(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	UpdateSecretV1Cmd.Flags().String("body", "", "Body")
	_ = UpdateSecretV1Cmd.MarkFlagRequired("body")
	UpdateSecretV1Cmd.Flags().String("app", "", "App")
	_ = UpdateSecretV1Cmd.MarkFlagRequired("app")
	UpdateSecretV1Cmd.Flags().String("configId", "", "Config id")
	_ = UpdateSecretV1Cmd.MarkFlagRequired("configId")
	UpdateSecretV1Cmd.Flags().String("namespace", "", "Namespace")
	_ = UpdateSecretV1Cmd.MarkFlagRequired("namespace")
}
