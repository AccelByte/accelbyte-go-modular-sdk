// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package environmentVariables

import (
	match2 "github.com/AccelByte/accelbyte-go-modular-sdk/match2-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/match2-sdk/pkg/match2client/environment_variables"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// EnvironmentVariableListCmd represents the EnvironmentVariableList command
var EnvironmentVariableListCmd = &cobra.Command{
	Use:   "environmentVariableList",
	Short: "Environment variable list",
	Long:  `Environment variable list`,
	RunE: func(cmd *cobra.Command, args []string) error {
		environmentVariablesService := &match2.EnvironmentVariablesService{
			Client:          match2.NewMatch2Client(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		input := &environment_variables.EnvironmentVariableListParams{}
		ok, errOK := environmentVariablesService.EnvironmentVariableListShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
}
