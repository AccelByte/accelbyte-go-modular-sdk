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

// GetSingleMatchmakingChannelCmd represents the GetSingleMatchmakingChannel command
var GetSingleMatchmakingChannelCmd = &cobra.Command{
	Use:   "getSingleMatchmakingChannel",
	Short: "Get single matchmaking channel",
	Long:  `Get single matchmaking channel`,
	RunE: func(cmd *cobra.Command, args []string) error {
		matchmakingService := &matchmaking.MatchmakingService{
			Client:          matchmaking.NewMatchmakingClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		channelName, _ := cmd.Flags().GetString("channelName")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &matchmaking_.GetSingleMatchmakingChannelParams{
			ChannelName: channelName,
			Namespace:   namespace,
		}
		ok, errOK := matchmakingService.GetSingleMatchmakingChannelShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	GetSingleMatchmakingChannelCmd.Flags().String("channelName", "", "Channel name")
	_ = GetSingleMatchmakingChannelCmd.MarkFlagRequired("channelName")
	GetSingleMatchmakingChannelCmd.Flags().String("namespace", "", "Namespace")
	_ = GetSingleMatchmakingChannelCmd.MarkFlagRequired("namespace")
}
