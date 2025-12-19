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

// BulkResetUserStatItem2Cmd represents the BulkResetUserStatItem2 command
var BulkResetUserStatItem2Cmd = &cobra.Command{
	Use:   "bulkResetUserStatItem2",
	Short: "Bulk reset user stat item 2",
	Long:  `Bulk reset user stat item 2`,
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
		input := &user_statistic.BulkResetUserStatItem2Params{
			Body:      body,
			Namespace: namespace,
		}
		ok, errOK := userStatisticService.BulkResetUserStatItem2Short(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	BulkResetUserStatItem2Cmd.Flags().String("body", "", "Body")
	_ = BulkResetUserStatItem2Cmd.MarkFlagRequired("body")
	BulkResetUserStatItem2Cmd.Flags().String("namespace", "", "Namespace")
	_ = BulkResetUserStatItem2Cmd.MarkFlagRequired("namespace")
}
