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

// AdminDisableUserMFAV4Cmd represents the AdminDisableUserMFAV4 command
var AdminDisableUserMFAV4Cmd = &cobra.Command{
	Use:   "adminDisableUserMFAV4",
	Short: "Admin disable user MFAV4",
	Long:  `Admin disable user MFAV4`,
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
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &users_v4.AdminDisableUserMFAV4Params{
			Body:      body,
			Namespace: namespace,
			UserID:    userId,
		}
		errNoContent := usersV4Service.AdminDisableUserMFAV4Short(input)
		if errNoContent != nil {
			logrus.Error(errNoContent)

			return errNoContent
		}

		logrus.Infof("Response CLI success.")

		return nil
	},
}

func init() {
	AdminDisableUserMFAV4Cmd.Flags().String("body", "", "Body")
	_ = AdminDisableUserMFAV4Cmd.MarkFlagRequired("body")
	AdminDisableUserMFAV4Cmd.Flags().String("namespace", "", "Namespace")
	_ = AdminDisableUserMFAV4Cmd.MarkFlagRequired("namespace")
	AdminDisableUserMFAV4Cmd.Flags().String("userId", "", "User id")
	_ = AdminDisableUserMFAV4Cmd.MarkFlagRequired("userId")
}
