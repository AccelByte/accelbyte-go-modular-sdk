// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package item

import (
	"encoding/json"

	platform "github.com/AccelByte/accelbyte-go-modular-sdk/platform-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/platform-sdk/pkg/platformclient/item"
	"github.com/AccelByte/accelbyte-go-modular-sdk/platform-sdk/pkg/platformclientmodels"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// UpdateAppCmd represents the UpdateApp command
var UpdateAppCmd = &cobra.Command{
	Use:   "updateApp",
	Short: "Update app",
	Long:  `Update app`,
	RunE: func(cmd *cobra.Command, args []string) error {
		itemService := &platform.ItemService{
			Client:          platform.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		itemId, _ := cmd.Flags().GetString("itemId")
		namespace, _ := cmd.Flags().GetString("namespace")
		storeId, _ := cmd.Flags().GetString("storeId")
		bodyString := cmd.Flag("body").Value.String()
		var body *platformclientmodels.AppUpdate
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		input := &item.UpdateAppParams{
			Body:      body,
			ItemID:    itemId,
			Namespace: namespace,
			StoreID:   storeId,
		}
		ok, errOK := itemService.UpdateAppShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	UpdateAppCmd.Flags().String("body", "", "Body")
	UpdateAppCmd.Flags().String("itemId", "", "Item id")
	_ = UpdateAppCmd.MarkFlagRequired("itemId")
	UpdateAppCmd.Flags().String("namespace", "", "Namespace")
	_ = UpdateAppCmd.MarkFlagRequired("namespace")
	UpdateAppCmd.Flags().String("storeId", "", "Store id")
	_ = UpdateAppCmd.MarkFlagRequired("storeId")
}
