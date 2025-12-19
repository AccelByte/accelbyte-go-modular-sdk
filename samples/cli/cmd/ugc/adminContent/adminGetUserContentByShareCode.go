// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package adminContent

import (
	"log/slog"

	ugc "github.com/AccelByte/accelbyte-go-modular-sdk/ugc-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/ugc-sdk/pkg/ugcclient/admin_content"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// AdminGetUserContentByShareCodeCmd represents the AdminGetUserContentByShareCode command
var AdminGetUserContentByShareCodeCmd = &cobra.Command{
	Use:   "adminGetUserContentByShareCode",
	Short: "Admin get user content by share code",
	Long:  `Admin get user content by share code`,
	RunE: func(cmd *cobra.Command, args []string) error {
		adminContentService := &ugc.AdminContentService{
			Client:          ugc.NewUgcClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		shareCode, _ := cmd.Flags().GetString("shareCode")
		input := &admin_content.AdminGetUserContentByShareCodeParams{
			Namespace: namespace,
			ShareCode: shareCode,
		}
		ok, errOK := adminContentService.AdminGetUserContentByShareCodeShort(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	AdminGetUserContentByShareCodeCmd.Flags().String("namespace", "", "Namespace")
	_ = AdminGetUserContentByShareCodeCmd.MarkFlagRequired("namespace")
	AdminGetUserContentByShareCodeCmd.Flags().String("shareCode", "", "Share code")
	_ = AdminGetUserContentByShareCodeCmd.MarkFlagRequired("shareCode")
}
