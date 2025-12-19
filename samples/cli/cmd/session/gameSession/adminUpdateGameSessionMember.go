// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package gameSession

import (
	"log/slog"

	session "github.com/AccelByte/accelbyte-go-modular-sdk/session-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/session-sdk/pkg/sessionclient/game_session"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// AdminUpdateGameSessionMemberCmd represents the AdminUpdateGameSessionMember command
var AdminUpdateGameSessionMemberCmd = &cobra.Command{
	Use:   "adminUpdateGameSessionMember",
	Short: "Admin update game session member",
	Long:  `Admin update game session member`,
	RunE: func(cmd *cobra.Command, args []string) error {
		gameSessionService := &session.GameSessionService{
			Client:          session.NewSessionClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		memberId, _ := cmd.Flags().GetString("memberId")
		namespace, _ := cmd.Flags().GetString("namespace")
		sessionId, _ := cmd.Flags().GetString("sessionId")
		statusType, _ := cmd.Flags().GetString("statusType")
		input := &game_session.AdminUpdateGameSessionMemberParams{
			MemberID:   memberId,
			Namespace:  namespace,
			SessionID:  sessionId,
			StatusType: statusType,
		}
		ok, errOK := gameSessionService.AdminUpdateGameSessionMemberShort(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	AdminUpdateGameSessionMemberCmd.Flags().String("memberId", "", "Member id")
	_ = AdminUpdateGameSessionMemberCmd.MarkFlagRequired("memberId")
	AdminUpdateGameSessionMemberCmd.Flags().String("namespace", "", "Namespace")
	_ = AdminUpdateGameSessionMemberCmd.MarkFlagRequired("namespace")
	AdminUpdateGameSessionMemberCmd.Flags().String("sessionId", "", "Session id")
	_ = AdminUpdateGameSessionMemberCmd.MarkFlagRequired("sessionId")
	AdminUpdateGameSessionMemberCmd.Flags().String("statusType", "", "Status type")
	_ = AdminUpdateGameSessionMemberCmd.MarkFlagRequired("statusType")
}
