// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package section

import (
	"log/slog"

	platform "github.com/AccelByte/accelbyte-go-modular-sdk/platform-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/platform-sdk/pkg/platformclient/section"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// PurgeExpiredSectionCmd represents the PurgeExpiredSection command
var PurgeExpiredSectionCmd = &cobra.Command{
	Use:   "purgeExpiredSection",
	Short: "Purge expired section",
	Long:  `Purge expired section`,
	RunE: func(cmd *cobra.Command, args []string) error {
		sectionService := &platform.SectionService{
			Client:          platform.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		storeId, _ := cmd.Flags().GetString("storeId")
		input := &section.PurgeExpiredSectionParams{
			Namespace: namespace,
			StoreID:   storeId,
		}
		errNoContent := sectionService.PurgeExpiredSectionShort(input)
		if errNoContent != nil {
			slog.Error("operation failed", "error", errNoContent)

			return errNoContent
		}

		slog.Info("Response CLI success.")

		return nil
	},
}

func init() {
	PurgeExpiredSectionCmd.Flags().String("namespace", "", "Namespace")
	_ = PurgeExpiredSectionCmd.MarkFlagRequired("namespace")
	PurgeExpiredSectionCmd.Flags().String("storeId", "", "Store id")
	_ = PurgeExpiredSectionCmd.MarkFlagRequired("storeId")
}
