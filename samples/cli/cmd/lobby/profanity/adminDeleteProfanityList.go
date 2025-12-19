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

// AdminDeleteProfanityListCmd represents the AdminDeleteProfanityList command
var AdminDeleteProfanityListCmd = &cobra.Command{
	Use:   "adminDeleteProfanityList",
	Short: "Admin delete profanity list",
	Long:  `Admin delete profanity list`,
	RunE: func(cmd *cobra.Command, args []string) error {
		profanityService := &lobby.ProfanityService{
			Client:          lobby.NewLobbyClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		list_, _ := cmd.Flags().GetString("list")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &profanity.AdminDeleteProfanityListParams{
			List:      list_,
			Namespace: namespace,
		}
		errOK := profanityService.AdminDeleteProfanityListShort(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success.")

		return nil
	},
}

func init() {
	AdminDeleteProfanityListCmd.Flags().String("list", "", "List")
	_ = AdminDeleteProfanityListCmd.MarkFlagRequired("list")
	AdminDeleteProfanityListCmd.Flags().String("namespace", "", "Namespace")
	_ = AdminDeleteProfanityListCmd.MarkFlagRequired("namespace")
}
