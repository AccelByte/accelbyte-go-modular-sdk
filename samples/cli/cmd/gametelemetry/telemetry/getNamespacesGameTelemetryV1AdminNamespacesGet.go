// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package telemetry

import (
	gametelemetry "github.com/AccelByte/accelbyte-go-modular-sdk/gametelemetry-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/gametelemetry-sdk/pkg/gametelemetryclient/telemetry"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// GetNamespacesGameTelemetryV1AdminNamespacesGetCmd represents the GetNamespacesGameTelemetryV1AdminNamespacesGet command
var GetNamespacesGameTelemetryV1AdminNamespacesGetCmd = &cobra.Command{
	Use:   "getNamespacesGameTelemetryV1AdminNamespacesGet",
	Short: "Get namespaces game telemetry v1 admin namespaces get",
	Long:  `Get namespaces game telemetry v1 admin namespaces get`,
	RunE: func(cmd *cobra.Command, args []string) error {
		telemetryService := &gametelemetry.TelemetryService{
			Client:          gametelemetry.NewGametelemetryClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		input := &telemetry.GetNamespacesGameTelemetryV1AdminNamespacesGetParams{}
		ok, errOK := telemetryService.GetNamespacesGameTelemetryV1AdminNamespacesGetShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
}
