// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package profanity

import (
	"log/slog"

	lobby "github.com/AccelByte/accelbyte-go-modular-sdk/lobby-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/lobby-sdk/pkg/lobbyclient/profanity"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// AdminGetProfanityListFiltersV1Cmd represents the AdminGetProfanityListFiltersV1 command
var AdminGetProfanityListFiltersV1Cmd = &cobra.Command{
	Use:   "adminGetProfanityListFiltersV1",
	Short: "Admin get profanity list filters V1",
	Long:  `Admin get profanity list filters V1`,
	RunE: func(cmd *cobra.Command, args []string) error {
		profanityService := &lobby.ProfanityService{
			Client:          lobby.NewLobbyClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		list_, _ := cmd.Flags().GetString("list")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &profanity.AdminGetProfanityListFiltersV1Params{
			List:      list_,
			Namespace: namespace,
		}
		ok, errOK := profanityService.AdminGetProfanityListFiltersV1Short(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	AdminGetProfanityListFiltersV1Cmd.Flags().String("list", "", "List")
	_ = AdminGetProfanityListFiltersV1Cmd.MarkFlagRequired("list")
	AdminGetProfanityListFiltersV1Cmd.Flags().String("namespace", "", "Namespace")
	_ = AdminGetProfanityListFiltersV1Cmd.MarkFlagRequired("namespace")
}
