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

// UploadURLGetCmd represents the UploadURLGet command
var UploadURLGetCmd = &cobra.Command{
	Use:   "uploadURLGet",
	Short: "Upload URL get",
	Long:  `Upload URL get`,
	RunE: func(cmd *cobra.Command, args []string) error {
		amsInfoService := &ams.AMSInfoService{
			Client:          ams.NewAmsClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		input := &a_m_s_info.UploadURLGetParams{}
		errOK := amsInfoService.UploadURLGetShort(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success.")

		return nil
	},
}

func init() {
}
