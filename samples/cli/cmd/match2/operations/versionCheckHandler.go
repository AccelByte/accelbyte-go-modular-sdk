// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package operations

import (
	match2 "github.com/AccelByte/accelbyte-go-sdk/match2-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-sdk/match2-sdk/pkg/match2client/operations"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// VersionCheckHandlerCmd represents the VersionCheckHandler command
var VersionCheckHandlerCmd = &cobra.Command{
	Use:   "versionCheckHandler",
	Short: "Version check handler",
	Long:  `Version check handler`,
	RunE: func(cmd *cobra.Command, args []string) error {
		operationsService := &match2.OperationsService{
			Client:          match2.NewMatch2Client(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		input := &operations.VersionCheckHandlerParams{}
		errOK := operationsService.VersionCheckHandlerShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success.")

		return nil
	},
}

func init() {
}
