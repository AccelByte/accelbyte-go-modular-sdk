// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package profanity

import (
	"encoding/json"

	chat "github.com/AccelByte/accelbyte-go-modular-sdk/chat-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/chat-sdk/pkg/chatclient/profanity"
	"github.com/AccelByte/accelbyte-go-modular-sdk/chat-sdk/pkg/chatclientmodels"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// AdminProfanityCreateBulkCmd represents the AdminProfanityCreateBulk command
var AdminProfanityCreateBulkCmd = &cobra.Command{
	Use:   "adminProfanityCreateBulk",
	Short: "Admin profanity create bulk",
	Long:  `Admin profanity create bulk`,
	RunE: func(cmd *cobra.Command, args []string) error {
		profanityService := &chat.ProfanityService{
			Client:          chat.NewChatClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *chatclientmodels.ModelsDictionaryInsertBulkRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &profanity.AdminProfanityCreateBulkParams{
			Body:      body,
			Namespace: namespace,
		}
		errNoContent := profanityService.AdminProfanityCreateBulkShort(input)
		if errNoContent != nil {
			logrus.Error(errNoContent)

			return errNoContent
		}

		logrus.Infof("Response CLI success.")

		return nil
	},
}

func init() {
	AdminProfanityCreateBulkCmd.Flags().String("body", "", "Body")
	_ = AdminProfanityCreateBulkCmd.MarkFlagRequired("body")
	AdminProfanityCreateBulkCmd.Flags().String("namespace", "", "Namespace")
	_ = AdminProfanityCreateBulkCmd.MarkFlagRequired("namespace")
}
