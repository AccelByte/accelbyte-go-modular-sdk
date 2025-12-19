// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package campaign

import (
	"log/slog"

	platform "github.com/AccelByte/accelbyte-go-modular-sdk/platform-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/platform-sdk/pkg/platformclient/campaign"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// DisableCodeCmd represents the DisableCode command
var DisableCodeCmd = &cobra.Command{
	Use:   "disableCode",
	Short: "Disable code",
	Long:  `Disable code`,
	RunE: func(cmd *cobra.Command, args []string) error {
		campaignService := &platform.CampaignService{
			Client:          platform.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		code, _ := cmd.Flags().GetString("code")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &campaign.DisableCodeParams{
			Code:      code,
			Namespace: namespace,
		}
		ok, errOK := campaignService.DisableCodeShort(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	DisableCodeCmd.Flags().String("code", "", "Code")
	_ = DisableCodeCmd.MarkFlagRequired("code")
	DisableCodeCmd.Flags().String("namespace", "", "Namespace")
	_ = DisableCodeCmd.MarkFlagRequired("namespace")
}
