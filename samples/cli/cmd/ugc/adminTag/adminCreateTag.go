// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package adminTag

import (
	"encoding/json"

	ugc "github.com/AccelByte/accelbyte-go-modular-sdk/ugc-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/ugc-sdk/pkg/ugcclient/admin_tag"
	"github.com/AccelByte/accelbyte-go-modular-sdk/ugc-sdk/pkg/ugcclientmodels"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// AdminCreateTagCmd represents the AdminCreateTag command
var AdminCreateTagCmd = &cobra.Command{
	Use:   "adminCreateTag",
	Short: "Admin create tag",
	Long:  `Admin create tag`,
	RunE: func(cmd *cobra.Command, args []string) error {
		adminTagService := &ugc.AdminTagService{
			Client:          ugc.NewUgcClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *ugcclientmodels.ModelsCreateTagRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &admin_tag.AdminCreateTagParams{
			Body:      body,
			Namespace: namespace,
		}
		created, errCreated := adminTagService.AdminCreateTagShort(input)
		if errCreated != nil {
			logrus.Error(errCreated)

			return errCreated
		}

		logrus.Infof("Response CLI success: %+v", created)

		return nil
	},
}

func init() {
	AdminCreateTagCmd.Flags().String("body", "", "Body")
	_ = AdminCreateTagCmd.MarkFlagRequired("body")
	AdminCreateTagCmd.Flags().String("namespace", "", "Namespace")
	_ = AdminCreateTagCmd.MarkFlagRequired("namespace")
}
