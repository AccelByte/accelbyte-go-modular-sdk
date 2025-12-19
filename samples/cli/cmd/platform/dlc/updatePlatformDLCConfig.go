// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package dlc

import (
	"encoding/json"
	"log/slog"

	platform "github.com/AccelByte/accelbyte-go-modular-sdk/platform-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/platform-sdk/pkg/platformclient/dlc"
	"github.com/AccelByte/accelbyte-go-modular-sdk/platform-sdk/pkg/platformclientmodels"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// UpdatePlatformDLCConfigCmd represents the UpdatePlatformDLCConfig command
var UpdatePlatformDLCConfigCmd = &cobra.Command{
	Use:   "updatePlatformDLCConfig",
	Short: "Update platform DLC config",
	Long:  `Update platform DLC config`,
	RunE: func(cmd *cobra.Command, args []string) error {
		dlcService := &platform.DLCService{
			Client:          platform.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *platformclientmodels.PlatformDLCConfigUpdate
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &dlc.UpdatePlatformDLCConfigParams{
			Body:      body,
			Namespace: namespace,
		}
		ok, errOK := dlcService.UpdatePlatformDLCConfigShort(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	UpdatePlatformDLCConfigCmd.Flags().String("body", "", "Body")
	_ = UpdatePlatformDLCConfigCmd.MarkFlagRequired("body")
	UpdatePlatformDLCConfigCmd.Flags().String("namespace", "", "Namespace")
	_ = UpdatePlatformDLCConfigCmd.MarkFlagRequired("namespace")
}
