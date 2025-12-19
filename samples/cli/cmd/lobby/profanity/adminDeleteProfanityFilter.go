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

// AdminDeleteProfanityFilterCmd represents the AdminDeleteProfanityFilter command
var AdminDeleteProfanityFilterCmd = &cobra.Command{
	Use:   "adminDeleteProfanityFilter",
	Short: "Admin delete profanity filter",
	Long:  `Admin delete profanity filter`,
	RunE: func(cmd *cobra.Command, args []string) error {
		profanityService := &lobby.ProfanityService{
			Client:          lobby.NewLobbyClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *lobbyclientmodels.ModelsAdminDeleteProfanityFilterRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		list_, _ := cmd.Flags().GetString("list")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &profanity.AdminDeleteProfanityFilterParams{
			Body:      body,
			List:      list_,
			Namespace: namespace,
		}
		ok, errOK := profanityService.AdminDeleteProfanityFilterShort(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	AdminDeleteProfanityFilterCmd.Flags().String("body", "", "Body")
	_ = AdminDeleteProfanityFilterCmd.MarkFlagRequired("body")
	AdminDeleteProfanityFilterCmd.Flags().String("list", "", "List")
	_ = AdminDeleteProfanityFilterCmd.MarkFlagRequired("list")
	AdminDeleteProfanityFilterCmd.Flags().String("namespace", "", "Namespace")
	_ = AdminDeleteProfanityFilterCmd.MarkFlagRequired("namespace")
}
