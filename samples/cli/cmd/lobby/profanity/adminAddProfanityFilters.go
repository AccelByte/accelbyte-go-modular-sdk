// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package profanity

import (
	"encoding/json"
	"log/slog"

	lobby "github.com/AccelByte/accelbyte-go-modular-sdk/lobby-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/lobby-sdk/pkg/lobbyclient/profanity"
	"github.com/AccelByte/accelbyte-go-modular-sdk/lobby-sdk/pkg/lobbyclientmodels"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// AdminAddProfanityFiltersCmd represents the AdminAddProfanityFilters command
var AdminAddProfanityFiltersCmd = &cobra.Command{
	Use:   "adminAddProfanityFilters",
	Short: "Admin add profanity filters",
	Long:  `Admin add profanity filters`,
	RunE: func(cmd *cobra.Command, args []string) error {
		profanityService := &lobby.ProfanityService{
			Client:          lobby.NewLobbyClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *lobbyclientmodels.ModelsAdminAddProfanityFiltersRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		list_, _ := cmd.Flags().GetString("list")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &profanity.AdminAddProfanityFiltersParams{
			Body:      body,
			List:      list_,
			Namespace: namespace,
		}
		errOK := profanityService.AdminAddProfanityFiltersShort(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success.")

		return nil
	},
}

func init() {
	AdminAddProfanityFiltersCmd.Flags().String("body", "", "Body")
	_ = AdminAddProfanityFiltersCmd.MarkFlagRequired("body")
	AdminAddProfanityFiltersCmd.Flags().String("list", "", "List")
	_ = AdminAddProfanityFiltersCmd.MarkFlagRequired("list")
	AdminAddProfanityFiltersCmd.Flags().String("namespace", "", "Namespace")
	_ = AdminAddProfanityFiltersCmd.MarkFlagRequired("namespace")
}
