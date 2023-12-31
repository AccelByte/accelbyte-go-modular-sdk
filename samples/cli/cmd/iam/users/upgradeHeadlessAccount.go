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

// UpgradeHeadlessAccountCmd represents the UpgradeHeadlessAccount command
var UpgradeHeadlessAccountCmd = &cobra.Command{
	Use:   "upgradeHeadlessAccount",
	Short: "Upgrade headless account",
	Long:  `Upgrade headless account`,
	RunE: func(cmd *cobra.Command, args []string) error {
		usersService := &iam.UsersService{
			Client:          iam.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *iamclientmodels.ModelUpgradeHeadlessAccountRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &users.UpgradeHeadlessAccountParams{
			Body:      body,
			Namespace: namespace,
			UserID:    userId,
		}
		ok, errOK := usersService.UpgradeHeadlessAccountShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	UpgradeHeadlessAccountCmd.Flags().String("body", "", "Body")
	_ = UpgradeHeadlessAccountCmd.MarkFlagRequired("body")
	UpgradeHeadlessAccountCmd.Flags().String("namespace", "", "Namespace")
	_ = UpgradeHeadlessAccountCmd.MarkFlagRequired("namespace")
	UpgradeHeadlessAccountCmd.Flags().String("userId", "", "User id")
	_ = UpgradeHeadlessAccountCmd.MarkFlagRequired("userId")
}
