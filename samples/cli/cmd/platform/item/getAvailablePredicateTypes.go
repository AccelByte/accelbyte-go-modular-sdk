// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package item

import (
	platform "github.com/AccelByte/accelbyte-go-modular-sdk/platform-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/platform-sdk/pkg/platformclient/item"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// GetAvailablePredicateTypesCmd represents the GetAvailablePredicateTypes command
var GetAvailablePredicateTypesCmd = &cobra.Command{
	Use:   "getAvailablePredicateTypes",
	Short: "Get available predicate types",
	Long:  `Get available predicate types`,
	RunE: func(cmd *cobra.Command, args []string) error {
		itemService := &platform.ItemService{
			Client:          platform.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &item.GetAvailablePredicateTypesParams{
			Namespace: namespace,
		}
		ok, errOK := itemService.GetAvailablePredicateTypesShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	GetAvailablePredicateTypesCmd.Flags().String("namespace", "", "Namespace")
	_ = GetAvailablePredicateTypesCmd.MarkFlagRequired("namespace")
}
