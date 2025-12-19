// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package namespace

import (
	"log/slog"

	basic "github.com/AccelByte/accelbyte-go-modular-sdk/basic-sdk/pkg"
	namespace_ "github.com/AccelByte/accelbyte-go-modular-sdk/basic-sdk/pkg/basicclient/namespace"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// GetNamespaceContextCmd represents the GetNamespaceContext command
var GetNamespaceContextCmd = &cobra.Command{
	Use:   "getNamespaceContext",
	Short: "Get namespace context",
	Long:  `Get namespace context`,
	RunE: func(cmd *cobra.Command, args []string) error {
		namespaceService := &basic.NamespaceService{
			Client:          basic.NewBasicClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		refreshOnCacheMiss, _ := cmd.Flags().GetBool("refreshOnCacheMiss")
		input := &namespace_.GetNamespaceContextParams{
			Namespace:          namespace,
			RefreshOnCacheMiss: &refreshOnCacheMiss,
		}
		ok, errOK := namespaceService.GetNamespaceContextShort(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	GetNamespaceContextCmd.Flags().String("namespace", "", "Namespace")
	_ = GetNamespaceContextCmd.MarkFlagRequired("namespace")
	GetNamespaceContextCmd.Flags().Bool("refreshOnCacheMiss", false, "Refresh on cache miss")
}
