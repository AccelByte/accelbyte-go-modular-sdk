// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package usersV4

import (
	"encoding/json"

	iam "github.com/AccelByte/accelbyte-go-modular-sdk/iam-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/iam-sdk/pkg/iamclient/users_v4"
	"github.com/AccelByte/accelbyte-go-modular-sdk/iam-sdk/pkg/iamclientmodels"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// AdminDisableMyBackupCodesV4Cmd represents the AdminDisableMyBackupCodesV4 command
var AdminDisableMyBackupCodesV4Cmd = &cobra.Command{
	Use:   "adminDisableMyBackupCodesV4",
	Short: "Admin disable my backup codes V4",
	Long:  `Admin disable my backup codes V4`,
	RunE: func(cmd *cobra.Command, args []string) error {
		usersV4Service := &iam.UsersV4Service{
			Client:          iam.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *iamclientmodels.ModelDisableMFARequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		input := &users_v4.AdminDisableMyBackupCodesV4Params{
			Body: body,
		}
		errNoContent := usersV4Service.AdminDisableMyBackupCodesV4Short(input)
		if errNoContent != nil {
			logrus.Error(errNoContent)

			return errNoContent
		}

		logrus.Infof("Response CLI success.")

		return nil
	},
}

func init() {
	AdminDisableMyBackupCodesV4Cmd.Flags().String("body", "", "Body")
	_ = AdminDisableMyBackupCodesV4Cmd.MarkFlagRequired("body")
}
