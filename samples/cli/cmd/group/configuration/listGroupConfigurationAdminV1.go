// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package configuration

import (
	"log/slog"

	group "github.com/AccelByte/accelbyte-go-modular-sdk/group-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/group-sdk/pkg/groupclient/configuration"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// ListGroupConfigurationAdminV1Cmd represents the ListGroupConfigurationAdminV1 command
var ListGroupConfigurationAdminV1Cmd = &cobra.Command{
	Use:   "listGroupConfigurationAdminV1",
	Short: "List group configuration admin V1",
	Long:  `List group configuration admin V1`,
	RunE: func(cmd *cobra.Command, args []string) error {
		configurationService := &group.ConfigurationService{
			Client:          group.NewGroupClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		limit, _ := cmd.Flags().GetInt64("limit")
		offset, _ := cmd.Flags().GetInt64("offset")
		input := &configuration.ListGroupConfigurationAdminV1Params{
			Namespace: namespace,
			Limit:     &limit,
			Offset:    &offset,
		}
		ok, errOK := configurationService.ListGroupConfigurationAdminV1Short(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	ListGroupConfigurationAdminV1Cmd.Flags().String("namespace", "", "Namespace")
	_ = ListGroupConfigurationAdminV1Cmd.MarkFlagRequired("namespace")
	ListGroupConfigurationAdminV1Cmd.Flags().Int64("limit", 20, "Limit")
	ListGroupConfigurationAdminV1Cmd.Flags().Int64("offset", 0, "Offset")
}
