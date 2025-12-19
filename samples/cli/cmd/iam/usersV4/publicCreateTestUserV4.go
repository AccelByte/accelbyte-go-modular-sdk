// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package usersV4

import (
	"encoding/json"
	"log/slog"

	iam "github.com/AccelByte/accelbyte-go-modular-sdk/iam-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/iam-sdk/pkg/iamclient/users_v4"
	"github.com/AccelByte/accelbyte-go-modular-sdk/iam-sdk/pkg/iamclientmodels"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// PublicCreateTestUserV4Cmd represents the PublicCreateTestUserV4 command
var PublicCreateTestUserV4Cmd = &cobra.Command{
	Use:   "publicCreateTestUserV4",
	Short: "Public create test user V4",
	Long:  `Public create test user V4`,
	RunE: func(cmd *cobra.Command, args []string) error {
		usersV4Service := &iam.UsersV4Service{
			Client:          iam.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *iamclientmodels.AccountCreateTestUserRequestV4
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &users_v4.PublicCreateTestUserV4Params{
			Body:      body,
			Namespace: namespace,
		}
		created, errCreated := usersV4Service.PublicCreateTestUserV4Short(input)
		if errCreated != nil {
			slog.Error("operation failed", "error", errCreated)

			return errCreated
		}

		slog.Info("Response CLI success", "response", created)

		return nil
	},
}

func init() {
	PublicCreateTestUserV4Cmd.Flags().String("body", "", "Body")
	_ = PublicCreateTestUserV4Cmd.MarkFlagRequired("body")
	PublicCreateTestUserV4Cmd.Flags().String("namespace", "", "Namespace")
	_ = PublicCreateTestUserV4Cmd.MarkFlagRequired("namespace")
}
