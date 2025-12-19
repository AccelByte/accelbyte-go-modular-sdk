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

// GrantUserTierCmd represents the GrantUserTier command
var GrantUserTierCmd = &cobra.Command{
	Use:   "grantUserTier",
	Short: "Grant user tier",
	Long:  `Grant user tier`,
	RunE: func(cmd *cobra.Command, args []string) error {
		tierService := &seasonpass.TierService{
			Client:          seasonpass.NewSeasonpassClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		bodyString := cmd.Flag("body").Value.String()
		var body *seasonpassclientmodels.UserTierGrant
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		input := &tier.GrantUserTierParams{
			Body:      body,
			Namespace: namespace,
			UserID:    userId,
		}
		ok, errOK := tierService.GrantUserTierShort(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	GrantUserTierCmd.Flags().String("body", "", "Body")
	GrantUserTierCmd.Flags().String("namespace", "", "Namespace")
	_ = GrantUserTierCmd.MarkFlagRequired("namespace")
	GrantUserTierCmd.Flags().String("userId", "", "User id")
	_ = GrantUserTierCmd.MarkFlagRequired("userId")
}
