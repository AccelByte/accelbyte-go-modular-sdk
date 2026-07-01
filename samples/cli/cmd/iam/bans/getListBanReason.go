// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package bans

import (
	"log/slog"
"github.com/AccelByte/accelbyte-go-modular-sdk/iam-sdk/pkg/iamclient/bans"
	iam "github.com/AccelByte/accelbyte-go-modular-sdk/iam-sdk/pkg"
	sdkrepository "github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/repository"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// GetListBanReasonCmd represents the GetListBanReason command
var GetListBanReasonCmd = &cobra.Command{
	Use:	"getListBanReason",
	Short:  "Get list ban reason",
	Long:   `Get list ban reason`,
	RunE: func(cmd *cobra.Command, args []string) error {
		bansService := &iam.BansService{
			Client: iam.NewIamHttpClient(&repository.ConfigRepositoryImpl{}),
			Session: sdkrepository.Session{
				TokenRepository: &repository.TokenRepositoryImpl{},
			},
		}
		input := &bans.GetListBanReasonParams{
		}
ok,errOK := bansService.GetListBanReasonShort(input)
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