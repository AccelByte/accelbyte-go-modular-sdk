// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package admin

import (
	lobby "github.com/AccelByte/accelbyte-go-sdk/lobby-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-sdk/lobby-sdk/pkg/lobbyclient/admin"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// GetGameTemplateCmd represents the GetGameTemplate command
var GetGameTemplateCmd = &cobra.Command{
	Use:   "getGameTemplate",
	Short: "Get game template",
	Long:  `Get game template`,
	RunE: func(cmd *cobra.Command, args []string) error {
		adminService := &lobby.AdminService{
			Client:          lobby.NewLobbyClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &admin.GetGameTemplateParams{
			Namespace: namespace,
		}
		ok, errOK := adminService.GetGameTemplateShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	GetGameTemplateCmd.Flags().String("namespace", "", "Namespace")
	_ = GetGameTemplateCmd.MarkFlagRequired("namespace")
}
