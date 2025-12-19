// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package account

import (
	"encoding/json"
	"log/slog"

	ams "github.com/AccelByte/accelbyte-go-modular-sdk/ams-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/ams-sdk/pkg/amsclient/account"
	"github.com/AccelByte/accelbyte-go-modular-sdk/ams-sdk/pkg/amsclientmodels"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// AdminAccountLinkCmd represents the AdminAccountLink command
var AdminAccountLinkCmd = &cobra.Command{
	Use:   "adminAccountLink",
	Short: "Admin account link",
	Long:  `Admin account link`,
	RunE: func(cmd *cobra.Command, args []string) error {
		accountService := &ams.AccountService{
			Client:          ams.NewAmsClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *amsclientmodels.APIAccountLinkRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &account.AdminAccountLinkParams{
			Body:      body,
			Namespace: namespace,
		}
		created, errCreated := accountService.AdminAccountLinkShort(input)
		if errCreated != nil {
			slog.Error("operation failed", "error", errCreated)

			return errCreated
		}

		slog.Info("Response CLI success", "response", created)

		return nil
	},
}

func init() {
	AdminAccountLinkCmd.Flags().String("body", "", "Body")
	_ = AdminAccountLinkCmd.MarkFlagRequired("body")
	AdminAccountLinkCmd.Flags().String("namespace", "", "Namespace")
	_ = AdminAccountLinkCmd.MarkFlagRequired("namespace")
}
