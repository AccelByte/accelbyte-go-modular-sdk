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

// GetNamespace1Cmd represents the GetNamespace1 command
var GetNamespace1Cmd = &cobra.Command{
	Use:	"getNamespace1",
	Short:  "Get namespace 1",
	Long:   `Get namespace 1`,
	RunE: func(cmd *cobra.Command, args []string) error {
		namespaceService := &basic.NamespaceService{
			Client: basic.NewBasicHttpClient(&repository.ConfigRepositoryImpl{}),
			Session: sdkrepository.Session{
				TokenRepository: &repository.TokenRepositoryImpl{},
			},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &namespace_.GetNamespace1Params{
			Namespace: namespace,
		}
ok,errOK := namespaceService.GetNamespace1Short(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

        slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	GetNamespace1Cmd.Flags().String("namespace", "", "Namespace")
	_ = GetNamespace1Cmd.MarkFlagRequired("namespace")
}