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

// PublicIncUserStatItemValueCmd represents the PublicIncUserStatItemValue command
var PublicIncUserStatItemValueCmd = &cobra.Command{
	Use:   "publicIncUserStatItemValue",
	Short: "Public inc user stat item value",
	Long:  `Public inc user stat item value`,
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
		input := &user_statistic.PublicIncUserStatItemValueParams{
			Body:      body,
			Namespace: namespace,
			StatCode:  statCode,
			UserID:    userId,
		}
		ok, errOK := userStatisticService.PublicIncUserStatItemValueShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	PublicIncUserStatItemValueCmd.Flags().String("body", "", "Body")
	_ = PublicIncUserStatItemValueCmd.MarkFlagRequired("body")
	PublicIncUserStatItemValueCmd.Flags().String("namespace", "", "Namespace")
	_ = PublicIncUserStatItemValueCmd.MarkFlagRequired("namespace")
	PublicIncUserStatItemValueCmd.Flags().String("statCode", "", "Stat code")
	_ = PublicIncUserStatItemValueCmd.MarkFlagRequired("statCode")
	PublicIncUserStatItemValueCmd.Flags().String("userId", "", "User id")
	_ = PublicIncUserStatItemValueCmd.MarkFlagRequired("userId")
}
