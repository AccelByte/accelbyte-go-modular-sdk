// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package session

import (
	sessionbrowser "github.com/AccelByte/accelbyte-go-sdk/sessionbrowser-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-sdk/sessionbrowser-sdk/pkg/sessionbrowserclient/session"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// AdminDeleteSessionCmd represents the AdminDeleteSession command
var AdminDeleteSessionCmd = &cobra.Command{
	Use:   "adminDeleteSession",
	Short: "Admin delete session",
	Long:  `Admin delete session`,
	RunE: func(cmd *cobra.Command, args []string) error {
		sessionService := &sessionbrowser.SessionService{
			Client:          sessionbrowser.NewSessionbrowserClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		sessionID, _ := cmd.Flags().GetString("sessionID")
		input := &session.AdminDeleteSessionParams{
			Namespace: namespace,
			SessionID: sessionID,
		}
		ok, errOK := sessionService.AdminDeleteSessionShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	AdminDeleteSessionCmd.Flags().String("namespace", "", "Namespace")
	_ = AdminDeleteSessionCmd.MarkFlagRequired("namespace")
	AdminDeleteSessionCmd.Flags().String("sessionID", "", "Session ID")
	_ = AdminDeleteSessionCmd.MarkFlagRequired("sessionID")
}
