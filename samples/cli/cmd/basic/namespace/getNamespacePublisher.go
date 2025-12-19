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

// GetNamespacePublisherCmd represents the GetNamespacePublisher command
var GetNamespacePublisherCmd = &cobra.Command{
	Use:   "getNamespacePublisher",
	Short: "Get namespace publisher",
	Long:  `Get namespace publisher`,
	RunE: func(cmd *cobra.Command, args []string) error {
		namespaceService := &basic.NamespaceService{
			Client:          basic.NewBasicClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &namespace_.GetNamespacePublisherParams{
			Namespace: namespace,
		}
		ok, errOK := namespaceService.GetNamespacePublisherShort(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	GetNamespacePublisherCmd.Flags().String("namespace", "", "Namespace")
	_ = GetNamespacePublisherCmd.MarkFlagRequired("namespace")
}
