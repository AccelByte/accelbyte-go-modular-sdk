// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package userProfile

import (
	"log/slog"
"github.com/AccelByte/accelbyte-go-modular-sdk/basic-sdk/pkg/basicclient/user_profile"
	basic "github.com/AccelByte/accelbyte-go-modular-sdk/basic-sdk/pkg"
	sdkrepository "github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/repository"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// GetMyPrivateCustomAttributesInfoCmd represents the GetMyPrivateCustomAttributesInfo command
var GetMyPrivateCustomAttributesInfoCmd = &cobra.Command{
	Use:	"getMyPrivateCustomAttributesInfo",
	Short:  "Get my private custom attributes info",
	Long:   `Get my private custom attributes info`,
	RunE: func(cmd *cobra.Command, args []string) error {
		userProfileService := &basic.UserProfileService{
			Client: basic.NewBasicHttpClient(&repository.ConfigRepositoryImpl{}),
			Session: sdkrepository.Session{
				TokenRepository: &repository.TokenRepositoryImpl{},
			},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &user_profile.GetMyPrivateCustomAttributesInfoParams{
			Namespace: namespace,
		}
ok,errOK := userProfileService.GetMyPrivateCustomAttributesInfoShort(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

        slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	GetMyPrivateCustomAttributesInfoCmd.Flags().String("namespace", "", "Namespace")
	_ = GetMyPrivateCustomAttributesInfoCmd.MarkFlagRequired("namespace")
}