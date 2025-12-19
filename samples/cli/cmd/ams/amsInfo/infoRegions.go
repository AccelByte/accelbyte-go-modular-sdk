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

// InfoRegionsCmd represents the InfoRegions command
var InfoRegionsCmd = &cobra.Command{
	Use:   "infoRegions",
	Short: "Info regions",
	Long:  `Info regions`,
	RunE: func(cmd *cobra.Command, args []string) error {
		amsInfoService := &ams.AMSInfoService{
			Client:          ams.NewAmsClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &a_m_s_info.InfoRegionsParams{
			Namespace: namespace,
		}
		ok, errOK := amsInfoService.InfoRegionsShort(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	InfoRegionsCmd.Flags().String("namespace", "", "Namespace")
	_ = InfoRegionsCmd.MarkFlagRequired("namespace")
}
