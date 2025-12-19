// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package section

import (
	"encoding/json"
	"log/slog"

	platform "github.com/AccelByte/accelbyte-go-modular-sdk/platform-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/platform-sdk/pkg/platformclient/section"
	"github.com/AccelByte/accelbyte-go-modular-sdk/platform-sdk/pkg/platformclientmodels"
	"github.com/AccelByte/sample-apps/pkg/repository"
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
		bodyString := cmd.Flag("body").Value.String()
		var body *platformclientmodels.SectionCreate
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		storeId, _ := cmd.Flags().GetString("storeId")
		input := &section.CreateSectionParams{
			Body:      body,
			Namespace: namespace,
			StoreID:   storeId,
		}
		created, errCreated := sectionService.CreateSectionShort(input)
		if errCreated != nil {
			slog.Error("operation failed", "error", errCreated)

			return errCreated
		}

		slog.Info("Response CLI success", "response", created)

		return nil
	},
}

func init() {
	CreateSectionCmd.Flags().String("body", "", "Body")
	_ = CreateSectionCmd.MarkFlagRequired("body")
	CreateSectionCmd.Flags().String("namespace", "", "Namespace")
	_ = CreateSectionCmd.MarkFlagRequired("namespace")
	CreateSectionCmd.Flags().String("storeId", "", "Store id")
	_ = CreateSectionCmd.MarkFlagRequired("storeId")
}
