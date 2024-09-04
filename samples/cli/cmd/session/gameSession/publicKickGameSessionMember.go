// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package gameSession

import (
	session "github.com/AccelByte/accelbyte-go-modular-sdk/session-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/session-sdk/pkg/sessionclient/game_session"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// PublicKickGameSessionMemberCmd represents the PublicKickGameSessionMember command
var PublicKickGameSessionMemberCmd = &cobra.Command{
	Use:   "publicKickGameSessionMember",
	Short: "Public kick game session member",
	Long:  `Public kick game session member`,
	RunE: func(cmd *cobra.Command, args []string) error {
		gameSessionService := &session.GameSessionService{
			Client:          session.NewSessionClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		memberId, _ := cmd.Flags().GetString("memberId")
		namespace, _ := cmd.Flags().GetString("namespace")
		sessionId, _ := cmd.Flags().GetString("sessionId")
		input := &game_session.PublicKickGameSessionMemberParams{
			MemberID:  memberId,
			Namespace: namespace,
			SessionID: sessionId,
		}
		errNoContent := gameSessionService.PublicKickGameSessionMemberShort(input)
		if errNoContent != nil {
			logrus.Error(errNoContent)

			return errNoContent
		}

		logrus.Infof("Response CLI success.")

		return nil
	},
}

func init() {
	PublicKickGameSessionMemberCmd.Flags().String("memberId", "", "Member id")
	_ = PublicKickGameSessionMemberCmd.MarkFlagRequired("memberId")
	PublicKickGameSessionMemberCmd.Flags().String("namespace", "", "Namespace")
	_ = PublicKickGameSessionMemberCmd.MarkFlagRequired("namespace")
	PublicKickGameSessionMemberCmd.Flags().String("sessionId", "", "Session id")
	_ = PublicKickGameSessionMemberCmd.MarkFlagRequired("sessionId")
}
