// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package matchmakingOperations

import (
	matchmaking "github.com/AccelByte/accelbyte-go-sdk/matchmaking-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-sdk/matchmaking-sdk/pkg/matchmakingclient/matchmaking_operations"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// HandlerV3HealthzCmd represents the HandlerV3Healthz command
var HandlerV3HealthzCmd = &cobra.Command{
	Use:   "handlerV3Healthz",
	Short: "Handler V3 healthz",
	Long:  `Handler V3 healthz`,
	RunE: func(cmd *cobra.Command, args []string) error {
		matchmakingOperationsService := &matchmaking.MatchmakingOperationsService{
			Client:          matchmaking.NewMatchmakingClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		input := &matchmaking_operations.HandlerV3HealthzParams{}
		errOK := matchmakingOperationsService.HandlerV3HealthzShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success.")

		return nil
	},
}

func init() {
}
