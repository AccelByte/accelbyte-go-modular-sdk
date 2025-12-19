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

// AdminAddProfanityFilterIntoListCmd represents the AdminAddProfanityFilterIntoList command
var AdminAddProfanityFilterIntoListCmd = &cobra.Command{
	Use:   "adminAddProfanityFilterIntoList",
	Short: "Admin add profanity filter into list",
	Long:  `Admin add profanity filter into list`,
	RunE: func(cmd *cobra.Command, args []string) error {
		profanityService := &lobby.ProfanityService{
			Client:          lobby.NewLobbyClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *lobbyclientmodels.ModelsAdminAddProfanityFilterIntoListRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		list_, _ := cmd.Flags().GetString("list")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &profanity.AdminAddProfanityFilterIntoListParams{
			Body:      body,
			List:      list_,
			Namespace: namespace,
		}
		errOK := profanityService.AdminAddProfanityFilterIntoListShort(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success.")

		return nil
	},
}

func init() {
	AdminAddProfanityFilterIntoListCmd.Flags().String("body", "", "Body")
	_ = AdminAddProfanityFilterIntoListCmd.MarkFlagRequired("body")
	AdminAddProfanityFilterIntoListCmd.Flags().String("list", "", "List")
	_ = AdminAddProfanityFilterIntoListCmd.MarkFlagRequired("list")
	AdminAddProfanityFilterIntoListCmd.Flags().String("namespace", "", "Namespace")
	_ = AdminAddProfanityFilterIntoListCmd.MarkFlagRequired("namespace")
}
