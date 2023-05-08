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

// GetSessionHistoryDetailedCmd represents the GetSessionHistoryDetailed command
var GetSessionHistoryDetailedCmd = &cobra.Command{
	Use:   "getSessionHistoryDetailed",
	Short: "Get session history detailed",
	Long:  `Get session history detailed`,
	RunE: func(cmd *cobra.Command, args []string) error {
		matchmakingService := &matchmaking.MatchmakingService{
			Client:          matchmaking.NewMatchmakingClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		matchID, _ := cmd.Flags().GetString("matchID")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &matchmaking_.GetSessionHistoryDetailedParams{
			MatchID:   matchID,
			Namespace: namespace,
		}
		ok, errOK := matchmakingService.GetSessionHistoryDetailedShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	GetSessionHistoryDetailedCmd.Flags().String("matchID", "", "Match ID")
	_ = GetSessionHistoryDetailedCmd.MarkFlagRequired("matchID")
	GetSessionHistoryDetailedCmd.Flags().String("namespace", "", "Namespace")
	_ = GetSessionHistoryDetailedCmd.MarkFlagRequired("namespace")
}
