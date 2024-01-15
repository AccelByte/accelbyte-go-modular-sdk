// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package account

import (
	ams "github.com/AccelByte/accelbyte-go-modular-sdk/ams-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/ams-sdk/pkg/amsclient/account"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// AdminAccountLinkTokenGetCmd represents the AdminAccountLinkTokenGet command
var AdminAccountLinkTokenGetCmd = &cobra.Command{
	Use:   "adminAccountLinkTokenGet",
	Short: "Admin account link token get",
	Long:  `Admin account link token get`,
	RunE: func(cmd *cobra.Command, args []string) error {
		accountService := &ams.AccountService{
			Client:          ams.NewAmsClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &account.AdminAccountLinkTokenGetParams{
			Namespace: namespace,
		}
		ok, errOK := accountService.AdminAccountLinkTokenGetShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	AdminAccountLinkTokenGetCmd.Flags().String("namespace", "", "Namespace")
	_ = AdminAccountLinkTokenGetCmd.MarkFlagRequired("namespace")
}
