// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package misc

import (
	"log/slog"

	basic "github.com/AccelByte/accelbyte-go-modular-sdk/basic-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/basic-sdk/pkg/basicclient/misc"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// PublicGetLanguagesCmd represents the PublicGetLanguages command
var PublicGetLanguagesCmd = &cobra.Command{
	Use:   "publicGetLanguages",
	Short: "Public get languages",
	Long:  `Public get languages`,
	RunE: func(cmd *cobra.Command, args []string) error {
		miscService := &basic.MiscService{
			Client:          basic.NewBasicClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &misc.PublicGetLanguagesParams{
			Namespace: namespace,
		}
		ok, errOK := miscService.PublicGetLanguagesShort(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	PublicGetLanguagesCmd.Flags().String("namespace", "", "Namespace")
	_ = PublicGetLanguagesCmd.MarkFlagRequired("namespace")
}
