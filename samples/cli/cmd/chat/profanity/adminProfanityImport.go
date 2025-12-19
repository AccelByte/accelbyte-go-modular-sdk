// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package profanity

import (
	"log/slog"
	"os"

	chat "github.com/AccelByte/accelbyte-go-modular-sdk/chat-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/chat-sdk/pkg/chatclient/profanity"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// AdminProfanityImportCmd represents the AdminProfanityImport command
var AdminProfanityImportCmd = &cobra.Command{
	Use:   "adminProfanityImport",
	Short: "Admin profanity import",
	Long:  `Admin profanity import`,
	RunE: func(cmd *cobra.Command, args []string) error {
		profanityService := &chat.ProfanityService{
			Client:          chat.NewChatClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		outputFile := cmd.Flag("file").Value.String()
		slog.Info("file", "value", outputFile)
		file, err := os.Open(outputFile)
		if err != nil {
			return err
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		action, _ := cmd.Flags().GetString("action")
		showResult, _ := cmd.Flags().GetBool("showResult")
		input := &profanity.AdminProfanityImportParams{
			File:       file,
			Namespace:  namespace,
			Action:     &action,
			ShowResult: &showResult,
		}
		ok, errOK := profanityService.AdminProfanityImportShort(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	AdminProfanityImportCmd.Flags().String("file", "", "File")
	_ = AdminProfanityImportCmd.MarkFlagRequired("file")
	AdminProfanityImportCmd.Flags().String("namespace", "", "Namespace")
	_ = AdminProfanityImportCmd.MarkFlagRequired("namespace")
	AdminProfanityImportCmd.Flags().String("action", "-1", "Action")
	AdminProfanityImportCmd.Flags().Bool("showResult", false, "Show result")
}
