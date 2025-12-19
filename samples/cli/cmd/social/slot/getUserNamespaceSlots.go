// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package slot

import (
	"log/slog"

	social "github.com/AccelByte/accelbyte-go-modular-sdk/social-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/social-sdk/pkg/socialclient/slot"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// GetUserNamespaceSlotsCmd represents the GetUserNamespaceSlots command
var GetUserNamespaceSlotsCmd = &cobra.Command{
	Use:   "getUserNamespaceSlots",
	Short: "Get user namespace slots",
	Long:  `Get user namespace slots`,
	RunE: func(cmd *cobra.Command, args []string) error {
		slotService := &social.SlotService{
			Client:          social.NewSocialClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &slot.GetUserNamespaceSlotsParams{
			Namespace: namespace,
			UserID:    userId,
		}
		ok, errOK := slotService.GetUserNamespaceSlotsShort(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	GetUserNamespaceSlotsCmd.Flags().String("namespace", "", "Namespace")
	_ = GetUserNamespaceSlotsCmd.MarkFlagRequired("namespace")
	GetUserNamespaceSlotsCmd.Flags().String("userId", "", "User id")
	_ = GetUserNamespaceSlotsCmd.MarkFlagRequired("userId")
}
