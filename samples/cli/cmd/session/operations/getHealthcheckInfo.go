// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package operations

import (
	session "github.com/AccelByte/accelbyte-go-sdk/session-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-sdk/session-sdk/pkg/sessionclient/operations"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// GetHealthcheckInfoCmd represents the GetHealthcheckInfo command
var GetHealthcheckInfoCmd = &cobra.Command{
	Use:   "getHealthcheckInfo",
	Short: "Get healthcheck info",
	Long:  `Get healthcheck info`,
	RunE: func(cmd *cobra.Command, args []string) error {
		operationsService := &session.OperationsService{
			Client:          session.NewSessionClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		input := &operations.GetHealthcheckInfoParams{}
		errOK := operationsService.GetHealthcheckInfoShort(input)
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
