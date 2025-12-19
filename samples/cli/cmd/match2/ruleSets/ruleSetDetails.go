// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package ruleSets

import (
	"log/slog"

	match2 "github.com/AccelByte/accelbyte-go-modular-sdk/match2-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/match2-sdk/pkg/match2client/rule_sets"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// RuleSetDetailsCmd represents the RuleSetDetails command
var RuleSetDetailsCmd = &cobra.Command{
	Use:   "ruleSetDetails",
	Short: "Rule set details",
	Long:  `Rule set details`,
	RunE: func(cmd *cobra.Command, args []string) error {
		ruleSetsService := &match2.RuleSetsService{
			Client:          match2.NewMatch2Client(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		ruleset, _ := cmd.Flags().GetString("ruleset")
		input := &rule_sets.RuleSetDetailsParams{
			Namespace: namespace,
			Ruleset:   ruleset,
		}
		ok, errOK := ruleSetsService.RuleSetDetailsShort(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	RuleSetDetailsCmd.Flags().String("namespace", "", "Namespace")
	_ = RuleSetDetailsCmd.MarkFlagRequired("namespace")
	RuleSetDetailsCmd.Flags().String("ruleset", "", "Ruleset")
	_ = RuleSetDetailsCmd.MarkFlagRequired("ruleset")
}
