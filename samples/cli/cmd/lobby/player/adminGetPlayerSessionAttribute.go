// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package player

import (
	lobby "github.com/AccelByte/accelbyte-go-modular-sdk/lobby-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/lobby-sdk/pkg/lobbyclient/player"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// AdminGetPlayerSessionAttributeCmd represents the AdminGetPlayerSessionAttribute command
var AdminGetPlayerSessionAttributeCmd = &cobra.Command{
	Use:   "adminGetPlayerSessionAttribute",
	Short: "Admin get player session attribute",
	Long:  `Admin get player session attribute`,
	RunE: func(cmd *cobra.Command, args []string) error {
		playerService := &lobby.PlayerService{
			Client:          lobby.NewLobbyClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		attribute, _ := cmd.Flags().GetString("attribute")
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &player.AdminGetPlayerSessionAttributeParams{
			Attribute: attribute,
			Namespace: namespace,
			UserID:    userId,
		}
		ok, errOK := playerService.AdminGetPlayerSessionAttributeShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	AdminGetPlayerSessionAttributeCmd.Flags().String("attribute", "", "Attribute")
	_ = AdminGetPlayerSessionAttributeCmd.MarkFlagRequired("attribute")
	AdminGetPlayerSessionAttributeCmd.Flags().String("namespace", "", "Namespace")
	_ = AdminGetPlayerSessionAttributeCmd.MarkFlagRequired("namespace")
	AdminGetPlayerSessionAttributeCmd.Flags().String("userId", "", "User id")
	_ = AdminGetPlayerSessionAttributeCmd.MarkFlagRequired("userId")
}
