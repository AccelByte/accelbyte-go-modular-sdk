// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package publicTag

import (
	"log/slog"

	ugc "github.com/AccelByte/accelbyte-go-modular-sdk/ugc-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/ugc-sdk/pkg/ugcclient/public_tag"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// GetTagCmd represents the GetTag command
var GetTagCmd = &cobra.Command{
	Use:   "getTag",
	Short: "Get tag",
	Long:  `Get tag`,
	RunE: func(cmd *cobra.Command, args []string) error {
		publicTagService := &ugc.PublicTagService{
			Client:          ugc.NewUgcClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		limit, _ := cmd.Flags().GetInt64("limit")
		offset, _ := cmd.Flags().GetInt64("offset")
		input := &public_tag.GetTagParams{
			Namespace: namespace,
			Limit:     &limit,
			Offset:    &offset,
		}
		ok, errOK := publicTagService.GetTagShort(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	GetTagCmd.Flags().String("namespace", "", "Namespace")
	_ = GetTagCmd.MarkFlagRequired("namespace")
	GetTagCmd.Flags().Int64("limit", 20, "Limit")
	GetTagCmd.Flags().Int64("offset", 0, "Offset")
}
