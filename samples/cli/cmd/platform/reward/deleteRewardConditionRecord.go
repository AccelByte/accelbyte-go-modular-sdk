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

// DeleteRewardConditionRecordCmd represents the DeleteRewardConditionRecord command
var DeleteRewardConditionRecordCmd = &cobra.Command{
	Use:   "deleteRewardConditionRecord",
	Short: "Delete reward condition record",
	Long:  `Delete reward condition record`,
	RunE: func(cmd *cobra.Command, args []string) error {
		rewardService := &platform.RewardService{
			Client:          platform.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *platformclientmodels.DeleteRewardConditionRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		rewardId, _ := cmd.Flags().GetString("rewardId")
		input := &reward.DeleteRewardConditionRecordParams{
			Body:      body,
			Namespace: namespace,
			RewardID:  rewardId,
		}
		errNoContent := rewardService.DeleteRewardConditionRecordShort(input)
		if errNoContent != nil {
			slog.Error("operation failed", "error", errNoContent)

			return errNoContent
		}

		slog.Info("Response CLI success.")

		return nil
	},
}

func init() {
	DeleteRewardConditionRecordCmd.Flags().String("body", "", "Body")
	_ = DeleteRewardConditionRecordCmd.MarkFlagRequired("body")
	DeleteRewardConditionRecordCmd.Flags().String("namespace", "", "Namespace")
	_ = DeleteRewardConditionRecordCmd.MarkFlagRequired("namespace")
	DeleteRewardConditionRecordCmd.Flags().String("rewardId", "", "Reward id")
	_ = DeleteRewardConditionRecordCmd.MarkFlagRequired("rewardId")
}
