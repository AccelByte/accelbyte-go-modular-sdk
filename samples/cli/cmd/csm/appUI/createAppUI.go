// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package appUI

import (
	"encoding/json"
	"log/slog"

	csm "github.com/AccelByte/accelbyte-go-modular-sdk/csm-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/csm-sdk/pkg/csmclient/app_ui"
	"github.com/AccelByte/accelbyte-go-modular-sdk/csm-sdk/pkg/csmclientmodels"
	sdkrepository "github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/repository"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// CreateAppUICmd represents the CreateAppUI command
var CreateAppUICmd = &cobra.Command{
	Use:   "createAppUI",
	Short: "Create app UI",
	Long:  `Create app UI`,
	RunE: func(cmd *cobra.Command, args []string) error {
		appUIService := &csm.AppUIService{
			Client: csm.NewCsmHttpClient(&repository.ConfigRepositoryImpl{}),
			Session: sdkrepository.Session{
				TokenRepository: &repository.TokenRepositoryImpl{},
			},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *csmclientmodels.ApimodelCreateAppUIRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &app_ui.CreateAppUIParams{
			Body:      body,
			Namespace: namespace,
		}
		created, errCreated := appUIService.CreateAppUIShort(input)
		if errCreated != nil {
			slog.Error("operation failed", "error", errCreated)

			return errCreated
		}

		slog.Info("Response CLI success", "response", created)

		return nil
	},
}

func init() {
	CreateAppUICmd.Flags().String("body", "", "Body")
	_ = CreateAppUICmd.MarkFlagRequired("body")
	CreateAppUICmd.Flags().String("namespace", "", "Namespace")
	_ = CreateAppUICmd.MarkFlagRequired("namespace")
}
