// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package utilities

import (
	challenge "github.com/AccelByte/accelbyte-go-modular-sdk/challenge-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/challenge-sdk/pkg/challengeclient/utilities"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// AdminGetItemReferencesCmd represents the AdminGetItemReferences command
var AdminGetItemReferencesCmd = &cobra.Command{
	Use:   "adminGetItemReferences",
	Short: "Admin get item references",
	Long:  `Admin get item references`,
	RunE: func(cmd *cobra.Command, args []string) error {
		utilitiesService := &challenge.UtilitiesService{
			Client:          challenge.NewChallengeClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		itemId, _ := cmd.Flags().GetString("itemId")
		input := &utilities.AdminGetItemReferencesParams{
			Namespace: namespace,
			ItemID:    itemId,
		}
		ok, errOK := utilitiesService.AdminGetItemReferencesShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	AdminGetItemReferencesCmd.Flags().String("namespace", "", "Namespace")
	_ = AdminGetItemReferencesCmd.MarkFlagRequired("namespace")
	AdminGetItemReferencesCmd.Flags().String("itemId", "", "Item id")
	_ = AdminGetItemReferencesCmd.MarkFlagRequired("itemId")
}
