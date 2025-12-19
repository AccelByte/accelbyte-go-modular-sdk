// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package config

import (
	"encoding/json"
	"log/slog"

	lobby "github.com/AccelByte/accelbyte-go-modular-sdk/lobby-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/lobby-sdk/pkg/lobbyclient/config"
	"github.com/AccelByte/accelbyte-go-modular-sdk/lobby-sdk/pkg/lobbyclientmodels"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// AdminUpdateConfigV1Cmd represents the AdminUpdateConfigV1 command
var AdminUpdateConfigV1Cmd = &cobra.Command{
	Use:   "adminUpdateConfigV1",
	Short: "Admin update config V1",
	Long:  `Admin update config V1`,
	RunE: func(cmd *cobra.Command, args []string) error {
		configService := &lobby.ConfigService{
			Client:          lobby.NewLobbyClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *lobbyclientmodels.ModelsConfigReq
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &config.AdminUpdateConfigV1Params{
			Body:      body,
			Namespace: namespace,
		}
		ok, errOK := configService.AdminUpdateConfigV1Short(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	AdminUpdateConfigV1Cmd.Flags().String("body", "", "Body")
	_ = AdminUpdateConfigV1Cmd.MarkFlagRequired("body")
	AdminUpdateConfigV1Cmd.Flags().String("namespace", "", "Namespace")
	_ = AdminUpdateConfigV1Cmd.MarkFlagRequired("namespace")
}
