// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package utilities

import (
	"log/slog"

	seasonpass "github.com/AccelByte/accelbyte-go-modular-sdk/seasonpass-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/seasonpass-sdk/pkg/seasonpassclient/utilities"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// GetItemReferencesCmd represents the GetItemReferences command
var GetItemReferencesCmd = &cobra.Command{
	Use:   "getItemReferences",
	Short: "Get item references",
	Long:  `Get item references`,
	RunE: func(cmd *cobra.Command, args []string) error {
		utilitiesService := &seasonpass.UtilitiesService{
			Client:          seasonpass.NewSeasonpassClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		itemId, _ := cmd.Flags().GetString("itemId")
		input := &utilities.GetItemReferencesParams{
			Namespace: namespace,
			ItemID:    itemId,
		}
		ok, errOK := utilitiesService.GetItemReferencesShort(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	GetItemReferencesCmd.Flags().String("namespace", "", "Namespace")
	_ = GetItemReferencesCmd.MarkFlagRequired("namespace")
	GetItemReferencesCmd.Flags().String("itemId", "", "Item id")
	_ = GetItemReferencesCmd.MarkFlagRequired("itemId")
}
