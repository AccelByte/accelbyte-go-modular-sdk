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

// PublicDisableMyBackupCodesV4Cmd represents the PublicDisableMyBackupCodesV4 command
var PublicDisableMyBackupCodesV4Cmd = &cobra.Command{
	Use:   "publicDisableMyBackupCodesV4",
	Short: "Public disable my backup codes V4",
	Long:  `Public disable my backup codes V4`,
	RunE: func(cmd *cobra.Command, args []string) error {
		usersV4Service := &iam.UsersV4Service{
			Client:          iam.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *iamclientmodels.ModelDisableMFARequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &users_v4.PublicDisableMyBackupCodesV4Params{
			Body:      body,
			Namespace: namespace,
		}
		errNoContent := usersV4Service.PublicDisableMyBackupCodesV4Short(input)
		if errNoContent != nil {
			slog.Error("operation failed", "error", errNoContent)

			return errNoContent
		}

		slog.Info("Response CLI success.")

		return nil
	},
}

func init() {
	PublicDisableMyBackupCodesV4Cmd.Flags().String("body", "", "Body")
	_ = PublicDisableMyBackupCodesV4Cmd.MarkFlagRequired("body")
	PublicDisableMyBackupCodesV4Cmd.Flags().String("namespace", "", "Namespace")
	_ = PublicDisableMyBackupCodesV4Cmd.MarkFlagRequired("namespace")
}
