// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package eventRegistry

import (
	eventlog "github.com/AccelByte/accelbyte-go-modular-sdk/eventlog-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/eventlog-sdk/pkg/eventlogclient/event_registry"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// UnregisterEventIDHandlerCmd represents the UnregisterEventIDHandler command
var UnregisterEventIDHandlerCmd = &cobra.Command{
	Use:   "unregisterEventIDHandler",
	Short: "Unregister event ID handler",
	Long:  `Unregister event ID handler`,
	RunE: func(cmd *cobra.Command, args []string) error {
		eventRegistryService := &eventlog.EventRegistryService{
			Client:          eventlog.NewEventlogClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		eventId, _ := cmd.Flags().GetString("eventId")
		input := &event_registry.UnregisterEventIDHandlerParams{
			EventID: eventId,
		}
		errNoContent := eventRegistryService.UnregisterEventIDHandlerShort(input)
		if errNoContent != nil {
			logrus.Error(errNoContent)

			return errNoContent
		}

		logrus.Infof("Response CLI success.")

		return nil
	},
}

func init() {
	UnregisterEventIDHandlerCmd.Flags().String("eventId", "0", "Event id")
	_ = UnregisterEventIDHandlerCmd.MarkFlagRequired("eventId")
}
