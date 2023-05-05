// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package eventRegistry

import (
	eventlog "github.com/AccelByte/accelbyte-go-sdk/eventlog-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-sdk/eventlog-sdk/pkg/eventlogclient/event_registry"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// GetRegisteredEventsHandlerCmd represents the GetRegisteredEventsHandler command
var GetRegisteredEventsHandlerCmd = &cobra.Command{
	Use:   "getRegisteredEventsHandler",
	Short: "Get registered events handler",
	Long:  `Get registered events handler`,
	RunE: func(cmd *cobra.Command, args []string) error {
		eventRegistryService := &eventlog.EventRegistryService{
			Client:          eventlog.NewEventlogClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		input := &event_registry.GetRegisteredEventsHandlerParams{}
		ok, errOK := eventRegistryService.GetRegisteredEventsHandlerShort(input)
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
