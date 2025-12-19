// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package users

import (
	"log/slog"
	"net/http"

	iam "github.com/AccelByte/accelbyte-go-modular-sdk/iam-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/iam-sdk/pkg/iamclient/users"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// PublicVerifyUserByLinkV3Cmd represents the PublicVerifyUserByLinkV3 command
var PublicVerifyUserByLinkV3Cmd = &cobra.Command{
	Use:   "publicVerifyUserByLinkV3",
	Short: "Public verify user by link V3",
	Long:  `Public verify user by link V3`,
	RunE: func(cmd *cobra.Command, args []string) error {
		usersService := &iam.UsersService{
			Client:          iam.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		code, _ := cmd.Flags().GetString("code")
		httpClient := &http.Client{
			CheckRedirect: func(req *http.Request, via []*http.Request) error {
				return http.ErrUseLastResponse
			},
		}
		input := &users.PublicVerifyUserByLinkV3Params{
			Code:       &code,
			HTTPClient: httpClient,
		}
		_, errFound := usersService.PublicVerifyUserByLinkV3Short(input)
		if errFound != nil {
			slog.Error("operation failed", "error", errFound)

			return errFound
		}

		slog.Info("Response CLI success.")

		return nil
	},
}

func init() {
	PublicVerifyUserByLinkV3Cmd.Flags().String("code", "", "Code")
}
