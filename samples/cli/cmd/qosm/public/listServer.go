// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package public

import (
	qosm "github.com/AccelByte/accelbyte-go-sdk/qosm-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-sdk/qosm-sdk/pkg/qosmclient/public"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// ListServerCmd represents the ListServer command
var ListServerCmd = &cobra.Command{
	Use:   "listServer",
	Short: "List server",
	Long:  `List server`,
	RunE: func(cmd *cobra.Command, args []string) error {
		publicService := &qosm.PublicService{
			Client:          qosm.NewQosmClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		input := &public.ListServerParams{}
		ok, errOK := publicService.ListServerShort(input)
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
