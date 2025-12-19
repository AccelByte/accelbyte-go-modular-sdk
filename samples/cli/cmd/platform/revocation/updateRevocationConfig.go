// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package revocation

import (
	"encoding/json"
	"log/slog"

	platform "github.com/AccelByte/accelbyte-go-modular-sdk/platform-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/platform-sdk/pkg/platformclient/revocation"
	"github.com/AccelByte/accelbyte-go-modular-sdk/platform-sdk/pkg/platformclientmodels"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// UpdateRevocationConfigCmd represents the UpdateRevocationConfig command
var UpdateRevocationConfigCmd = &cobra.Command{
	Use:   "updateRevocationConfig",
	Short: "Update revocation config",
	Long:  `Update revocation config`,
	RunE: func(cmd *cobra.Command, args []string) error {
		revocationService := &platform.RevocationService{
			Client:          platform.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *platformclientmodels.RevocationConfigUpdate
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &revocation.UpdateRevocationConfigParams{
			Body:      body,
			Namespace: namespace,
		}
		ok, errOK := revocationService.UpdateRevocationConfigShort(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	UpdateRevocationConfigCmd.Flags().String("body", "", "Body")
	_ = UpdateRevocationConfigCmd.MarkFlagRequired("body")
	UpdateRevocationConfigCmd.Flags().String("namespace", "", "Namespace")
	_ = UpdateRevocationConfigCmd.MarkFlagRequired("namespace")
}
