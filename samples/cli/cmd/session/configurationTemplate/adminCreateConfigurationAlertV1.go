// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package configurationTemplate

import (
	"encoding/json"
	"log/slog"

	session "github.com/AccelByte/accelbyte-go-modular-sdk/session-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/session-sdk/pkg/sessionclient/configuration_template"
	"github.com/AccelByte/accelbyte-go-modular-sdk/session-sdk/pkg/sessionclientmodels"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// AdminCreateConfigurationAlertV1Cmd represents the AdminCreateConfigurationAlertV1 command
var AdminCreateConfigurationAlertV1Cmd = &cobra.Command{
	Use:   "adminCreateConfigurationAlertV1",
	Short: "Admin create configuration alert V1",
	Long:  `Admin create configuration alert V1`,
	RunE: func(cmd *cobra.Command, args []string) error {
		configurationTemplateService := &session.ConfigurationTemplateService{
			Client:          session.NewSessionClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *sessionclientmodels.ApimodelsConfigAlertRequestCreate
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &configuration_template.AdminCreateConfigurationAlertV1Params{
			Body:      body,
			Namespace: namespace,
		}
		created, errCreated := configurationTemplateService.AdminCreateConfigurationAlertV1Short(input)
		if errCreated != nil {
			slog.Error("operation failed", "error", errCreated)

			return errCreated
		}

		slog.Info("Response CLI success", "response", created)

		return nil
	},
}

func init() {
	AdminCreateConfigurationAlertV1Cmd.Flags().String("body", "", "Body")
	_ = AdminCreateConfigurationAlertV1Cmd.MarkFlagRequired("body")
	AdminCreateConfigurationAlertV1Cmd.Flags().String("namespace", "", "Namespace")
	_ = AdminCreateConfigurationAlertV1Cmd.MarkFlagRequired("namespace")
}
