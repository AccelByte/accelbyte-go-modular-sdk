// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package userProfile

import (
	basic "github.com/AccelByte/accelbyte-go-modular-sdk/basic-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/basic-sdk/pkg/basicclient/user_profile"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// GetMyProfileInfoCmd represents the GetMyProfileInfo command
var GetMyProfileInfoCmd = &cobra.Command{
	Use:   "getMyProfileInfo",
	Short: "Get my profile info",
	Long:  `Get my profile info`,
	RunE: func(cmd *cobra.Command, args []string) error {
		userProfileService := &basic.UserProfileService{
			Client:          basic.NewBasicClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &user_profile.GetMyProfileInfoParams{
			Namespace: namespace,
		}
		ok, errOK := userProfileService.GetMyProfileInfoShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	GetMyProfileInfoCmd.Flags().String("namespace", "", "Namespace")
	_ = GetMyProfileInfoCmd.MarkFlagRequired("namespace")
}
