// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package adminTag

import (
	"encoding/json"
	"log/slog"

	ugc "github.com/AccelByte/accelbyte-go-modular-sdk/ugc-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/ugc-sdk/pkg/ugcclient/admin_tag"
	"github.com/AccelByte/accelbyte-go-modular-sdk/ugc-sdk/pkg/ugcclientmodels"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// AdminUpdateTagCmd represents the AdminUpdateTag command
var AdminUpdateTagCmd = &cobra.Command{
	Use:   "adminUpdateTag",
	Short: "Admin update tag",
	Long:  `Admin update tag`,
	RunE: func(cmd *cobra.Command, args []string) error {
		adminTagService := &ugc.AdminTagService{
			Client:          ugc.NewUgcClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *ugcclientmodels.ModelsCreateTagRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		tagId, _ := cmd.Flags().GetString("tagId")
		input := &admin_tag.AdminUpdateTagParams{
			Body:      body,
			Namespace: namespace,
			TagID:     tagId,
		}
		ok, errOK := adminTagService.AdminUpdateTagShort(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	AdminUpdateTagCmd.Flags().String("body", "", "Body")
	_ = AdminUpdateTagCmd.MarkFlagRequired("body")
	AdminUpdateTagCmd.Flags().String("namespace", "", "Namespace")
	_ = AdminUpdateTagCmd.MarkFlagRequired("namespace")
	AdminUpdateTagCmd.Flags().String("tagId", "", "Tag id")
	_ = AdminUpdateTagCmd.MarkFlagRequired("tagId")
}
