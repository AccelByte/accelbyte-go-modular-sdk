// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package operations

import (
	"log/slog"

	sdkrepository "github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/repository"
	session "github.com/AccelByte/accelbyte-go-modular-sdk/session-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/session-sdk/pkg/sessionclient/operations"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// GetHealthcheckInfoV1Cmd represents the GetHealthcheckInfoV1 command
var GetHealthcheckInfoV1Cmd = &cobra.Command{
	Use:   "getHealthcheckInfoV1",
	Short: "Get healthcheck info V1",
	Long:  `Get healthcheck info V1`,
	RunE: func(cmd *cobra.Command, args []string) error {
		operationsService := &session.OperationsService{
			Client: session.NewSessionHttpClient(&repository.ConfigRepositoryImpl{}),
			Session: sdkrepository.Session{
				TokenRepository: &repository.TokenRepositoryImpl{},
			},
		}
		input := &operations.GetHealthcheckInfoV1Params{}
		errOK := operationsService.GetHealthcheckInfoV1Short(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success.")

		return nil
	},
}

func init() {
}
