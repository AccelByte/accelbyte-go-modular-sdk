// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package userStatistic

import (
	"encoding/json"

	social "github.com/AccelByte/accelbyte-go-modular-sdk/social-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/social-sdk/pkg/socialclient/user_statistic"
	"github.com/AccelByte/accelbyte-go-modular-sdk/social-sdk/pkg/socialclientmodels"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// BulkIncUserStatItem1Cmd represents the BulkIncUserStatItem1 command
var BulkIncUserStatItem1Cmd = &cobra.Command{
	Use:   "bulkIncUserStatItem1",
	Short: "Bulk inc user stat item 1",
	Long:  `Bulk inc user stat item 1`,
	RunE: func(cmd *cobra.Command, args []string) error {
		userStatisticService := &social.UserStatisticService{
			Client:          social.NewSocialClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body []*socialclientmodels.BulkStatItemInc
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &user_statistic.BulkIncUserStatItem1Params{
			Body:      body,
			Namespace: namespace,
			UserID:    userId,
		}
		ok, errOK := userStatisticService.BulkIncUserStatItem1Short(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	BulkIncUserStatItem1Cmd.Flags().String("body", "", "Body")
	_ = BulkIncUserStatItem1Cmd.MarkFlagRequired("body")
	BulkIncUserStatItem1Cmd.Flags().String("namespace", "", "Namespace")
	_ = BulkIncUserStatItem1Cmd.MarkFlagRequired("namespace")
	BulkIncUserStatItem1Cmd.Flags().String("userId", "", "User id")
	_ = BulkIncUserStatItem1Cmd.MarkFlagRequired("userId")
}
