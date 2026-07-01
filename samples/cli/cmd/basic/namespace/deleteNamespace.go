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

// DeleteNamespaceCmd represents the DeleteNamespace command
var DeleteNamespaceCmd = &cobra.Command{
	Use:	"deleteNamespace",
	Short:  "Delete namespace",
	Long:   `Delete namespace`,
	RunE: func(cmd *cobra.Command, args []string) error {
		namespaceService := &basic.NamespaceService{
			Client: basic.NewBasicHttpClient(&repository.ConfigRepositoryImpl{}),
			Session: sdkrepository.Session{
				TokenRepository: &repository.TokenRepositoryImpl{},
			},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &namespace_.DeleteNamespaceParams{
			Namespace: namespace,
		}
ok,errOK := namespaceService.DeleteNamespaceShort(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

        slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	DeleteNamespaceCmd.Flags().String("namespace", "", "Namespace")
	_ = DeleteNamespaceCmd.MarkFlagRequired("namespace")
}