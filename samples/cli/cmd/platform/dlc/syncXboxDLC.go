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

// SyncXboxDLCCmd represents the SyncXboxDLC command
var SyncXboxDLCCmd = &cobra.Command{
	Use:   "syncXboxDLC",
	Short: "Sync xbox DLC",
	Long:  `Sync xbox DLC`,
	RunE: func(cmd *cobra.Command, args []string) error {
		dlcService := &platform.DLCService{
			Client:          platform.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		bodyString := cmd.Flag("body").Value.String()
		var body *platformclientmodels.XblDLCSyncRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		input := &dlc.SyncXboxDLCParams{
			Body:      body,
			Namespace: namespace,
			UserID:    userId,
		}
		errNoContent := dlcService.SyncXboxDLCShort(input)
		if errNoContent != nil {
			slog.Error("operation failed", "error", errNoContent)

			return errNoContent
		}

		slog.Info("Response CLI success.")

		return nil
	},
}

func init() {
	SyncXboxDLCCmd.Flags().String("body", "", "Body")
	SyncXboxDLCCmd.Flags().String("namespace", "", "Namespace")
	_ = SyncXboxDLCCmd.MarkFlagRequired("namespace")
	SyncXboxDLCCmd.Flags().String("userId", "", "User id")
	_ = SyncXboxDLCCmd.MarkFlagRequired("userId")
}
