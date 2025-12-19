// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package dlc

import (
	"log/slog"

	platform "github.com/AccelByte/accelbyte-go-modular-sdk/platform-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/platform-sdk/pkg/platformclient/dlc"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// PublicGetMyDLCContentCmd represents the PublicGetMyDLCContent command
var PublicGetMyDLCContentCmd = &cobra.Command{
	Use:   "publicGetMyDLCContent",
	Short: "Public get my DLC content",
	Long:  `Public get my DLC content`,
	RunE: func(cmd *cobra.Command, args []string) error {
		dlcService := &platform.DLCService{
			Client:          platform.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		type_, _ := cmd.Flags().GetString("type")
		includeAllNamespaces, _ := cmd.Flags().GetBool("includeAllNamespaces")
		input := &dlc.PublicGetMyDLCContentParams{
			IncludeAllNamespaces: &includeAllNamespaces,
			Type:                 type_,
		}
		ok, errOK := dlcService.PublicGetMyDLCContentShort(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	PublicGetMyDLCContentCmd.Flags().Bool("includeAllNamespaces", false, "Include all namespaces")
	PublicGetMyDLCContentCmd.Flags().String("type", "", "Type")
	_ = PublicGetMyDLCContentCmd.MarkFlagRequired("type")
}
