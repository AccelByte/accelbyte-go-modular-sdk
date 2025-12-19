// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package users

import (
	"log/slog"

	iam "github.com/AccelByte/accelbyte-go-modular-sdk/iam-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/iam-sdk/pkg/iamclient/users"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// PublicCreateJusticeUserCmd represents the PublicCreateJusticeUser command
var PublicCreateJusticeUserCmd = &cobra.Command{
	Use:   "publicCreateJusticeUser",
	Short: "Public create justice user",
	Long:  `Public create justice user`,
	RunE: func(cmd *cobra.Command, args []string) error {
		usersService := &iam.UsersService{
			Client:          iam.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		targetNamespace, _ := cmd.Flags().GetString("targetNamespace")
		input := &users.PublicCreateJusticeUserParams{
			Namespace:       namespace,
			TargetNamespace: targetNamespace,
		}
		created, errCreated := usersService.PublicCreateJusticeUserShort(input)
		if errCreated != nil {
			slog.Error("operation failed", "error", errCreated)

			return errCreated
		}

		slog.Info("Response CLI success", "response", created)

		return nil
	},
}

func init() {
	PublicCreateJusticeUserCmd.Flags().String("namespace", "", "Namespace")
	_ = PublicCreateJusticeUserCmd.MarkFlagRequired("namespace")
	PublicCreateJusticeUserCmd.Flags().String("targetNamespace", "", "Target namespace")
	_ = PublicCreateJusticeUserCmd.MarkFlagRequired("targetNamespace")
}
