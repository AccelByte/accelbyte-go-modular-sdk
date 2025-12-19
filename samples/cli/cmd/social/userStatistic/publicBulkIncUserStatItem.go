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

// PublicBulkIncUserStatItemCmd represents the PublicBulkIncUserStatItem command
var PublicBulkIncUserStatItemCmd = &cobra.Command{
	Use:   "publicBulkIncUserStatItem",
	Short: "Public bulk inc user stat item",
	Long:  `Public bulk inc user stat item`,
	RunE: func(cmd *cobra.Command, args []string) error {
		userStatisticService := &social.UserStatisticService{
			Client:          social.NewSocialClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body []*socialclientmodels.BulkUserStatItemInc
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &user_statistic.PublicBulkIncUserStatItemParams{
			Body:      body,
			Namespace: namespace,
		}
		ok, errOK := userStatisticService.PublicBulkIncUserStatItemShort(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	PublicBulkIncUserStatItemCmd.Flags().String("body", "", "Body")
	_ = PublicBulkIncUserStatItemCmd.MarkFlagRequired("body")
	PublicBulkIncUserStatItemCmd.Flags().String("namespace", "", "Namespace")
	_ = PublicBulkIncUserStatItemCmd.MarkFlagRequired("namespace")
}
