// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package userStatistic

import (
	"log/slog"

	social "github.com/AccelByte/accelbyte-go-modular-sdk/social-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/social-sdk/pkg/socialclient/user_statistic"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// ResetUserStatItemValue1Cmd represents the ResetUserStatItemValue1 command
var ResetUserStatItemValue1Cmd = &cobra.Command{
	Use:   "resetUserStatItemValue1",
	Short: "Reset user stat item value 1",
	Long:  `Reset user stat item value 1`,
	RunE: func(cmd *cobra.Command, args []string) error {
		userStatisticService := &social.UserStatisticService{
			Client:          social.NewSocialClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		statCode, _ := cmd.Flags().GetString("statCode")
		userId, _ := cmd.Flags().GetString("userId")
		input := &user_statistic.ResetUserStatItemValue1Params{
			Namespace: namespace,
			StatCode:  statCode,
			UserID:    userId,
		}
		ok, errOK := userStatisticService.ResetUserStatItemValue1Short(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	ResetUserStatItemValue1Cmd.Flags().String("namespace", "", "Namespace")
	_ = ResetUserStatItemValue1Cmd.MarkFlagRequired("namespace")
	ResetUserStatItemValue1Cmd.Flags().String("statCode", "", "Stat code")
	_ = ResetUserStatItemValue1Cmd.MarkFlagRequired("statCode")
	ResetUserStatItemValue1Cmd.Flags().String("userId", "", "User id")
	_ = ResetUserStatItemValue1Cmd.MarkFlagRequired("userId")
}
