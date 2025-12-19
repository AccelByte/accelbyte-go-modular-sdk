// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package paymentConfig

import (
	"encoding/json"
	"log/slog"

	platform "github.com/AccelByte/accelbyte-go-modular-sdk/platform-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/platform-sdk/pkg/platformclient/payment_config"
	"github.com/AccelByte/accelbyte-go-modular-sdk/platform-sdk/pkg/platformclientmodels"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// UpdatePayPalConfigCmd represents the UpdatePayPalConfig command
var UpdatePayPalConfigCmd = &cobra.Command{
	Use:   "updatePayPalConfig",
	Short: "Update pay pal config",
	Long:  `Update pay pal config`,
	RunE: func(cmd *cobra.Command, args []string) error {
		paymentConfigService := &platform.PaymentConfigService{
			Client:          platform.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *platformclientmodels.PayPalConfig
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		id_, _ := cmd.Flags().GetString("id")
		sandbox, _ := cmd.Flags().GetBool("sandbox")
		validate, _ := cmd.Flags().GetBool("validate")
		input := &payment_config.UpdatePayPalConfigParams{
			Body:     body,
			ID:       id_,
			Sandbox:  &sandbox,
			Validate: &validate,
		}
		ok, errOK := paymentConfigService.UpdatePayPalConfigShort(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	UpdatePayPalConfigCmd.Flags().String("body", "", "Body")
	_ = UpdatePayPalConfigCmd.MarkFlagRequired("body")
	UpdatePayPalConfigCmd.Flags().String("id", "", "Id")
	_ = UpdatePayPalConfigCmd.MarkFlagRequired("id")
	UpdatePayPalConfigCmd.Flags().Bool("sandbox", false, "Sandbox")
	UpdatePayPalConfigCmd.Flags().Bool("validate", false, "Validate")
}
