// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package section

import (
	"encoding/json"

	platform "github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/section"
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclientmodels"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// CreateSectionCmd represents the CreateSection command
var CreateSectionCmd = &cobra.Command{
	Use:   "createSection",
	Short: "Create section",
	Long:  `Create section`,
	RunE: func(cmd *cobra.Command, args []string) error {
		sectionService := &platform.SectionService{
			Client:          platform.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		storeId, _ := cmd.Flags().GetString("storeId")
		bodyString := cmd.Flag("body").Value.String()
		var body *platformclientmodels.SectionCreate
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		input := &section.CreateSectionParams{
			Body:      body,
			Namespace: namespace,
			StoreID:   storeId,
		}
		created, errCreated := sectionService.CreateSectionShort(input)
		if errCreated != nil {
			logrus.Error(errCreated)

			return errCreated
		}

		logrus.Infof("Response CLI success: %+v", created)

		return nil
	},
}

func init() {
	CreateSectionCmd.Flags().String("body", "", "Body")
	CreateSectionCmd.Flags().String("namespace", "", "Namespace")
	_ = CreateSectionCmd.MarkFlagRequired("namespace")
	CreateSectionCmd.Flags().String("storeId", "", "Store id")
	_ = CreateSectionCmd.MarkFlagRequired("storeId")
}
