// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package misc

import (
	basic "github.com/AccelByte/accelbyte-go-modular-sdk/basic-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/basic-sdk/pkg/basicclient/misc"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// GetCountriesCmd represents the GetCountries command
var GetCountriesCmd = &cobra.Command{
	Use:   "getCountries",
	Short: "Get countries",
	Long:  `Get countries`,
	RunE: func(cmd *cobra.Command, args []string) error {
		miscService := &basic.MiscService{
			Client:          basic.NewBasicClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		lang, _ := cmd.Flags().GetString("lang")
		input := &misc.GetCountriesParams{
			Namespace: namespace,
			Lang:      &lang,
		}
		ok, errOK := miscService.GetCountriesShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	GetCountriesCmd.Flags().String("namespace", "", "Namespace")
	_ = GetCountriesCmd.MarkFlagRequired("namespace")
	GetCountriesCmd.Flags().String("lang", "", "Lang")
}
