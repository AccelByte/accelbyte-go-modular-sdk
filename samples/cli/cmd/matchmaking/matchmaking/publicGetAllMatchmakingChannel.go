// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package matchmaking

import (
	matchmaking "github.com/AccelByte/accelbyte-go-modular-sdk/matchmaking-sdk/pkg"
	matchmaking_ "github.com/AccelByte/accelbyte-go-modular-sdk/matchmaking-sdk/pkg/matchmakingclient/matchmaking"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// PublicGetAllMatchmakingChannelCmd represents the PublicGetAllMatchmakingChannel command
var PublicGetAllMatchmakingChannelCmd = &cobra.Command{
	Use:   "publicGetAllMatchmakingChannel",
	Short: "Public get all matchmaking channel",
	Long:  `Public get all matchmaking channel`,
	RunE: func(cmd *cobra.Command, args []string) error {
		matchmakingService := &matchmaking.MatchmakingService{
			Client:          matchmaking.NewMatchmakingClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &matchmaking_.PublicGetAllMatchmakingChannelParams{
			Namespace: namespace,
		}
		ok, errOK := matchmakingService.PublicGetAllMatchmakingChannelShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	PublicGetAllMatchmakingChannelCmd.Flags().String("namespace", "", "Namespace")
	_ = PublicGetAllMatchmakingChannelCmd.MarkFlagRequired("namespace")
}
