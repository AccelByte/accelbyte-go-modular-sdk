// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package users

import (
	iam "github.com/AccelByte/accelbyte-go-modular-sdk/iam-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/iam-sdk/pkg/iamclient/users"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// PublicGetAsyncStatusCmd represents the PublicGetAsyncStatus command
var PublicGetAsyncStatusCmd = &cobra.Command{
	Use:   "publicGetAsyncStatus",
	Short: "Public get async status",
	Long:  `Public get async status`,
	RunE: func(cmd *cobra.Command, args []string) error {
		usersService := &iam.UsersService{
			Client:          iam.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		requestId, _ := cmd.Flags().GetString("requestId")
		input := &users.PublicGetAsyncStatusParams{
			Namespace: namespace,
			RequestID: requestId,
		}
		ok, errOK := usersService.PublicGetAsyncStatusShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	PublicGetAsyncStatusCmd.Flags().String("namespace", "", "Namespace")
	_ = PublicGetAsyncStatusCmd.MarkFlagRequired("namespace")
	PublicGetAsyncStatusCmd.Flags().String("requestId", "", "Request id")
	_ = PublicGetAsyncStatusCmd.MarkFlagRequired("requestId")
}
