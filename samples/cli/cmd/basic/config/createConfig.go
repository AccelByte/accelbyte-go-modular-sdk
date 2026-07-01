// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package config

import (
	"encoding/json"
	"log/slog"
"github.com/AccelByte/accelbyte-go-modular-sdk/basic-sdk/pkg/basicclient/config"
	"github.com/AccelByte/accelbyte-go-modular-sdk/basic-sdk/pkg/basicclientmodels"
	basic "github.com/AccelByte/accelbyte-go-modular-sdk/basic-sdk/pkg"
	sdkrepository "github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/repository"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// CreateConfigCmd represents the CreateConfig command
var CreateConfigCmd = &cobra.Command{
	Use:	"createConfig",
	Short:  "Create config",
	Long:   `Create config`,
	RunE: func(cmd *cobra.Command, args []string) error {
		configService := &basic.ConfigService{
			Client: basic.NewBasicHttpClient(&repository.ConfigRepositoryImpl{}),
			Session: sdkrepository.Session{
				TokenRepository: &repository.TokenRepositoryImpl{},
			},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		bodyString := cmd.Flag("body").Value.String()
		var body *basicclientmodels.ConfigCreate
errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		input := &config.CreateConfigParams{
			Body     : body,
			Namespace: namespace,
		}
created,errCreated := configService.CreateConfigShort(input)
		if errCreated != nil {
			slog.Error("operation failed", "error", errCreated)

			return errCreated
		}

        slog.Info("Response CLI success", "response", created)

		return nil
	},
}

func init() {
	CreateConfigCmd.Flags().String("body", "", "Body")
	CreateConfigCmd.Flags().String("namespace", "", "Namespace")
	_ = CreateConfigCmd.MarkFlagRequired("namespace")
}