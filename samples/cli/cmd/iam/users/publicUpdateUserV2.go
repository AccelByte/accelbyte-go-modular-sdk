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

// PublicUpdateUserV2Cmd represents the PublicUpdateUserV2 command
var PublicUpdateUserV2Cmd = &cobra.Command{
	Use:   "publicUpdateUserV2",
	Short: "Public update user V2",
	Long:  `Public update user V2`,
	RunE: func(cmd *cobra.Command, args []string) error {
		usersService := &iam.UsersService{
			Client:          iam.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *iamclientmodels.ModelUserUpdateRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &users.PublicUpdateUserV2Params{
			Body:      body,
			Namespace: namespace,
			UserID:    userId,
		}
		ok, errOK := usersService.PublicUpdateUserV2Short(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	PublicUpdateUserV2Cmd.Flags().String("body", "", "Body")
	_ = PublicUpdateUserV2Cmd.MarkFlagRequired("body")
	PublicUpdateUserV2Cmd.Flags().String("namespace", "", "Namespace")
	_ = PublicUpdateUserV2Cmd.MarkFlagRequired("namespace")
	PublicUpdateUserV2Cmd.Flags().String("userId", "", "User id")
	_ = PublicUpdateUserV2Cmd.MarkFlagRequired("userId")
}
