// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package usersV4

import (
	"encoding/json"

	iam "github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/users_v4"
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclientmodels"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// AdminBulkCheckValidUserIDV4Cmd represents the AdminBulkCheckValidUserIDV4 command
var AdminBulkCheckValidUserIDV4Cmd = &cobra.Command{
	Use:   "adminBulkCheckValidUserIDV4",
	Short: "Admin bulk check valid user IDV4",
	Long:  `Admin bulk check valid user IDV4`,
	RunE: func(cmd *cobra.Command, args []string) error {
		usersV4Service := &iam.UsersV4Service{
			Client:          iam.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *iamclientmodels.ModelCheckValidUserIDRequestV4
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &users_v4.AdminBulkCheckValidUserIDV4Params{
			Body:      body,
			Namespace: namespace,
		}
		ok, errOK := usersV4Service.AdminBulkCheckValidUserIDV4Short(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	AdminBulkCheckValidUserIDV4Cmd.Flags().String("body", "", "Body")
	_ = AdminBulkCheckValidUserIDV4Cmd.MarkFlagRequired("body")
	AdminBulkCheckValidUserIDV4Cmd.Flags().String("namespace", "", "Namespace")
	_ = AdminBulkCheckValidUserIDV4Cmd.MarkFlagRequired("namespace")
}
