// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package config

import (
	"encoding/json"

	match2 "github.com/AccelByte/accelbyte-go-modular-sdk/match2-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/match2-sdk/pkg/match2client/config"
	"github.com/AccelByte/accelbyte-go-modular-sdk/match2-sdk/pkg/match2clientmodels"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// AdminPatchUpdateLogConfigCmd represents the AdminPatchUpdateLogConfig command
var AdminPatchUpdateLogConfigCmd = &cobra.Command{
	Use:   "adminPatchUpdateLogConfig",
	Short: "Admin patch update log config",
	Long:  `Admin patch update log config`,
	RunE: func(cmd *cobra.Command, args []string) error {
		configService := &match2.ConfigService{
			Client:          match2.NewMatch2Client(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *match2clientmodels.LogconfigConfiguration
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		input := &config.AdminPatchUpdateLogConfigParams{
			Body: body,
		}
		ok, errOK := configService.AdminPatchUpdateLogConfigShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	AdminPatchUpdateLogConfigCmd.Flags().String("body", "", "Body")
	_ = AdminPatchUpdateLogConfigCmd.MarkFlagRequired("body")
}
