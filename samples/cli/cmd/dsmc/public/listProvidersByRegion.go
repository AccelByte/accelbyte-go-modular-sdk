// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package public

import (
	dsmc "github.com/AccelByte/accelbyte-go-modular-sdk/dsmc-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/dsmc-sdk/pkg/dsmcclient/public"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// ListProvidersByRegionCmd represents the ListProvidersByRegion command
var ListProvidersByRegionCmd = &cobra.Command{
	Use:   "listProvidersByRegion",
	Short: "List providers by region",
	Long:  `List providers by region`,
	RunE: func(cmd *cobra.Command, args []string) error {
		publicService := &dsmc.PublicService{
			Client:          dsmc.NewDsmcClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		region, _ := cmd.Flags().GetString("region")
		input := &public.ListProvidersByRegionParams{
			Region: region,
		}
		ok, errOK := publicService.ListProvidersByRegionShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	ListProvidersByRegionCmd.Flags().String("region", "", "Region")
	_ = ListProvidersByRegionCmd.MarkFlagRequired("region")
}
