// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package item

import (
	"encoding/json"
	"log/slog"

	platform "github.com/AccelByte/accelbyte-go-modular-sdk/platform-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/platform-sdk/pkg/platformclient/item"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// ListBasicItemsByFeaturesCmd represents the ListBasicItemsByFeatures command
var ListBasicItemsByFeaturesCmd = &cobra.Command{
	Use:   "listBasicItemsByFeatures",
	Short: "List basic items by features",
	Long:  `List basic items by features`,
	RunE: func(cmd *cobra.Command, args []string) error {
		itemService := &platform.ItemService{
			Client:          platform.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		activeOnly, _ := cmd.Flags().GetBool("activeOnly")
		featuresString := cmd.Flag("features").Value.String()
		var features []string
		errFeatures := json.Unmarshal([]byte(featuresString), &features)
		if errFeatures != nil {
			return errFeatures
		}
		input := &item.ListBasicItemsByFeaturesParams{
			Namespace:  namespace,
			ActiveOnly: &activeOnly,
			Features:   features,
		}
		ok, errOK := itemService.ListBasicItemsByFeaturesShort(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	ListBasicItemsByFeaturesCmd.Flags().String("namespace", "", "Namespace")
	_ = ListBasicItemsByFeaturesCmd.MarkFlagRequired("namespace")
	ListBasicItemsByFeaturesCmd.Flags().Bool("activeOnly", false, "Active only")
	ListBasicItemsByFeaturesCmd.Flags().String("features", "", "Features")
}
