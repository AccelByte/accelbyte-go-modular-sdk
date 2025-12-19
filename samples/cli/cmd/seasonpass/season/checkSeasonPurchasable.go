// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package season

import (
	"encoding/json"
	"log/slog"

	seasonpass "github.com/AccelByte/accelbyte-go-modular-sdk/seasonpass-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/seasonpass-sdk/pkg/seasonpassclient/season"
	"github.com/AccelByte/accelbyte-go-modular-sdk/seasonpass-sdk/pkg/seasonpassclientmodels"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// CheckSeasonPurchasableCmd represents the CheckSeasonPurchasable command
var CheckSeasonPurchasableCmd = &cobra.Command{
	Use:   "checkSeasonPurchasable",
	Short: "Check season purchasable",
	Long:  `Check season purchasable`,
	RunE: func(cmd *cobra.Command, args []string) error {
		seasonService := &seasonpass.SeasonService{
			Client:          seasonpass.NewSeasonpassClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		bodyString := cmd.Flag("body").Value.String()
		var body *seasonpassclientmodels.UserPurchasable
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		input := &season.CheckSeasonPurchasableParams{
			Body:      body,
			Namespace: namespace,
			UserID:    userId,
		}
		errNoContent := seasonService.CheckSeasonPurchasableShort(input)
		if errNoContent != nil {
			slog.Error("operation failed", "error", errNoContent)

			return errNoContent
		}

		slog.Info("Response CLI success.")

		return nil
	},
}

func init() {
	CheckSeasonPurchasableCmd.Flags().String("body", "", "Body")
	CheckSeasonPurchasableCmd.Flags().String("namespace", "", "Namespace")
	_ = CheckSeasonPurchasableCmd.MarkFlagRequired("namespace")
	CheckSeasonPurchasableCmd.Flags().String("userId", "", "User id")
	_ = CheckSeasonPurchasableCmd.MarkFlagRequired("userId")
}
