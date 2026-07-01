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

// GetNamespaceCmd represents the GetNamespace command
var GetNamespaceCmd = &cobra.Command{
	Use:	"getNamespace",
	Short:  "Get namespace",
	Long:   `Get namespace`,
	RunE: func(cmd *cobra.Command, args []string) error {
		namespaceService := &basic.NamespaceService{
			Client: basic.NewBasicHttpClient(&repository.ConfigRepositoryImpl{}),
			Session: sdkrepository.Session{
				TokenRepository: &repository.TokenRepositoryImpl{},
			},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		activeOnly, _ := cmd.Flags().GetBool("activeOnly")
		input := &namespace_.GetNamespaceParams{
			Namespace : namespace,
			ActiveOnly: &activeOnly,
		}
ok,errOK := namespaceService.GetNamespaceShort(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

        slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	GetNamespaceCmd.Flags().String("namespace", "", "Namespace")
	_ = GetNamespaceCmd.MarkFlagRequired("namespace")
	GetNamespaceCmd.Flags().Bool("activeOnly", false, "Active only")
}