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

// AdminTrustlyUpdateUserIdentityCmd represents the AdminTrustlyUpdateUserIdentity command
var AdminTrustlyUpdateUserIdentityCmd = &cobra.Command{
	Use:   "adminTrustlyUpdateUserIdentity",
	Short: "Admin trustly update user identity",
	Long:  `Admin trustly update user identity`,
	RunE: func(cmd *cobra.Command, args []string) error {
		usersService := &iam.UsersService{
			Client:          iam.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *iamclientmodels.ModelUserIdentityUpdateRequestV3
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &users.AdminTrustlyUpdateUserIdentityParams{
			Body:      body,
			Namespace: namespace,
			UserID:    userId,
		}
		errNoContent := usersService.AdminTrustlyUpdateUserIdentityShort(input)
		if errNoContent != nil {
			logrus.Error(errNoContent)

			return errNoContent
		}

		logrus.Infof("Response CLI success.")

		return nil
	},
}

func init() {
	AdminTrustlyUpdateUserIdentityCmd.Flags().String("body", "", "Body")
	_ = AdminTrustlyUpdateUserIdentityCmd.MarkFlagRequired("body")
	AdminTrustlyUpdateUserIdentityCmd.Flags().String("namespace", "", "Namespace")
	_ = AdminTrustlyUpdateUserIdentityCmd.MarkFlagRequired("namespace")
	AdminTrustlyUpdateUserIdentityCmd.Flags().String("userId", "", "User id")
	_ = AdminTrustlyUpdateUserIdentityCmd.MarkFlagRequired("userId")
}
