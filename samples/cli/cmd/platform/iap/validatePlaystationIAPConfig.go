// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package iap

import (
	"encoding/json"
	"log/slog"

	platform "github.com/AccelByte/accelbyte-go-modular-sdk/platform-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/platform-sdk/pkg/platformclient/iap"
	"github.com/AccelByte/accelbyte-go-modular-sdk/platform-sdk/pkg/platformclientmodels"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// ValidatePlaystationIAPConfigCmd represents the ValidatePlaystationIAPConfig command
var ValidatePlaystationIAPConfigCmd = &cobra.Command{
	Use:   "validatePlaystationIAPConfig",
	Short: "Validate playstation IAP config",
	Long:  `Validate playstation IAP config`,
	RunE: func(cmd *cobra.Command, args []string) error {
		iapService := &platform.IAPService{
			Client:          platform.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *platformclientmodels.PlaystationIAPConfigRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &iap.ValidatePlaystationIAPConfigParams{
			Body:      body,
			Namespace: namespace,
		}
		ok, errOK := iapService.ValidatePlaystationIAPConfigShort(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	ValidatePlaystationIAPConfigCmd.Flags().String("body", "", "Body")
	_ = ValidatePlaystationIAPConfigCmd.MarkFlagRequired("body")
	ValidatePlaystationIAPConfigCmd.Flags().String("namespace", "", "Namespace")
	_ = ValidatePlaystationIAPConfigCmd.MarkFlagRequired("namespace")
}
