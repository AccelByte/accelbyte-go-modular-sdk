// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package mockMatchmaking

import (
	matchmaking "github.com/AccelByte/accelbyte-go-modular-sdk/matchmaking-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/matchmaking-sdk/pkg/matchmakingclient/mock_matchmaking"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// CleanAllMocksCmd represents the CleanAllMocks command
var CleanAllMocksCmd = &cobra.Command{
	Use:   "cleanAllMocks",
	Short: "Clean all mocks",
	Long:  `Clean all mocks`,
	RunE: func(cmd *cobra.Command, args []string) error {
		mockMatchmakingService := &matchmaking.MockMatchmakingService{
			Client:          matchmaking.NewMatchmakingClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		channelName, _ := cmd.Flags().GetString("channelName")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &mock_matchmaking.CleanAllMocksParams{
			ChannelName: channelName,
			Namespace:   namespace,
		}
		errNoContent := mockMatchmakingService.CleanAllMocksShort(input)
		if errNoContent != nil {
			logrus.Error(errNoContent)

			return errNoContent
		}

		logrus.Infof("Response CLI success.")

		return nil
	},
}

func init() {
	CleanAllMocksCmd.Flags().String("channelName", "", "Channel name")
	_ = CleanAllMocksCmd.MarkFlagRequired("channelName")
	CleanAllMocksCmd.Flags().String("namespace", "", "Namespace")
	_ = CleanAllMocksCmd.MarkFlagRequired("namespace")
}
