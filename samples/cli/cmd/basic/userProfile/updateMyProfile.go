// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package userProfile

import (
	"encoding/json"
	"log/slog"
"github.com/AccelByte/accelbyte-go-modular-sdk/basic-sdk/pkg/basicclient/user_profile"
	"github.com/AccelByte/accelbyte-go-modular-sdk/basic-sdk/pkg/basicclientmodels"
	basic "github.com/AccelByte/accelbyte-go-modular-sdk/basic-sdk/pkg"
	sdkrepository "github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/repository"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// UpdateMyProfileCmd represents the UpdateMyProfile command
var UpdateMyProfileCmd = &cobra.Command{
	Use:	"updateMyProfile",
	Short:  "Update my profile",
	Long:   `Update my profile`,
	RunE: func(cmd *cobra.Command, args []string) error {
		userProfileService := &basic.UserProfileService{
			Client: basic.NewBasicHttpClient(&repository.ConfigRepositoryImpl{}),
			Session: sdkrepository.Session{
				TokenRepository: &repository.TokenRepositoryImpl{},
			},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		bodyString := cmd.Flag("body").Value.String()
		var body *basicclientmodels.UserProfileUpdate
errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		input := &user_profile.UpdateMyProfileParams{
			Body     : body,
			Namespace: namespace,
		}
ok,errOK := userProfileService.UpdateMyProfileShort(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

        slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	UpdateMyProfileCmd.Flags().String("body", "", "Body")
	UpdateMyProfileCmd.Flags().String("namespace", "", "Namespace")
	_ = UpdateMyProfileCmd.MarkFlagRequired("namespace")
}