// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package appUI

import (
	"log/slog"

	csm "github.com/AccelByte/accelbyte-go-modular-sdk/csm-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/csm-sdk/pkg/csmclient/app_ui"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// ListAppUICmd represents the ListAppUI command
var ListAppUICmd = &cobra.Command{
	Use:   "listAppUI",
	Short: "List app UI",
	Long:  `List app UI`,
	RunE: func(cmd *cobra.Command, args []string) error {
		appUIService := &csm.AppUIService{
			Client:          csm.NewCsmClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		limit, _ := cmd.Flags().GetInt64("limit")
		name, _ := cmd.Flags().GetString("name")
		offset, _ := cmd.Flags().GetInt64("offset")
		input := &app_ui.ListAppUIParams{
			Namespace: namespace,
			Limit:     &limit,
			Name:      &name,
			Offset:    &offset,
		}
		ok, errOK := appUIService.ListAppUIShort(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	ListAppUICmd.Flags().String("namespace", "", "Namespace")
	_ = ListAppUICmd.MarkFlagRequired("namespace")
	ListAppUICmd.Flags().Int64("limit", 20, "Limit")
	ListAppUICmd.Flags().String("name", "", "Name")
	ListAppUICmd.Flags().Int64("offset", 0, "Offset")
}
