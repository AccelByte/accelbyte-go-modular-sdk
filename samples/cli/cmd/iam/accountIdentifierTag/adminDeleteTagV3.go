// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package accountIdentifierTag

import (
	iam "github.com/AccelByte/accelbyte-go-modular-sdk/iam-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/iam-sdk/pkg/iamclient/account_identifier_tag"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// AdminDeleteTagV3Cmd represents the AdminDeleteTagV3 command
var AdminDeleteTagV3Cmd = &cobra.Command{
	Use:   "adminDeleteTagV3",
	Short: "Admin delete tag V3",
	Long:  `Admin delete tag V3`,
	RunE: func(cmd *cobra.Command, args []string) error {
		accountIdentifierTagService := &iam.AccountIdentifierTagService{
			Client:          iam.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		tagId, _ := cmd.Flags().GetString("tagId")
		input := &account_identifier_tag.AdminDeleteTagV3Params{
			Namespace: namespace,
			TagID:     tagId,
		}
		errNoContent := accountIdentifierTagService.AdminDeleteTagV3Short(input)
		if errNoContent != nil {
			logrus.Error(errNoContent)

			return errNoContent
		}

		logrus.Infof("Response CLI success.")

		return nil
	},
}

func init() {
	AdminDeleteTagV3Cmd.Flags().String("namespace", "", "Namespace")
	_ = AdminDeleteTagV3Cmd.MarkFlagRequired("namespace")
	AdminDeleteTagV3Cmd.Flags().String("tagId", "", "Tag id")
	_ = AdminDeleteTagV3Cmd.MarkFlagRequired("tagId")
}
