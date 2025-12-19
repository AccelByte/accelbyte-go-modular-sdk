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

// AdminDeleteAllUserGroupCmd represents the AdminDeleteAllUserGroup command
var AdminDeleteAllUserGroupCmd = &cobra.Command{
	Use:   "adminDeleteAllUserGroup",
	Short: "Admin delete all user group",
	Long:  `Admin delete all user group`,
	RunE: func(cmd *cobra.Command, args []string) error {
		anonymizationService := &ugc.AnonymizationService{
			Client:          ugc.NewUgcClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &anonymization.AdminDeleteAllUserGroupParams{
			Namespace: namespace,
			UserID:    userId,
		}
		errNoContent := anonymizationService.AdminDeleteAllUserGroupShort(input)
		if errNoContent != nil {
			slog.Error("operation failed", "error", errNoContent)

			return errNoContent
		}

		slog.Info("Response CLI success.")

		return nil
	},
}

func init() {
	AdminDeleteAllUserGroupCmd.Flags().String("namespace", "", "Namespace")
	_ = AdminDeleteAllUserGroupCmd.MarkFlagRequired("namespace")
	AdminDeleteAllUserGroupCmd.Flags().String("userId", "", "User id")
	_ = AdminDeleteAllUserGroupCmd.MarkFlagRequired("userId")
}
