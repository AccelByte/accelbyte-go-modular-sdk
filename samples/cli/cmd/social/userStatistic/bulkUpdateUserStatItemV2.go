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

// BulkUpdateUserStatItemV2Cmd represents the BulkUpdateUserStatItemV2 command
var BulkUpdateUserStatItemV2Cmd = &cobra.Command{
	Use:   "bulkUpdateUserStatItemV2",
	Short: "Bulk update user stat item V2",
	Long:  `Bulk update user stat item V2`,
	RunE: func(cmd *cobra.Command, args []string) error {
		userStatisticService := &social.UserStatisticService{
			Client:          social.NewSocialClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body []*socialclientmodels.BulkUserStatItemUpdate
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &user_statistic.BulkUpdateUserStatItemV2Params{
			Body:      body,
			Namespace: namespace,
		}
		ok, errOK := userStatisticService.BulkUpdateUserStatItemV2Short(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	BulkUpdateUserStatItemV2Cmd.Flags().String("body", "", "Body")
	_ = BulkUpdateUserStatItemV2Cmd.MarkFlagRequired("body")
	BulkUpdateUserStatItemV2Cmd.Flags().String("namespace", "", "Namespace")
	_ = BulkUpdateUserStatItemV2Cmd.MarkFlagRequired("namespace")
}
