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

// SpecificUXDescriptionHandlerCmd represents the SpecificUXDescriptionHandler command
var SpecificUXDescriptionHandlerCmd = &cobra.Command{
	Use:   "specificUXDescriptionHandler",
	Short: "Specific UX description handler",
	Long:  `Specific UX description handler`,
	RunE: func(cmd *cobra.Command, args []string) error {
		eventDescriptionsService := &eventlog.EventDescriptionsService{
			Client:          eventlog.NewEventlogClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		ux, _ := cmd.Flags().GetString("ux")
		input := &event_descriptions.SpecificUXDescriptionHandlerParams{
			Ux: &ux,
		}
		ok, errOK := eventDescriptionsService.SpecificUXDescriptionHandlerShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	SpecificUXDescriptionHandlerCmd.Flags().String("ux", "", "Ux")
}
