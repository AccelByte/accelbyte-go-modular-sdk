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

// GetPartyDetailCmd represents the GetPartyDetail command
var GetPartyDetailCmd = &cobra.Command{
	Use:   "getPartyDetail",
	Short: "Get party detail",
	Long:  `Get party detail`,
	RunE: func(cmd *cobra.Command, args []string) error {
		gameSessionDetailService := &sessionhistory.GameSessionDetailService{
			Client:          sessionhistory.NewSessionhistoryClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		sessionId, _ := cmd.Flags().GetString("sessionId")
		input := &game_session_detail.GetPartyDetailParams{
			Namespace: namespace,
			SessionID: sessionId,
		}
		ok, errOK := gameSessionDetailService.GetPartyDetailShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	GetPartyDetailCmd.Flags().String("namespace", "", "Namespace")
	_ = GetPartyDetailCmd.MarkFlagRequired("namespace")
	GetPartyDetailCmd.Flags().String("sessionId", "", "Session id")
	_ = GetPartyDetailCmd.MarkFlagRequired("sessionId")
}
