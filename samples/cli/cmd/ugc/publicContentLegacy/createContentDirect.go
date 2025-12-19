// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package publicContentLegacy

import (
	"encoding/json"
	"log/slog"

	ugc "github.com/AccelByte/accelbyte-go-modular-sdk/ugc-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/ugc-sdk/pkg/ugcclient/public_content_legacy"
	"github.com/AccelByte/accelbyte-go-modular-sdk/ugc-sdk/pkg/ugcclientmodels"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// CreateContentDirectCmd represents the CreateContentDirect command
var CreateContentDirectCmd = &cobra.Command{
	Use:   "createContentDirect",
	Short: "Create content direct",
	Long:  `Create content direct`,
	RunE: func(cmd *cobra.Command, args []string) error {
		publicContentLegacyService := &ugc.PublicContentLegacyService{
			Client:          ugc.NewUgcClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *ugcclientmodels.ModelsCreateContentRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		channelId, _ := cmd.Flags().GetString("channelId")
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &public_content_legacy.CreateContentDirectParams{
			Body:      body,
			ChannelID: channelId,
			Namespace: namespace,
			UserID:    userId,
		}
		created, errCreated := publicContentLegacyService.CreateContentDirectShort(input)
		if errCreated != nil {
			slog.Error("operation failed", "error", errCreated)

			return errCreated
		}

		slog.Info("Response CLI success", "response", created)

		return nil
	},
}

func init() {
	CreateContentDirectCmd.Flags().String("body", "", "Body")
	_ = CreateContentDirectCmd.MarkFlagRequired("body")
	CreateContentDirectCmd.Flags().String("channelId", "", "Channel id")
	_ = CreateContentDirectCmd.MarkFlagRequired("channelId")
	CreateContentDirectCmd.Flags().String("namespace", "", "Namespace")
	_ = CreateContentDirectCmd.MarkFlagRequired("namespace")
	CreateContentDirectCmd.Flags().String("userId", "", "User id")
	_ = CreateContentDirectCmd.MarkFlagRequired("userId")
}
