// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package userStatistic

import (
	"encoding/json"
	"log/slog"

	social "github.com/AccelByte/accelbyte-go-modular-sdk/social-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/social-sdk/pkg/socialclient/user_statistic"
	"github.com/AccelByte/accelbyte-go-modular-sdk/social-sdk/pkg/socialclientmodels"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// IncUserStatItemValueCmd represents the IncUserStatItemValue command
var IncUserStatItemValueCmd = &cobra.Command{
	Use:   "incUserStatItemValue",
	Short: "Inc user stat item value",
	Long:  `Inc user stat item value`,
	RunE: func(cmd *cobra.Command, args []string) error {
		userStatisticService := &social.UserStatisticService{
			Client:          social.NewSocialClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *socialclientmodels.StatItemInc
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		statCode, _ := cmd.Flags().GetString("statCode")
		userId, _ := cmd.Flags().GetString("userId")
		input := &user_statistic.IncUserStatItemValueParams{
			Body:      body,
			Namespace: namespace,
			StatCode:  statCode,
			UserID:    userId,
		}
		ok, errOK := userStatisticService.IncUserStatItemValueShort(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	IncUserStatItemValueCmd.Flags().String("body", "", "Body")
	_ = IncUserStatItemValueCmd.MarkFlagRequired("body")
	IncUserStatItemValueCmd.Flags().String("namespace", "", "Namespace")
	_ = IncUserStatItemValueCmd.MarkFlagRequired("namespace")
	IncUserStatItemValueCmd.Flags().String("statCode", "", "Stat code")
	_ = IncUserStatItemValueCmd.MarkFlagRequired("statCode")
	IncUserStatItemValueCmd.Flags().String("userId", "", "User id")
	_ = IncUserStatItemValueCmd.MarkFlagRequired("userId")
}
