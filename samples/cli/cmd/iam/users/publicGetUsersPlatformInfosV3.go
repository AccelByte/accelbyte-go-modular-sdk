// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package users

import (
	"encoding/json"

	iam "github.com/AccelByte/accelbyte-go-modular-sdk/iam-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/iam-sdk/pkg/iamclient/users"
	"github.com/AccelByte/accelbyte-go-modular-sdk/iam-sdk/pkg/iamclientmodels"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// PublicGetUsersPlatformInfosV3Cmd represents the PublicGetUsersPlatformInfosV3 command
var PublicGetUsersPlatformInfosV3Cmd = &cobra.Command{
	Use:   "publicGetUsersPlatformInfosV3",
	Short: "Public get users platform infos V3",
	Long:  `Public get users platform infos V3`,
	RunE: func(cmd *cobra.Command, args []string) error {
		usersService := &iam.UsersService{
			Client:          iam.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *iamclientmodels.ModelUsersPlatformInfosRequestV3
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &users.PublicGetUsersPlatformInfosV3Params{
			Body:      body,
			Namespace: namespace,
		}
		ok, errOK := usersService.PublicGetUsersPlatformInfosV3Short(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	PublicGetUsersPlatformInfosV3Cmd.Flags().String("body", "", "Body")
	_ = PublicGetUsersPlatformInfosV3Cmd.MarkFlagRequired("body")
	PublicGetUsersPlatformInfosV3Cmd.Flags().String("namespace", "", "Namespace")
	_ = PublicGetUsersPlatformInfosV3Cmd.MarkFlagRequired("namespace")
}
