// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package oAuth20

import (
	"log/slog"
"github.com/AccelByte/accelbyte-go-modular-sdk/iam-sdk/pkg/iamclient/o_auth2_0"
	iam "github.com/AccelByte/accelbyte-go-modular-sdk/iam-sdk/pkg"
	sdkrepository "github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/repository"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// RevokeUserV3Cmd represents the RevokeUserV3 command
var RevokeUserV3Cmd = &cobra.Command{
	Use:	"revokeUserV3",
	Short:  "Revoke user V3",
	Long:   `Revoke user V3`,
	RunE: func(cmd *cobra.Command, args []string) error {
		oAuth20Service := &iam.OAuth20Service{
			Client: iam.NewIamHttpClient(&repository.ConfigRepositoryImpl{}),
			Session: sdkrepository.Session{
				TokenRepository: &repository.TokenRepositoryImpl{},
			},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		includeGameNamespace, _ := cmd.Flags().GetBool("includeGameNamespace")
		input := &o_auth2_0.RevokeUserV3Params{
			Namespace           : namespace,
			UserID              : userId,
			IncludeGameNamespace: &includeGameNamespace,
		}
errNoContent := oAuth20Service.RevokeUserV3Short(input)
		if errNoContent != nil {
			slog.Error("operation failed", "error", errNoContent)

			return errNoContent
		}

        slog.Info("Response CLI success.")

		return nil
	},
}

func init() {
	RevokeUserV3Cmd.Flags().String("namespace", "", "Namespace")
	_ = RevokeUserV3Cmd.MarkFlagRequired("namespace")
	RevokeUserV3Cmd.Flags().String("userId", "", "User id")
	_ = RevokeUserV3Cmd.MarkFlagRequired("userId")
	RevokeUserV3Cmd.Flags().Bool("includeGameNamespace", false, "Include game namespace")
}