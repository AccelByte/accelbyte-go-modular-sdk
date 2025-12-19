// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package anonymization

import (
	"log/slog"

	ugc "github.com/AccelByte/accelbyte-go-modular-sdk/ugc-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/ugc-sdk/pkg/ugcclient/anonymization"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// AdminDeleteAllUserStatesCmd represents the AdminDeleteAllUserStates command
var AdminDeleteAllUserStatesCmd = &cobra.Command{
	Use:   "adminDeleteAllUserStates",
	Short: "Admin delete all user states",
	Long:  `Admin delete all user states`,
	RunE: func(cmd *cobra.Command, args []string) error {
		anonymizationService := &ugc.AnonymizationService{
			Client:          ugc.NewUgcClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &anonymization.AdminDeleteAllUserStatesParams{
			Namespace: namespace,
			UserID:    userId,
		}
		errNoContent := anonymizationService.AdminDeleteAllUserStatesShort(input)
		if errNoContent != nil {
			slog.Error("operation failed", "error", errNoContent)

			return errNoContent
		}

		slog.Info("Response CLI success.")

		return nil
	},
}

func init() {
	AdminDeleteAllUserStatesCmd.Flags().String("namespace", "", "Namespace")
	_ = AdminDeleteAllUserStatesCmd.MarkFlagRequired("namespace")
	AdminDeleteAllUserStatesCmd.Flags().String("userId", "", "User id")
	_ = AdminDeleteAllUserStatesCmd.MarkFlagRequired("userId")
}
