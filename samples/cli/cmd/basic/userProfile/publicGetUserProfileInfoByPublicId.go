// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package userProfile

import (
	"log/slog"

	basic "github.com/AccelByte/accelbyte-go-modular-sdk/basic-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/basic-sdk/pkg/basicclient/user_profile"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// PublicGetUserProfileInfoByPublicIdCmd represents the PublicGetUserProfileInfoByPublicId command
var PublicGetUserProfileInfoByPublicIdCmd = &cobra.Command{
	Use:   "publicGetUserProfileInfoByPublicId",
	Short: "Public get user profile info by public id",
	Long:  `Public get user profile info by public id`,
	RunE: func(cmd *cobra.Command, args []string) error {
		userProfileService := &basic.UserProfileService{
			Client:          basic.NewBasicClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		publicId, _ := cmd.Flags().GetString("publicId")
		input := &user_profile.PublicGetUserProfileInfoByPublicIDParams{
			Namespace: namespace,
			PublicID:  publicId,
		}
		ok, errOK := userProfileService.PublicGetUserProfileInfoByPublicIDShort(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	PublicGetUserProfileInfoByPublicIdCmd.Flags().String("namespace", "", "Namespace")
	_ = PublicGetUserProfileInfoByPublicIdCmd.MarkFlagRequired("namespace")
	PublicGetUserProfileInfoByPublicIdCmd.Flags().String("publicId", "", "Public id")
	_ = PublicGetUserProfileInfoByPublicIdCmd.MarkFlagRequired("publicId")
}
