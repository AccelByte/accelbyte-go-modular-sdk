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

// BulkResetUserStatItemCmd represents the BulkResetUserStatItem command
var BulkResetUserStatItemCmd = &cobra.Command{
	Use:   "bulkResetUserStatItem",
	Short: "Bulk reset user stat item",
	Long:  `Bulk reset user stat item`,
	RunE: func(cmd *cobra.Command, args []string) error {
		userStatisticService := &social.UserStatisticService{
			Client:          social.NewSocialClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body []*socialclientmodels.BulkUserStatItemReset
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &user_statistic.BulkResetUserStatItemParams{
			Body:      body,
			Namespace: namespace,
		}
		ok, errOK := userStatisticService.BulkResetUserStatItemShort(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	BulkResetUserStatItemCmd.Flags().String("body", "", "Body")
	_ = BulkResetUserStatItemCmd.MarkFlagRequired("body")
	BulkResetUserStatItemCmd.Flags().String("namespace", "", "Namespace")
	_ = BulkResetUserStatItemCmd.MarkFlagRequired("namespace")
}
