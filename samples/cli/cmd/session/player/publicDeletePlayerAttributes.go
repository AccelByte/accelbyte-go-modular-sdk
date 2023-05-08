// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package player

import (
	session "github.com/AccelByte/accelbyte-go-modular-sdk/session-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/session-sdk/pkg/sessionclient/player"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// PublicDeletePlayerAttributesCmd represents the PublicDeletePlayerAttributes command
var PublicDeletePlayerAttributesCmd = &cobra.Command{
	Use:   "publicDeletePlayerAttributes",
	Short: "Public delete player attributes",
	Long:  `Public delete player attributes`,
	RunE: func(cmd *cobra.Command, args []string) error {
		playerService := &session.PlayerService{
			Client:          session.NewSessionClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &player.PublicDeletePlayerAttributesParams{
			Namespace: namespace,
		}
		errNoContent := playerService.PublicDeletePlayerAttributesShort(input)
		if errNoContent != nil {
			logrus.Error(errNoContent)

			return errNoContent
		}

		logrus.Infof("Response CLI success.")

		return nil
	},
}

func init() {
	PublicDeletePlayerAttributesCmd.Flags().String("namespace", "", "Namespace")
	_ = PublicDeletePlayerAttributesCmd.MarkFlagRequired("namespace")
}
