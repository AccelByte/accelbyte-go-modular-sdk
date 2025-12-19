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

// DeleteAllUserGroupCmd represents the DeleteAllUserGroup command
var DeleteAllUserGroupCmd = &cobra.Command{
	Use:   "deleteAllUserGroup",
	Short: "Delete all user group",
	Long:  `Delete all user group`,
	RunE: func(cmd *cobra.Command, args []string) error {
		anonymizationService := &ugc.AnonymizationService{
			Client:          ugc.NewUgcClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &anonymization.DeleteAllUserGroupParams{
			Namespace: namespace,
			UserID:    userId,
		}
		errNoContent := anonymizationService.DeleteAllUserGroupShort(input)
		if errNoContent != nil {
			slog.Error("operation failed", "error", errNoContent)

			return errNoContent
		}

		slog.Info("Response CLI success.")

		return nil
	},
}

func init() {
	DeleteAllUserGroupCmd.Flags().String("namespace", "", "Namespace")
	_ = DeleteAllUserGroupCmd.MarkFlagRequired("namespace")
	DeleteAllUserGroupCmd.Flags().String("userId", "", "User id")
	_ = DeleteAllUserGroupCmd.MarkFlagRequired("userId")
}
