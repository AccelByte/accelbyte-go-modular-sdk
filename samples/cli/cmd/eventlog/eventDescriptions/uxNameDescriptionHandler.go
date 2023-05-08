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

// UXNameDescriptionHandlerCmd represents the UXNameDescriptionHandler command
var UXNameDescriptionHandlerCmd = &cobra.Command{
	Use:   "uxNameDescriptionHandler",
	Short: "UX name description handler",
	Long:  `UX name description handler`,
	RunE: func(cmd *cobra.Command, args []string) error {
		eventDescriptionsService := &eventlog.EventDescriptionsService{
			Client:          eventlog.NewEventlogClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		input := &event_descriptions.UXNameDescriptionHandlerParams{}
		ok, errOK := eventDescriptionsService.UXNameDescriptionHandlerShort(input)
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
