// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package publicCreator

import (
	"log/slog"

	ugc "github.com/AccelByte/accelbyte-go-modular-sdk/ugc-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/ugc-sdk/pkg/ugcclient/public_creator"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// PublicSearchCreatorCmd represents the PublicSearchCreator command
var PublicSearchCreatorCmd = &cobra.Command{
	Use:   "publicSearchCreator",
	Short: "Public search creator",
	Long:  `Public search creator`,
	RunE: func(cmd *cobra.Command, args []string) error {
		publicCreatorService := &ugc.PublicCreatorService{
			Client:          ugc.NewUgcClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		limit, _ := cmd.Flags().GetInt64("limit")
		offset, _ := cmd.Flags().GetInt64("offset")
		orderby, _ := cmd.Flags().GetString("orderby")
		sortby, _ := cmd.Flags().GetString("sortby")
		input := &public_creator.PublicSearchCreatorParams{
			Namespace: namespace,
			Limit:     &limit,
			Offset:    &offset,
			Orderby:   &orderby,
			Sortby:    &sortby,
		}
		ok, errOK := publicCreatorService.PublicSearchCreatorShort(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	PublicSearchCreatorCmd.Flags().String("namespace", "", "Namespace")
	_ = PublicSearchCreatorCmd.MarkFlagRequired("namespace")
	PublicSearchCreatorCmd.Flags().Int64("limit", 20, "Limit")
	PublicSearchCreatorCmd.Flags().Int64("offset", 0, "Offset")
	PublicSearchCreatorCmd.Flags().String("orderby", "", "Orderby")
	PublicSearchCreatorCmd.Flags().String("sortby", "", "Sortby")
}
