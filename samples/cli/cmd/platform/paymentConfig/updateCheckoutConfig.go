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

// UpdateCheckoutConfigCmd represents the UpdateCheckoutConfig command
var UpdateCheckoutConfigCmd = &cobra.Command{
	Use:   "updateCheckoutConfig",
	Short: "Update checkout config",
	Long:  `Update checkout config`,
	RunE: func(cmd *cobra.Command, args []string) error {
		paymentConfigService := &platform.PaymentConfigService{
			Client:          platform.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *platformclientmodels.CheckoutConfig
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		id_, _ := cmd.Flags().GetString("id")
		sandbox, _ := cmd.Flags().GetBool("sandbox")
		validate, _ := cmd.Flags().GetBool("validate")
		input := &payment_config.UpdateCheckoutConfigParams{
			Body:     body,
			ID:       id_,
			Sandbox:  &sandbox,
			Validate: &validate,
		}
		ok, errOK := paymentConfigService.UpdateCheckoutConfigShort(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	UpdateCheckoutConfigCmd.Flags().String("body", "", "Body")
	_ = UpdateCheckoutConfigCmd.MarkFlagRequired("body")
	UpdateCheckoutConfigCmd.Flags().String("id", "", "Id")
	_ = UpdateCheckoutConfigCmd.MarkFlagRequired("id")
	UpdateCheckoutConfigCmd.Flags().Bool("sandbox", false, "Sandbox")
	UpdateCheckoutConfigCmd.Flags().Bool("validate", false, "Validate")
}
