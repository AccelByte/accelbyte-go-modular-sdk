// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package reward

import (
	"encoding/json"
	"log/slog"

	platform "github.com/AccelByte/accelbyte-go-modular-sdk/platform-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/platform-sdk/pkg/platformclient/reward"
	"github.com/AccelByte/accelbyte-go-modular-sdk/platform-sdk/pkg/platformclientmodels"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// CheckEventConditionCmd represents the CheckEventCondition command
var CheckEventConditionCmd = &cobra.Command{
	Use:   "checkEventCondition",
	Short: "Check event condition",
	Long:  `Check event condition`,
	RunE: func(cmd *cobra.Command, args []string) error {
		rewardService := &platform.RewardService{
			Client:          platform.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		rewardId, _ := cmd.Flags().GetString("rewardId")
		bodyString := cmd.Flag("body").Value.String()
		var body *platformclientmodels.EventPayload
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		input := &reward.CheckEventConditionParams{
			Body:      body,
			Namespace: namespace,
			RewardID:  rewardId,
		}
		ok, errOK := rewardService.CheckEventConditionShort(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	CheckEventConditionCmd.Flags().String("body", "", "Body")
	CheckEventConditionCmd.Flags().String("namespace", "", "Namespace")
	_ = CheckEventConditionCmd.MarkFlagRequired("namespace")
	CheckEventConditionCmd.Flags().String("rewardId", "", "Reward id")
	_ = CheckEventConditionCmd.MarkFlagRequired("rewardId")
}
