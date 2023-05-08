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

// DeleteChannelHandlerCmd represents the DeleteChannelHandler command
var DeleteChannelHandlerCmd = &cobra.Command{
	Use:   "deleteChannelHandler",
	Short: "Delete channel handler",
	Long:  `Delete channel handler`,
	RunE: func(cmd *cobra.Command, args []string) error {
		matchmakingService := &matchmaking.MatchmakingService{
			Client:          matchmaking.NewMatchmakingClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		channel, _ := cmd.Flags().GetString("channel")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &matchmaking_.DeleteChannelHandlerParams{
			Channel:   channel,
			Namespace: namespace,
		}
		errNoContent := matchmakingService.DeleteChannelHandlerShort(input)
		if errNoContent != nil {
			logrus.Error(errNoContent)

			return errNoContent
		}

		logrus.Infof("Response CLI success.")

		return nil
	},
}

func init() {
	DeleteChannelHandlerCmd.Flags().String("channel", "", "Channel")
	_ = DeleteChannelHandlerCmd.MarkFlagRequired("channel")
	DeleteChannelHandlerCmd.Flags().String("namespace", "", "Namespace")
	_ = DeleteChannelHandlerCmd.MarkFlagRequired("namespace")
}
