// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package adminContent

import (
	"encoding/json"
	"log/slog"

	ugc "github.com/AccelByte/accelbyte-go-modular-sdk/ugc-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/ugc-sdk/pkg/ugcclient/admin_content"
	"github.com/AccelByte/accelbyte-go-modular-sdk/ugc-sdk/pkg/ugcclientmodels"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// AdminUpdateContentDirectCmd represents the AdminUpdateContentDirect command
var AdminUpdateContentDirectCmd = &cobra.Command{
	Use:   "adminUpdateContentDirect",
	Short: "Admin update content direct",
	Long:  `Admin update content direct`,
	RunE: func(cmd *cobra.Command, args []string) error {
		adminContentService := &ugc.AdminContentService{
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
		contentId, _ := cmd.Flags().GetString("contentId")
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &admin_content.AdminUpdateContentDirectParams{
			Body:      body,
			ChannelID: channelId,
			ContentID: contentId,
			Namespace: namespace,
			UserID:    userId,
		}
		ok, errOK := adminContentService.AdminUpdateContentDirectShort(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	AdminUpdateContentDirectCmd.Flags().String("body", "", "Body")
	_ = AdminUpdateContentDirectCmd.MarkFlagRequired("body")
	AdminUpdateContentDirectCmd.Flags().String("channelId", "", "Channel id")
	_ = AdminUpdateContentDirectCmd.MarkFlagRequired("channelId")
	AdminUpdateContentDirectCmd.Flags().String("contentId", "", "Content id")
	_ = AdminUpdateContentDirectCmd.MarkFlagRequired("contentId")
	AdminUpdateContentDirectCmd.Flags().String("namespace", "", "Namespace")
	_ = AdminUpdateContentDirectCmd.MarkFlagRequired("namespace")
	AdminUpdateContentDirectCmd.Flags().String("userId", "", "User id")
	_ = AdminUpdateContentDirectCmd.MarkFlagRequired("userId")
}
