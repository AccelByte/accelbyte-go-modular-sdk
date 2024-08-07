// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package usersV4

import (
	"encoding/json"

	iam "github.com/AccelByte/accelbyte-go-modular-sdk/iam-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/iam-sdk/pkg/iamclient/users_v4"
	"github.com/AccelByte/accelbyte-go-modular-sdk/iam-sdk/pkg/iamclientmodels"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// PublicListUserIDByPlatformUserIDsV4Cmd represents the PublicListUserIDByPlatformUserIDsV4 command
var PublicListUserIDByPlatformUserIDsV4Cmd = &cobra.Command{
	Use:   "publicListUserIDByPlatformUserIDsV4",
	Short: "Public list user ID by platform user I ds V4",
	Long:  `Public list user ID by platform user I ds V4`,
	RunE: func(cmd *cobra.Command, args []string) error {
		usersV4Service := &iam.UsersV4Service{
			Client:          iam.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *iamclientmodels.ModelPlatformUserIDRequestV4
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		platformId, _ := cmd.Flags().GetString("platformId")
		rawPUID, _ := cmd.Flags().GetBool("rawPUID")
		input := &users_v4.PublicListUserIDByPlatformUserIDsV4Params{
			Body:       body,
			Namespace:  namespace,
			PlatformID: platformId,
			RawPUID:    &rawPUID,
		}
		ok, errOK := usersV4Service.PublicListUserIDByPlatformUserIDsV4Short(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	PublicListUserIDByPlatformUserIDsV4Cmd.Flags().String("body", "", "Body")
	_ = PublicListUserIDByPlatformUserIDsV4Cmd.MarkFlagRequired("body")
	PublicListUserIDByPlatformUserIDsV4Cmd.Flags().String("namespace", "", "Namespace")
	_ = PublicListUserIDByPlatformUserIDsV4Cmd.MarkFlagRequired("namespace")
	PublicListUserIDByPlatformUserIDsV4Cmd.Flags().String("platformId", "", "Platform id")
	_ = PublicListUserIDByPlatformUserIDsV4Cmd.MarkFlagRequired("platformId")
	PublicListUserIDByPlatformUserIDsV4Cmd.Flags().Bool("rawPUID", false, "Raw PUID")
}
