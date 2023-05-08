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

// AdminGetLobbyCCUCmd represents the AdminGetLobbyCCU command
var AdminGetLobbyCCUCmd = &cobra.Command{
	Use:   "adminGetLobbyCCU",
	Short: "Admin get lobby CCU",
	Long:  `Admin get lobby CCU`,
	RunE: func(cmd *cobra.Command, args []string) error {
		playerService := &lobby.PlayerService{
			Client:          lobby.NewLobbyClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &player.AdminGetLobbyCCUParams{
			Namespace: namespace,
		}
		ok, errOK := playerService.AdminGetLobbyCCUShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	AdminGetLobbyCCUCmd.Flags().String("namespace", "", "Namespace")
	_ = AdminGetLobbyCCUCmd.MarkFlagRequired("namespace")
}
