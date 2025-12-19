// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package adminContent

import (
	"log/slog"

	ugc "github.com/AccelByte/accelbyte-go-modular-sdk/ugc-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/ugc-sdk/pkg/ugcclient/admin_content"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// RollbackContentVersionCmd represents the RollbackContentVersion command
var RollbackContentVersionCmd = &cobra.Command{
	Use:   "rollbackContentVersion",
	Short: "Rollback content version",
	Long:  `Rollback content version`,
	RunE: func(cmd *cobra.Command, args []string) error {
		adminContentService := &ugc.AdminContentService{
			Client:          ugc.NewUgcClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		contentId, _ := cmd.Flags().GetString("contentId")
		namespace, _ := cmd.Flags().GetString("namespace")
		versionId, _ := cmd.Flags().GetString("versionId")
		input := &admin_content.RollbackContentVersionParams{
			ContentID: contentId,
			Namespace: namespace,
			VersionID: versionId,
		}
		ok, errOK := adminContentService.RollbackContentVersionShort(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	RollbackContentVersionCmd.Flags().String("contentId", "", "Content id")
	_ = RollbackContentVersionCmd.MarkFlagRequired("contentId")
	RollbackContentVersionCmd.Flags().String("namespace", "", "Namespace")
	_ = RollbackContentVersionCmd.MarkFlagRequired("namespace")
	RollbackContentVersionCmd.Flags().String("versionId", "", "Version id")
	_ = RollbackContentVersionCmd.MarkFlagRequired("versionId")
}
