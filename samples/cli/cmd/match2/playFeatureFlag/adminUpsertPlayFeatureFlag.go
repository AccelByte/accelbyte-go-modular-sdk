// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package playFeatureFlag

import (
	"encoding/json"
	"log/slog"

	match2 "github.com/AccelByte/accelbyte-go-modular-sdk/match2-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/match2-sdk/pkg/match2client/play_feature_flag"
	"github.com/AccelByte/accelbyte-go-modular-sdk/match2-sdk/pkg/match2clientmodels"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// AdminUpsertPlayFeatureFlagCmd represents the AdminUpsertPlayFeatureFlag command
var AdminUpsertPlayFeatureFlagCmd = &cobra.Command{
	Use:   "adminUpsertPlayFeatureFlag",
	Short: "Admin upsert play feature flag",
	Long:  `Admin upsert play feature flag`,
	RunE: func(cmd *cobra.Command, args []string) error {
		playFeatureFlagService := &match2.PlayFeatureFlagService{
			Client:          match2.NewMatch2Client(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *match2clientmodels.ModelsPlayFeatureFlag
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &play_feature_flag.AdminUpsertPlayFeatureFlagParams{
			Body:      body,
			Namespace: namespace,
		}
		ok, errOK := playFeatureFlagService.AdminUpsertPlayFeatureFlagShort(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	AdminUpsertPlayFeatureFlagCmd.Flags().String("body", "", "Body")
	_ = AdminUpsertPlayFeatureFlagCmd.MarkFlagRequired("body")
	AdminUpsertPlayFeatureFlagCmd.Flags().String("namespace", "", "Namespace")
	_ = AdminUpsertPlayFeatureFlagCmd.MarkFlagRequired("namespace")
}
