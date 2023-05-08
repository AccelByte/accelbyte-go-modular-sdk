// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package adminTag

import (
	ugc "github.com/AccelByte/accelbyte-go-modular-sdk/ugc-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/ugc-sdk/pkg/ugcclient/admin_tag"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// AdminDeleteTagCmd represents the AdminDeleteTag command
var AdminDeleteTagCmd = &cobra.Command{
	Use:   "adminDeleteTag",
	Short: "Admin delete tag",
	Long:  `Admin delete tag`,
	RunE: func(cmd *cobra.Command, args []string) error {
		adminTagService := &ugc.AdminTagService{
			Client:          ugc.NewUgcClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		tagId, _ := cmd.Flags().GetString("tagId")
		input := &admin_tag.AdminDeleteTagParams{
			Namespace: namespace,
			TagID:     tagId,
		}
		errNoContent := adminTagService.AdminDeleteTagShort(input)
		if errNoContent != nil {
			logrus.Error(errNoContent)

			return errNoContent
		}

		logrus.Infof("Response CLI success.")

		return nil
	},
}

func init() {
	AdminDeleteTagCmd.Flags().String("namespace", "", "Namespace")
	_ = AdminDeleteTagCmd.MarkFlagRequired("namespace")
	AdminDeleteTagCmd.Flags().String("tagId", "", "Tag id")
	_ = AdminDeleteTagCmd.MarkFlagRequired("tagId")
}
