// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package config

import (
	"encoding/json"

	chat "github.com/AccelByte/accelbyte-go-modular-sdk/chat-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/chat-sdk/pkg/chatclient/config"
	"github.com/AccelByte/accelbyte-go-modular-sdk/chat-sdk/pkg/chatclientmodels"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// AdminUpdateConfigV1Cmd represents the AdminUpdateConfigV1 command
var AdminUpdateConfigV1Cmd = &cobra.Command{
	Use:   "adminUpdateConfigV1",
	Short: "Admin update config V1",
	Long:  `Admin update config V1`,
	RunE: func(cmd *cobra.Command, args []string) error {
		configService := &chat.ConfigService{
			Client:          chat.NewChatClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *chatclientmodels.ModelsConfigResponse
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &config.AdminUpdateConfigV1Params{
			Body:      body,
			Namespace: namespace,
		}
		ok, errOK := configService.AdminUpdateConfigV1Short(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	AdminUpdateConfigV1Cmd.Flags().String("body", "", "Body")
	_ = AdminUpdateConfigV1Cmd.MarkFlagRequired("body")
	AdminUpdateConfigV1Cmd.Flags().String("namespace", "", "Namespace")
	_ = AdminUpdateConfigV1Cmd.MarkFlagRequired("namespace")
}
