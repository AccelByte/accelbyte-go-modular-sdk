// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package publicTags

import (
	"log/slog"

	inventory "github.com/AccelByte/accelbyte-go-modular-sdk/inventory-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/inventory-sdk/pkg/inventoryclient/public_tags"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// PublicListTagsCmd represents the PublicListTags command
var PublicListTagsCmd = &cobra.Command{
	Use:   "publicListTags",
	Short: "Public list tags",
	Long:  `Public list tags`,
	RunE: func(cmd *cobra.Command, args []string) error {
		publicTagsService := &inventory.PublicTagsService{
			Client:          inventory.NewInventoryClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		limit, _ := cmd.Flags().GetInt64("limit")
		offset, _ := cmd.Flags().GetInt64("offset")
		sortBy, _ := cmd.Flags().GetString("sortBy")
		input := &public_tags.PublicListTagsParams{
			Namespace: namespace,
			Limit:     &limit,
			Offset:    &offset,
			SortBy:    &sortBy,
		}
		ok, errOK := publicTagsService.PublicListTagsShort(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	PublicListTagsCmd.Flags().String("namespace", "", "Namespace")
	_ = PublicListTagsCmd.MarkFlagRequired("namespace")
	PublicListTagsCmd.Flags().Int64("limit", 20, "Limit")
	PublicListTagsCmd.Flags().Int64("offset", 0, "Offset")
	PublicListTagsCmd.Flags().String("sortBy", "", "Sort by")
}
