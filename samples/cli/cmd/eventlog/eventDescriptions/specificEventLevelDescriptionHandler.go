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

// SpecificEventLevelDescriptionHandlerCmd represents the SpecificEventLevelDescriptionHandler command
var SpecificEventLevelDescriptionHandlerCmd = &cobra.Command{
	Use:   "specificEventLevelDescriptionHandler",
	Short: "Specific event level description handler",
	Long:  `Specific event level description handler`,
	RunE: func(cmd *cobra.Command, args []string) error {
		eventDescriptionsService := &eventlog.EventDescriptionsService{
			Client:          eventlog.NewEventlogClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		eventLevels, _ := cmd.Flags().GetString("eventLevels")
		input := &event_descriptions.SpecificEventLevelDescriptionHandlerParams{
			EventLevels: &eventLevels,
		}
		ok, errOK := eventDescriptionsService.SpecificEventLevelDescriptionHandlerShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	SpecificEventLevelDescriptionHandlerCmd.Flags().String("eventLevels", "", "Event levels")
}
