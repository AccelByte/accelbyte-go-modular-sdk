// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package keyGroup

import (
	"log/slog"

	platform "github.com/AccelByte/accelbyte-go-modular-sdk/platform-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/platform-sdk/pkg/platformclient/key_group"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// GetKeyGroupDynamicCmd represents the GetKeyGroupDynamic command
var GetKeyGroupDynamicCmd = &cobra.Command{
	Use:   "getKeyGroupDynamic",
	Short: "Get key group dynamic",
	Long:  `Get key group dynamic`,
	RunE: func(cmd *cobra.Command, args []string) error {
		keyGroupService := &platform.KeyGroupService{
			Client:          platform.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		keyGroupId, _ := cmd.Flags().GetString("keyGroupId")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &key_group.GetKeyGroupDynamicParams{
			KeyGroupID: keyGroupId,
			Namespace:  namespace,
		}
		ok, errOK := keyGroupService.GetKeyGroupDynamicShort(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	GetKeyGroupDynamicCmd.Flags().String("keyGroupId", "", "Key group id")
	_ = GetKeyGroupDynamicCmd.MarkFlagRequired("keyGroupId")
	GetKeyGroupDynamicCmd.Flags().String("namespace", "", "Namespace")
	_ = GetKeyGroupDynamicCmd.MarkFlagRequired("namespace")
}
