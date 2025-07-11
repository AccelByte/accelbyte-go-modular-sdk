// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package xRay

import (
	sessionhistory "github.com/AccelByte/accelbyte-go-modular-sdk/sessionhistory-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/sessionhistory-sdk/pkg/sessionhistoryclient/x_ray"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// QueryMatchHistoriesCmd represents the QueryMatchHistories command
var QueryMatchHistoriesCmd = &cobra.Command{
	Use:   "queryMatchHistories",
	Short: "Query match histories",
	Long:  `Query match histories`,
	RunE: func(cmd *cobra.Command, args []string) error {
		xRayService := &sessionhistory.XRayService{
			Client:          sessionhistory.NewSessionhistoryClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		matchId, _ := cmd.Flags().GetString("matchId")
		namespace, _ := cmd.Flags().GetString("namespace")
		limit, _ := cmd.Flags().GetInt64("limit")
		offset, _ := cmd.Flags().GetInt64("offset")
		input := &x_ray.QueryMatchHistoriesParams{
			MatchID:   matchId,
			Namespace: namespace,
			Limit:     &limit,
			Offset:    &offset,
		}
		ok, errOK := xRayService.QueryMatchHistoriesShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	QueryMatchHistoriesCmd.Flags().String("matchId", "", "Match id")
	_ = QueryMatchHistoriesCmd.MarkFlagRequired("matchId")
	QueryMatchHistoriesCmd.Flags().String("namespace", "", "Namespace")
	_ = QueryMatchHistoriesCmd.MarkFlagRequired("namespace")
	QueryMatchHistoriesCmd.Flags().Int64("limit", 20, "Limit")
	QueryMatchHistoriesCmd.Flags().Int64("offset", 0, "Offset")
}
