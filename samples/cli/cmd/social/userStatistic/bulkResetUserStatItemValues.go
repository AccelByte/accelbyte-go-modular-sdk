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

// BulkResetUserStatItemValuesCmd represents the BulkResetUserStatItemValues command
var BulkResetUserStatItemValuesCmd = &cobra.Command{
	Use:   "bulkResetUserStatItemValues",
	Short: "Bulk reset user stat item values",
	Long:  `Bulk reset user stat item values`,
	RunE: func(cmd *cobra.Command, args []string) error {
		userStatisticService := &social.UserStatisticService{
			Client:          social.NewSocialClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body []*socialclientmodels.ADTOObjectForResettingUserStatItems
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		additionalKey, _ := cmd.Flags().GetString("additionalKey")
		input := &user_statistic.BulkResetUserStatItemValuesParams{
			Body:          body,
			Namespace:     namespace,
			UserID:        userId,
			AdditionalKey: &additionalKey,
		}
		ok, errOK := userStatisticService.BulkResetUserStatItemValuesShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	BulkResetUserStatItemValuesCmd.Flags().String("body", "", "Body")
	_ = BulkResetUserStatItemValuesCmd.MarkFlagRequired("body")
	BulkResetUserStatItemValuesCmd.Flags().String("namespace", "", "Namespace")
	_ = BulkResetUserStatItemValuesCmd.MarkFlagRequired("namespace")
	BulkResetUserStatItemValuesCmd.Flags().String("userId", "", "User id")
	_ = BulkResetUserStatItemValuesCmd.MarkFlagRequired("userId")
	BulkResetUserStatItemValuesCmd.Flags().String("additionalKey", "", "Additional key")
}
