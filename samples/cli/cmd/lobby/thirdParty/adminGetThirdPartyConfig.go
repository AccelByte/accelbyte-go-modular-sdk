// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package thirdParty

import (
	lobby "github.com/AccelByte/accelbyte-go-sdk/lobby-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-sdk/lobby-sdk/pkg/lobbyclient/third_party"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// AdminGetThirdPartyConfigCmd represents the AdminGetThirdPartyConfig command
var AdminGetThirdPartyConfigCmd = &cobra.Command{
	Use:   "adminGetThirdPartyConfig",
	Short: "Admin get third party config",
	Long:  `Admin get third party config`,
	RunE: func(cmd *cobra.Command, args []string) error {
		thirdPartyService := &lobby.ThirdPartyService{
			Client:          lobby.NewLobbyClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &third_party.AdminGetThirdPartyConfigParams{
			Namespace: namespace,
		}
		ok, errOK := thirdPartyService.AdminGetThirdPartyConfigShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	AdminGetThirdPartyConfigCmd.Flags().String("namespace", "", "Namespace")
	_ = AdminGetThirdPartyConfigCmd.MarkFlagRequired("namespace")
}
