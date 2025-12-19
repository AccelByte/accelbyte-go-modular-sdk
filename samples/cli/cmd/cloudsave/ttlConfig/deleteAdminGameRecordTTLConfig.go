// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package ttlConfig

import (
	"log/slog"

	cloudsave "github.com/AccelByte/accelbyte-go-modular-sdk/cloudsave-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/cloudsave-sdk/pkg/cloudsaveclient/ttl_config"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// DeleteAdminGameRecordTTLConfigCmd represents the DeleteAdminGameRecordTTLConfig command
var DeleteAdminGameRecordTTLConfigCmd = &cobra.Command{
	Use:   "deleteAdminGameRecordTTLConfig",
	Short: "Delete admin game record TTL config",
	Long:  `Delete admin game record TTL config`,
	RunE: func(cmd *cobra.Command, args []string) error {
		ttlConfigService := &cloudsave.TTLConfigService{
			Client:          cloudsave.NewCloudsaveClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		key, _ := cmd.Flags().GetString("key")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &ttl_config.DeleteAdminGameRecordTTLConfigParams{
			Key:       key,
			Namespace: namespace,
		}
		errNoContent := ttlConfigService.DeleteAdminGameRecordTTLConfigShort(input)
		if errNoContent != nil {
			slog.Error("operation failed", "error", errNoContent)

			return errNoContent
		}

		slog.Info("Response CLI success.")

		return nil
	},
}

func init() {
	DeleteAdminGameRecordTTLConfigCmd.Flags().String("key", "", "Key")
	_ = DeleteAdminGameRecordTTLConfigCmd.MarkFlagRequired("key")
	DeleteAdminGameRecordTTLConfigCmd.Flags().String("namespace", "", "Namespace")
	_ = DeleteAdminGameRecordTTLConfigCmd.MarkFlagRequired("namespace")
}
