// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package adminModerationRule

import (
	"log/slog"

	reporting "github.com/AccelByte/accelbyte-go-modular-sdk/reporting-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/reporting-sdk/pkg/reportingclient/admin_moderation_rule"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// DeleteModerationRuleCmd represents the DeleteModerationRule command
var DeleteModerationRuleCmd = &cobra.Command{
	Use:   "deleteModerationRule",
	Short: "Delete moderation rule",
	Long:  `Delete moderation rule`,
	RunE: func(cmd *cobra.Command, args []string) error {
		adminModerationRuleService := &reporting.AdminModerationRuleService{
			Client:          reporting.NewReportingClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		ruleId, _ := cmd.Flags().GetString("ruleId")
		input := &admin_moderation_rule.DeleteModerationRuleParams{
			Namespace: namespace,
			RuleID:    ruleId,
		}
		errNoContent := adminModerationRuleService.DeleteModerationRuleShort(input)
		if errNoContent != nil {
			slog.Error("operation failed", "error", errNoContent)

			return errNoContent
		}

		slog.Info("Response CLI success.")

		return nil
	},
}

func init() {
	DeleteModerationRuleCmd.Flags().String("namespace", "", "Namespace")
	_ = DeleteModerationRuleCmd.MarkFlagRequired("namespace")
	DeleteModerationRuleCmd.Flags().String("ruleId", "", "Rule id")
	_ = DeleteModerationRuleCmd.MarkFlagRequired("ruleId")
}
