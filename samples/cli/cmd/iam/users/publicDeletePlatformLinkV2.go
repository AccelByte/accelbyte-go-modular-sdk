// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package users

import (
	iam "github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/users"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// PublicDeletePlatformLinkV2Cmd represents the PublicDeletePlatformLinkV2 command
var PublicDeletePlatformLinkV2Cmd = &cobra.Command{
	Use:   "publicDeletePlatformLinkV2",
	Short: "Public delete platform link V2",
	Long:  `Public delete platform link V2`,
	RunE: func(cmd *cobra.Command, args []string) error {
		usersService := &iam.UsersService{
			Client:          iam.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		platformId, _ := cmd.Flags().GetString("platformId")
		userId, _ := cmd.Flags().GetString("userId")
		platformNamespace, _ := cmd.Flags().GetString("platformNamespace")
		input := &users.PublicDeletePlatformLinkV2Params{
			PlatformNamespace: &platformNamespace,
			Namespace:         namespace,
			PlatformID:        platformId,
			UserID:            userId,
		}
		errNoContent := usersService.PublicDeletePlatformLinkV2Short(input)
		if errNoContent != nil {
			logrus.Error(errNoContent)

			return errNoContent
		}

		logrus.Infof("Response CLI success.")

		return nil
	},
}

func init() {
	PublicDeletePlatformLinkV2Cmd.Flags().String("platformNamespace", "", "Platform namespace")
	PublicDeletePlatformLinkV2Cmd.Flags().String("namespace", "", "Namespace")
	_ = PublicDeletePlatformLinkV2Cmd.MarkFlagRequired("namespace")
	PublicDeletePlatformLinkV2Cmd.Flags().String("platformId", "", "Platform id")
	_ = PublicDeletePlatformLinkV2Cmd.MarkFlagRequired("platformId")
	PublicDeletePlatformLinkV2Cmd.Flags().String("userId", "", "User id")
	_ = PublicDeletePlatformLinkV2Cmd.MarkFlagRequired("userId")
}
