// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package users

import (
	"encoding/json"
	"log/slog"
"github.com/AccelByte/accelbyte-go-modular-sdk/iam-sdk/pkg/iamclient/users"
	"github.com/AccelByte/accelbyte-go-modular-sdk/iam-sdk/pkg/iamclientmodels"
	iam "github.com/AccelByte/accelbyte-go-modular-sdk/iam-sdk/pkg"
	sdkrepository "github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/repository"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// UpgradeHeadlessAccountWithVerificationCodeCmd represents the UpgradeHeadlessAccountWithVerificationCode command
var UpgradeHeadlessAccountWithVerificationCodeCmd = &cobra.Command{
	Use:	"upgradeHeadlessAccountWithVerificationCode",
	Short:  "Upgrade headless account with verification code",
	Long:   `Upgrade headless account with verification code`,
	RunE: func(cmd *cobra.Command, args []string) error {
		usersService := &iam.UsersService{
			Client: iam.NewIamHttpClient(&repository.ConfigRepositoryImpl{}),
			Session: sdkrepository.Session{
				TokenRepository: &repository.TokenRepositoryImpl{},
			},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *iamclientmodels.ModelUpgradeHeadlessAccountWithVerificationCodeRequest
errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &users.UpgradeHeadlessAccountWithVerificationCodeParams{
			Body     : body,
			Namespace: namespace,
			UserID   : userId,
		}
ok,errOK := usersService.UpgradeHeadlessAccountWithVerificationCodeShort(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

        slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	UpgradeHeadlessAccountWithVerificationCodeCmd.Flags().String("body", "", "Body")
	_ = UpgradeHeadlessAccountWithVerificationCodeCmd.MarkFlagRequired("body")
	UpgradeHeadlessAccountWithVerificationCodeCmd.Flags().String("namespace", "", "Namespace")
	_ = UpgradeHeadlessAccountWithVerificationCodeCmd.MarkFlagRequired("namespace")
	UpgradeHeadlessAccountWithVerificationCodeCmd.Flags().String("userId", "", "User id")
	_ = UpgradeHeadlessAccountWithVerificationCodeCmd.MarkFlagRequired("userId")
}