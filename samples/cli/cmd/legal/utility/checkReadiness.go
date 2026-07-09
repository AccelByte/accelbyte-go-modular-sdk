// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package utility

import (
	"log/slog"

	legal "github.com/AccelByte/accelbyte-go-modular-sdk/legal-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/legal-sdk/pkg/legalclient/utility"
	sdkrepository "github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/repository"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// CheckReadinessCmd represents the CheckReadiness command
var CheckReadinessCmd = &cobra.Command{
	Use:   "checkReadiness",
	Short: "Check readiness",
	Long:  `Check readiness`,
	RunE: func(cmd *cobra.Command, args []string) error {
		utilityService := &legal.UtilityService{
			Client: legal.NewLegalHttpClient(&repository.ConfigRepositoryImpl{}),
			Session: sdkrepository.Session{
				TokenRepository: &repository.TokenRepositoryImpl{},
			},
		}
		input := &utility.CheckReadinessParams{}
		ok, errOK := utilityService.CheckReadinessShort(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
}
