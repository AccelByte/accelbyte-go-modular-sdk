// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package public

import (
	dsmc "github.com/AccelByte/accelbyte-go-sdk/dsmc-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-sdk/dsmc-sdk/pkg/dsmcclient/public"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// ListProvidersCmd represents the ListProviders command
var ListProvidersCmd = &cobra.Command{
	Use:   "listProviders",
	Short: "List providers",
	Long:  `List providers`,
	RunE: func(cmd *cobra.Command, args []string) error {
		publicService := &dsmc.PublicService{
			Client:          dsmc.NewDsmcClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		input := &public.ListProvidersParams{}
		ok, errOK := publicService.ListProvidersShort(input)
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
