// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package gameSessionDetail

import (
	sessionhistory "github.com/AccelByte/accelbyte-go-modular-sdk/sessionhistory-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/sessionhistory-sdk/pkg/sessionhistoryclient/game_session_detail"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// PublicQueryGameSessionMeCmd represents the PublicQueryGameSessionMe command
var PublicQueryGameSessionMeCmd = &cobra.Command{
	Use:   "publicQueryGameSessionMe",
	Short: "Public query game session me",
	Long:  `Public query game session me`,
	RunE: func(cmd *cobra.Command, args []string) error {
		gameSessionDetailService := &sessionhistory.GameSessionDetailService{
			Client:          sessionhistory.NewSessionhistoryClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		limit, _ := cmd.Flags().GetInt64("limit")
		offset, _ := cmd.Flags().GetInt64("offset")
		order, _ := cmd.Flags().GetString("order")
		input := &game_session_detail.PublicQueryGameSessionMeParams{
			Namespace: namespace,
			Limit:     &limit,
			Offset:    &offset,
			Order:     &order,
		}
		ok, errOK := gameSessionDetailService.PublicQueryGameSessionMeShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	PublicQueryGameSessionMeCmd.Flags().String("namespace", "", "Namespace")
	_ = PublicQueryGameSessionMeCmd.MarkFlagRequired("namespace")
	PublicQueryGameSessionMeCmd.Flags().Int64("limit", 20, "Limit")
	PublicQueryGameSessionMeCmd.Flags().Int64("offset", 0, "Offset")
	PublicQueryGameSessionMeCmd.Flags().String("order", "", "Order")
}
