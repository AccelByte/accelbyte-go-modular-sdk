// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package profileUpdateStrategy

import (
	"log/slog"

	iam "github.com/AccelByte/accelbyte-go-modular-sdk/iam-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/iam-sdk/pkg/iamclient/profile_update_strategy"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// AdminGetProfileUpdateStrategyV3Cmd represents the AdminGetProfileUpdateStrategyV3 command
var AdminGetProfileUpdateStrategyV3Cmd = &cobra.Command{
	Use:   "adminGetProfileUpdateStrategyV3",
	Short: "Admin get profile update strategy V3",
	Long:  `Admin get profile update strategy V3`,
	RunE: func(cmd *cobra.Command, args []string) error {
		profileUpdateStrategyService := &iam.ProfileUpdateStrategyService{
			Client:          iam.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		field, _ := cmd.Flags().GetString("field")
		input := &profile_update_strategy.AdminGetProfileUpdateStrategyV3Params{
			Namespace: namespace,
			Field:     &field,
		}
		ok, errOK := profileUpdateStrategyService.AdminGetProfileUpdateStrategyV3Short(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	AdminGetProfileUpdateStrategyV3Cmd.Flags().String("namespace", "", "Namespace")
	_ = AdminGetProfileUpdateStrategyV3Cmd.MarkFlagRequired("namespace")
	AdminGetProfileUpdateStrategyV3Cmd.Flags().String("field", "", "Field")
}
