// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package amsInfo

import (
	"log/slog"

	ams "github.com/AccelByte/accelbyte-go-modular-sdk/ams-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/ams-sdk/pkg/amsclient/a_m_s_info"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// InfoSupportedInstancesCmd represents the InfoSupportedInstances command
var InfoSupportedInstancesCmd = &cobra.Command{
	Use:   "infoSupportedInstances",
	Short: "Info supported instances",
	Long:  `Info supported instances`,
	RunE: func(cmd *cobra.Command, args []string) error {
		amsInfoService := &ams.AMSInfoService{
			Client:          ams.NewAmsClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &a_m_s_info.InfoSupportedInstancesParams{
			Namespace: namespace,
		}
		ok, errOK := amsInfoService.InfoSupportedInstancesShort(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	InfoSupportedInstancesCmd.Flags().String("namespace", "", "Namespace")
	_ = InfoSupportedInstancesCmd.MarkFlagRequired("namespace")
}
