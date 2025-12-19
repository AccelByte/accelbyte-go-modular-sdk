// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package userProfile

import (
	"encoding/json"
	"log/slog"

	basic "github.com/AccelByte/accelbyte-go-modular-sdk/basic-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/basic-sdk/pkg/basicclient/user_profile"
	"github.com/AccelByte/accelbyte-go-modular-sdk/basic-sdk/pkg/basicclientmodels"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// UpdateMyZipCodeCmd represents the UpdateMyZipCode command
var UpdateMyZipCodeCmd = &cobra.Command{
	Use:   "updateMyZipCode",
	Short: "Update my zip code",
	Long:  `Update my zip code`,
	RunE: func(cmd *cobra.Command, args []string) error {
		userProfileService := &basic.UserProfileService{
			Client:          basic.NewBasicClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		userZipCodeUpdateString := cmd.Flag("userZipCodeUpdate").Value.String()
		var userZipCodeUpdate *basicclientmodels.UserZipCodeUpdate
		errUserZipCodeUpdate := json.Unmarshal([]byte(userZipCodeUpdateString), &userZipCodeUpdate)
		if errUserZipCodeUpdate != nil {
			return errUserZipCodeUpdate
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &user_profile.UpdateMyZipCodeParams{
			UserZipCodeUpdate: userZipCodeUpdate,
			Namespace:         namespace,
		}
		ok, errOK := userProfileService.UpdateMyZipCodeShort(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	UpdateMyZipCodeCmd.Flags().String("userZipCodeUpdate", "", "User zip code update")
	_ = UpdateMyZipCodeCmd.MarkFlagRequired("userZipCodeUpdate")
	UpdateMyZipCodeCmd.Flags().String("namespace", "", "Namespace")
	_ = UpdateMyZipCodeCmd.MarkFlagRequired("namespace")
}
