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

// AdminKickGameSessionMemberCmd represents the AdminKickGameSessionMember command
var AdminKickGameSessionMemberCmd = &cobra.Command{
	Use:   "adminKickGameSessionMember",
	Short: "Admin kick game session member",
	Long:  `Admin kick game session member`,
	RunE: func(cmd *cobra.Command, args []string) error {
		gameSessionService := &session.GameSessionService{
			Client:          session.NewSessionClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		memberId, _ := cmd.Flags().GetString("memberId")
		namespace, _ := cmd.Flags().GetString("namespace")
		sessionId, _ := cmd.Flags().GetString("sessionId")
		input := &game_session.AdminKickGameSessionMemberParams{
			MemberID:  memberId,
			Namespace: namespace,
			SessionID: sessionId,
		}
		errNoContent := gameSessionService.AdminKickGameSessionMemberShort(input)
		if errNoContent != nil {
			logrus.Error(errNoContent)

			return errNoContent
		}

		logrus.Infof("Response CLI success.")

		return nil
	},
}

func init() {
	AdminKickGameSessionMemberCmd.Flags().String("memberId", "", "Member id")
	_ = AdminKickGameSessionMemberCmd.MarkFlagRequired("memberId")
	AdminKickGameSessionMemberCmd.Flags().String("namespace", "", "Namespace")
	_ = AdminKickGameSessionMemberCmd.MarkFlagRequired("namespace")
	AdminKickGameSessionMemberCmd.Flags().String("sessionId", "", "Session id")
	_ = AdminKickGameSessionMemberCmd.MarkFlagRequired("sessionId")
}
