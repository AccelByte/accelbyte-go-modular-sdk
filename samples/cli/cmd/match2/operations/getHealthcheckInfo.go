// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package operations

import (
	"log/slog"

	match2 "github.com/AccelByte/accelbyte-go-modular-sdk/match2-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/match2-sdk/pkg/match2client/operations"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// GetHealthcheckInfoCmd represents the GetHealthcheckInfo command
var GetHealthcheckInfoCmd = &cobra.Command{
	Use:   "getHealthcheckInfo",
	Short: "Get healthcheck info",
	Long:  `Get healthcheck info`,
	RunE: func(cmd *cobra.Command, args []string) error {
		operationsService := &match2.OperationsService{
			Client:          match2.NewMatch2Client(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		input := &operations.GetHealthcheckInfoParams{}
		errOK := operationsService.GetHealthcheckInfoShort(input)
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
