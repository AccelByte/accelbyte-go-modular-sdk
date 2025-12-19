// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package matchPools

import (
	"encoding/json"
	"log/slog"

	match2 "github.com/AccelByte/accelbyte-go-modular-sdk/match2-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/match2-sdk/pkg/match2client/match_pools"
	"github.com/AccelByte/accelbyte-go-modular-sdk/match2-sdk/pkg/match2clientmodels"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// UpdateMatchPoolCmd represents the UpdateMatchPool command
var UpdateMatchPoolCmd = &cobra.Command{
	Use:   "updateMatchPool",
	Short: "Update match pool",
	Long:  `Update match pool`,
	RunE: func(cmd *cobra.Command, args []string) error {
		matchPoolsService := &match2.MatchPoolsService{
			Client:          match2.NewMatch2Client(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *match2clientmodels.APIMatchPoolConfig
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		pool, _ := cmd.Flags().GetString("pool")
		input := &match_pools.UpdateMatchPoolParams{
			Body:      body,
			Namespace: namespace,
			Pool:      pool,
		}
		ok, errOK := matchPoolsService.UpdateMatchPoolShort(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	UpdateMatchPoolCmd.Flags().String("body", "", "Body")
	_ = UpdateMatchPoolCmd.MarkFlagRequired("body")
	UpdateMatchPoolCmd.Flags().String("namespace", "", "Namespace")
	_ = UpdateMatchPoolCmd.MarkFlagRequired("namespace")
	UpdateMatchPoolCmd.Flags().String("pool", "", "Pool")
	_ = UpdateMatchPoolCmd.MarkFlagRequired("pool")
}
