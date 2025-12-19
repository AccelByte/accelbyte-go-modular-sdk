// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package users

import (
	"encoding/json"
	"log/slog"

	iam "github.com/AccelByte/accelbyte-go-modular-sdk/iam-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/iam-sdk/pkg/iamclient/users"
	"github.com/AccelByte/accelbyte-go-modular-sdk/iam-sdk/pkg/iamclientmodels"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// LinkHeadlessAccountToMyAccountV3Cmd represents the LinkHeadlessAccountToMyAccountV3 command
var LinkHeadlessAccountToMyAccountV3Cmd = &cobra.Command{
	Use:   "linkHeadlessAccountToMyAccountV3",
	Short: "Link headless account to my account V3",
	Long:  `Link headless account to my account V3`,
	RunE: func(cmd *cobra.Command, args []string) error {
		usersService := &iam.UsersService{
			Client:          iam.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *iamclientmodels.ModelLinkHeadlessAccountRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		input := &users.LinkHeadlessAccountToMyAccountV3Params{
			Body: body,
		}
		errNoContent := usersService.LinkHeadlessAccountToMyAccountV3Short(input)
		if errNoContent != nil {
			slog.Error("operation failed", "error", errNoContent)

			return errNoContent
		}

		slog.Info("Response CLI success.")

		return nil
	},
}

func init() {
	LinkHeadlessAccountToMyAccountV3Cmd.Flags().String("body", "", "Body")
	_ = LinkHeadlessAccountToMyAccountV3Cmd.MarkFlagRequired("body")
}
