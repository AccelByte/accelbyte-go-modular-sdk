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

// SendVerificationCodeCmd represents the SendVerificationCode command
var SendVerificationCodeCmd = &cobra.Command{
	Use:   "sendVerificationCode",
	Short: "Send verification code",
	Long:  `Send verification code`,
	RunE: func(cmd *cobra.Command, args []string) error {
		usersService := &iam.UsersService{
			Client:          iam.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *iamclientmodels.ModelSendVerificationCodeRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &users.SendVerificationCodeParams{
			Body:      body,
			Namespace: namespace,
			UserID:    userId,
		}
		errNoContent := usersService.SendVerificationCodeShort(input)
		if errNoContent != nil {
			logrus.Error(errNoContent)

			return errNoContent
		}

		logrus.Infof("Response CLI success.")

		return nil
	},
}

func init() {
	SendVerificationCodeCmd.Flags().String("body", "", "Body")
	_ = SendVerificationCodeCmd.MarkFlagRequired("body")
	SendVerificationCodeCmd.Flags().String("namespace", "", "Namespace")
	_ = SendVerificationCodeCmd.MarkFlagRequired("namespace")
	SendVerificationCodeCmd.Flags().String("userId", "", "User id")
	_ = SendVerificationCodeCmd.MarkFlagRequired("userId")
}
