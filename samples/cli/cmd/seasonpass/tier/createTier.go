// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package tier

import (
	"encoding/json"
	"log/slog"

	seasonpass "github.com/AccelByte/accelbyte-go-modular-sdk/seasonpass-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/seasonpass-sdk/pkg/seasonpassclient/tier"
	"github.com/AccelByte/accelbyte-go-modular-sdk/seasonpass-sdk/pkg/seasonpassclientmodels"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// CreateTierCmd represents the CreateTier command
var CreateTierCmd = &cobra.Command{
	Use:   "createTier",
	Short: "Create tier",
	Long:  `Create tier`,
	RunE: func(cmd *cobra.Command, args []string) error {
		tierService := &seasonpass.TierService{
			Client:          seasonpass.NewSeasonpassClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		seasonId, _ := cmd.Flags().GetString("seasonId")
		bodyString := cmd.Flag("body").Value.String()
		var body *seasonpassclientmodels.TierCreate
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		input := &tier.CreateTierParams{
			Body:      body,
			Namespace: namespace,
			SeasonID:  seasonId,
		}
		created, errCreated := tierService.CreateTierShort(input)
		if errCreated != nil {
			slog.Error("operation failed", "error", errCreated)

			return errCreated
		}

		slog.Info("Response CLI success", "response", created)

		return nil
	},
}

func init() {
	CreateTierCmd.Flags().String("body", "", "Body")
	CreateTierCmd.Flags().String("namespace", "", "Namespace")
	_ = CreateTierCmd.MarkFlagRequired("namespace")
	CreateTierCmd.Flags().String("seasonId", "", "Season id")
	_ = CreateTierCmd.MarkFlagRequired("seasonId")
}
