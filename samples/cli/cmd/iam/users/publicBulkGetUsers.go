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
	sdkrepository "github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/repository"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// PublicBulkGetUsersCmd represents the PublicBulkGetUsers command
var PublicBulkGetUsersCmd = &cobra.Command{
	Use:   "publicBulkGetUsers",
	Short: "Public bulk get users",
	Long:  `Public bulk get users`,
	RunE: func(cmd *cobra.Command, args []string) error {
		usersService := &iam.UsersService{
			Client: iam.NewIamHttpClient(&repository.ConfigRepositoryImpl{}),
			Session: sdkrepository.Session{
				TokenRepository: &repository.TokenRepositoryImpl{},
			},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *iamclientmodels.ModelUserIDsRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &users.PublicBulkGetUsersParams{
			Body:      body,
			Namespace: namespace,
		}
		ok, errOK := usersService.PublicBulkGetUsersShort(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	PublicBulkGetUsersCmd.Flags().String("body", "", "Body")
	_ = PublicBulkGetUsersCmd.MarkFlagRequired("body")
	PublicBulkGetUsersCmd.Flags().String("namespace", "", "Namespace")
	_ = PublicBulkGetUsersCmd.MarkFlagRequired("namespace")
}
