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

// PublicGetNamespacePublisherCmd represents the PublicGetNamespacePublisher command
var PublicGetNamespacePublisherCmd = &cobra.Command{
	Use:   "publicGetNamespacePublisher",
	Short: "Public get namespace publisher",
	Long:  `Public get namespace publisher`,
	RunE: func(cmd *cobra.Command, args []string) error {
		namespaceService := &basic.NamespaceService{
			Client:          basic.NewBasicClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &namespace_.PublicGetNamespacePublisherParams{
			Namespace: namespace,
		}
		ok, errOK := namespaceService.PublicGetNamespacePublisherShort(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	PublicGetNamespacePublisherCmd.Flags().String("namespace", "", "Namespace")
	_ = PublicGetNamespacePublisherCmd.MarkFlagRequired("namespace")
}
