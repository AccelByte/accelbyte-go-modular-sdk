// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package eventDescriptions

import (
	eventlog "github.com/AccelByte/accelbyte-go-modular-sdk/eventlog-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/eventlog-sdk/pkg/eventlogclient/event_descriptions"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// EventIDDescriptionHandlerCmd represents the EventIDDescriptionHandler command
var EventIDDescriptionHandlerCmd = &cobra.Command{
	Use:   "eventIDDescriptionHandler",
	Short: "Event ID description handler",
	Long:  `Event ID description handler`,
	RunE: func(cmd *cobra.Command, args []string) error {
		eventDescriptionsService := &eventlog.EventDescriptionsService{
			Client:          eventlog.NewEventlogClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		input := &event_descriptions.EventIDDescriptionHandlerParams{}
		ok, errOK := eventDescriptionsService.EventIDDescriptionHandlerShort(input)
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
