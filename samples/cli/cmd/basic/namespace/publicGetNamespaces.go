// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package namespace

import (
	"log/slog"

	basic "github.com/AccelByte/accelbyte-go-modular-sdk/basic-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/basic-sdk/pkg/basicclient/namespace"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// PublicGetNamespacesCmd represents the PublicGetNamespaces command
var PublicGetNamespacesCmd = &cobra.Command{
	Use:   "publicGetNamespaces",
	Short: "Public get namespaces",
	Long:  `Public get namespaces`,
	RunE: func(cmd *cobra.Command, args []string) error {
		namespaceService := &basic.NamespaceService{
			Client:          basic.NewBasicClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		activeOnly, _ := cmd.Flags().GetBool("activeOnly")
		input := &namespace.PublicGetNamespacesParams{
			ActiveOnly: &activeOnly,
		}
		ok, errOK := namespaceService.PublicGetNamespacesShort(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	PublicGetNamespacesCmd.Flags().Bool("activeOnly", false, "Active only")
}
