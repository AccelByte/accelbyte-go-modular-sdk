// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package profanity

import (
	lobby "github.com/AccelByte/accelbyte-go-modular-sdk/lobby-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/lobby-sdk/pkg/lobbyclient/profanity"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// AdminGetProfanityListsCmd represents the AdminGetProfanityLists command
var AdminGetProfanityListsCmd = &cobra.Command{
	Use:   "adminGetProfanityLists",
	Short: "Admin get profanity lists",
	Long:  `Admin get profanity lists`,
	RunE: func(cmd *cobra.Command, args []string) error {
		profanityService := &lobby.ProfanityService{
			Client:          lobby.NewLobbyClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &profanity.AdminGetProfanityListsParams{
			Namespace: namespace,
		}
		ok, errOK := profanityService.AdminGetProfanityListsShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	AdminGetProfanityListsCmd.Flags().String("namespace", "", "Namespace")
	_ = AdminGetProfanityListsCmd.MarkFlagRequired("namespace")
}
