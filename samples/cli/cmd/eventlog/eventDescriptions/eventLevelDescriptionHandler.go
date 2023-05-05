// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package eventDescriptions

import (
	eventlog "github.com/AccelByte/accelbyte-go-sdk/eventlog-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-sdk/eventlog-sdk/pkg/eventlogclient/event_descriptions"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// EventLevelDescriptionHandlerCmd represents the EventLevelDescriptionHandler command
var EventLevelDescriptionHandlerCmd = &cobra.Command{
	Use:   "eventLevelDescriptionHandler",
	Short: "Event level description handler",
	Long:  `Event level description handler`,
	RunE: func(cmd *cobra.Command, args []string) error {
		eventDescriptionsService := &eventlog.EventDescriptionsService{
			Client:          eventlog.NewEventlogClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		input := &event_descriptions.EventLevelDescriptionHandlerParams{}
		ok, errOK := eventDescriptionsService.EventLevelDescriptionHandlerShort(input)
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
