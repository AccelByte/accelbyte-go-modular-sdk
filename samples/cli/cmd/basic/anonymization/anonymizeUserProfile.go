// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package anonymization

import (
	"log/slog"

	basic "github.com/AccelByte/accelbyte-go-modular-sdk/basic-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/basic-sdk/pkg/basicclient/anonymization"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// AnonymizeUserProfileCmd represents the AnonymizeUserProfile command
var AnonymizeUserProfileCmd = &cobra.Command{
	Use:   "anonymizeUserProfile",
	Short: "Anonymize user profile",
	Long:  `Anonymize user profile`,
	RunE: func(cmd *cobra.Command, args []string) error {
		anonymizationService := &basic.AnonymizationService{
			Client:          basic.NewBasicClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &anonymization.AnonymizeUserProfileParams{
			Namespace: namespace,
			UserID:    userId,
		}
		errNoContent := anonymizationService.AnonymizeUserProfileShort(input)
		if errNoContent != nil {
			slog.Error("operation failed", "error", errNoContent)

			return errNoContent
		}

		slog.Info("Response CLI success.")

		return nil
	},
}

func init() {
	AnonymizeUserProfileCmd.Flags().String("namespace", "", "Namespace")
	_ = AnonymizeUserProfileCmd.MarkFlagRequired("namespace")
	AnonymizeUserProfileCmd.Flags().String("userId", "", "User id")
	_ = AnonymizeUserProfileCmd.MarkFlagRequired("userId")
}
