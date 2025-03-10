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

// UpdateUserStatItemValue1Cmd represents the UpdateUserStatItemValue1 command
var UpdateUserStatItemValue1Cmd = &cobra.Command{
	Use:   "updateUserStatItemValue1",
	Short: "Update user stat item value 1",
	Long:  `Update user stat item value 1`,
	RunE: func(cmd *cobra.Command, args []string) error {
		userStatisticService := &social.UserStatisticService{
			Client:          social.NewSocialClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *socialclientmodels.StatItemUpdate
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		statCode, _ := cmd.Flags().GetString("statCode")
		userId, _ := cmd.Flags().GetString("userId")
		additionalKey, _ := cmd.Flags().GetString("additionalKey")
		input := &user_statistic.UpdateUserStatItemValue1Params{
			Body:          body,
			Namespace:     namespace,
			StatCode:      statCode,
			UserID:        userId,
			AdditionalKey: &additionalKey,
		}
		ok, errOK := userStatisticService.UpdateUserStatItemValue1Short(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	UpdateUserStatItemValue1Cmd.Flags().String("body", "", "Body")
	_ = UpdateUserStatItemValue1Cmd.MarkFlagRequired("body")
	UpdateUserStatItemValue1Cmd.Flags().String("namespace", "", "Namespace")
	_ = UpdateUserStatItemValue1Cmd.MarkFlagRequired("namespace")
	UpdateUserStatItemValue1Cmd.Flags().String("statCode", "", "Stat code")
	_ = UpdateUserStatItemValue1Cmd.MarkFlagRequired("statCode")
	UpdateUserStatItemValue1Cmd.Flags().String("userId", "", "User id")
	_ = UpdateUserStatItemValue1Cmd.MarkFlagRequired("userId")
	UpdateUserStatItemValue1Cmd.Flags().String("additionalKey", "", "Additional key")
}
