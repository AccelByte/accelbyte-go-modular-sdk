// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package clientsConfigV3

import (
	"encoding/json"

	iam "github.com/AccelByte/accelbyte-go-modular-sdk/iam-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/iam-sdk/pkg/iamclient/clients_config_v3"
	"github.com/AccelByte/accelbyte-go-modular-sdk/iam-sdk/pkg/iamclientmodels"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// AdminDeleteConfigPermissionsByGroupCmd represents the AdminDeleteConfigPermissionsByGroup command
var AdminDeleteConfigPermissionsByGroupCmd = &cobra.Command{
	Use:   "adminDeleteConfigPermissionsByGroup",
	Short: "Admin delete config permissions by group",
	Long:  `Admin delete config permissions by group`,
	RunE: func(cmd *cobra.Command, args []string) error {
		clientsConfigV3Service := &iam.ClientsConfigV3Service{
			Client:          iam.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *iamclientmodels.ClientmodelPermissionSetDeleteGroupRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		input := &clients_config_v3.AdminDeleteConfigPermissionsByGroupParams{
			Body: body,
		}
		errNoContent := clientsConfigV3Service.AdminDeleteConfigPermissionsByGroupShort(input)
		if errNoContent != nil {
			logrus.Error(errNoContent)

			return errNoContent
		}

		logrus.Infof("Response CLI success.")

		return nil
	},
}

func init() {
	AdminDeleteConfigPermissionsByGroupCmd.Flags().String("body", "", "Body")
	_ = AdminDeleteConfigPermissionsByGroupCmd.MarkFlagRequired("body")
}
