// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package amsQoS

import (
	"log/slog"

	ams "github.com/AccelByte/accelbyte-go-modular-sdk/ams-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/ams-sdk/pkg/amsclient/a_m_s_qo_s"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// QoSRegionsGetCmd represents the QoSRegionsGet command
var QoSRegionsGetCmd = &cobra.Command{
	Use:   "qoSRegionsGet",
	Short: "Qo S regions get",
	Long:  `Qo S regions get`,
	RunE: func(cmd *cobra.Command, args []string) error {
		amsQoSService := &ams.AMSQoSService{
			Client:          ams.NewAmsClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		status, _ := cmd.Flags().GetString("status")
		input := &a_m_s_qo_s.QoSRegionsGetParams{
			Namespace: namespace,
			Status:    &status,
		}
		ok, errOK := amsQoSService.QoSRegionsGetShort(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	QoSRegionsGetCmd.Flags().String("namespace", "", "Namespace")
	_ = QoSRegionsGetCmd.MarkFlagRequired("namespace")
	QoSRegionsGetCmd.Flags().String("status", "", "Status")
}
