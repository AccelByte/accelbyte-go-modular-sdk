// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package adminExtensionCategoriesAndAutoModerationActions

import (
	"encoding/json"

	reporting "github.com/AccelByte/accelbyte-go-sdk/reporting-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-sdk/reporting-sdk/pkg/reportingclient/admin_extension_categories_and_auto_moderation_actions"
	"github.com/AccelByte/accelbyte-go-sdk/reporting-sdk/pkg/reportingclientmodels"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// AdminCreateModActionCmd represents the AdminCreateModAction command
var AdminCreateModActionCmd = &cobra.Command{
	Use:   "adminCreateModAction",
	Short: "Admin create mod action",
	Long:  `Admin create mod action`,
	RunE: func(cmd *cobra.Command, args []string) error {
		adminExtensionCategoriesAndAutoModerationActionsService := &reporting.AdminExtensionCategoriesandAutoModerationActionsService{
			Client:          reporting.NewReportingClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *reportingclientmodels.RestapiActionAPIRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		input := &admin_extension_categories_and_auto_moderation_actions.AdminCreateModActionParams{
			Body: body,
		}
		created, errCreated := adminExtensionCategoriesAndAutoModerationActionsService.AdminCreateModActionShort(input)
		if errCreated != nil {
			logrus.Error(errCreated)

			return errCreated
		}

		logrus.Infof("Response CLI success: %+v", created)

		return nil
	},
}

func init() {
	AdminCreateModActionCmd.Flags().String("body", "", "Body")
	_ = AdminCreateModActionCmd.MarkFlagRequired("body")
}
