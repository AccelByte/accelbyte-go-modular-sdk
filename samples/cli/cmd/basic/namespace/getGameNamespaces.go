// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package namespace

import (
	"log/slog"
	namespace_ "github.com/AccelByte/accelbyte-go-modular-sdk/basic-sdk/pkg/basicclient/namespace"
	basic "github.com/AccelByte/accelbyte-go-modular-sdk/basic-sdk/pkg"
	sdkrepository "github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/repository"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// GetGameNamespacesCmd represents the GetGameNamespaces command
var GetGameNamespacesCmd = &cobra.Command{
	Use:	"getGameNamespaces",
	Short:  "Get game namespaces",
	Long:   `Get game namespaces`,
	RunE: func(cmd *cobra.Command, args []string) error {
		namespaceService := &basic.NamespaceService{
			Client: basic.NewBasicHttpClient(&repository.ConfigRepositoryImpl{}),
			Session: sdkrepository.Session{
				TokenRepository: &repository.TokenRepositoryImpl{},
			},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		activeOnly, _ := cmd.Flags().GetBool("activeOnly")
		input := &namespace_.GetGameNamespacesParams{
			Namespace : namespace,
			ActiveOnly: &activeOnly,
		}
ok,errOK := namespaceService.GetGameNamespacesShort(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

        slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	GetGameNamespacesCmd.Flags().String("namespace", "", "Namespace")
	_ = GetGameNamespacesCmd.MarkFlagRequired("namespace")
	GetGameNamespacesCmd.Flags().Bool("activeOnly", false, "Active only")
}