// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package misc

import (
	"log/slog"
"github.com/AccelByte/accelbyte-go-modular-sdk/basic-sdk/pkg/basicclient/misc"
	basic "github.com/AccelByte/accelbyte-go-modular-sdk/basic-sdk/pkg"
	sdkrepository "github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/repository"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// GetTimeZonesCmd represents the GetTimeZones command
var GetTimeZonesCmd = &cobra.Command{
	Use:	"getTimeZones",
	Short:  "Get time zones",
	Long:   `Get time zones`,
	RunE: func(cmd *cobra.Command, args []string) error {
		miscService := &basic.MiscService{
			Client: basic.NewBasicHttpClient(&repository.ConfigRepositoryImpl{}),
			Session: sdkrepository.Session{
				TokenRepository: &repository.TokenRepositoryImpl{},
			},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &misc.GetTimeZonesParams{
			Namespace: namespace,
		}
ok,errOK := miscService.GetTimeZonesShort(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

        slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	GetTimeZonesCmd.Flags().String("namespace", "", "Namespace")
	_ = GetTimeZonesCmd.MarkFlagRequired("namespace")
}