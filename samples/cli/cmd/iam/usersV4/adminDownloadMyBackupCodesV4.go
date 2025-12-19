// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package usersV4

import (
	"bytes"
	"log/slog"
	"os"

	iam "github.com/AccelByte/accelbyte-go-modular-sdk/iam-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/iam-sdk/pkg/iamclient/users_v4"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// AdminDownloadMyBackupCodesV4Cmd represents the AdminDownloadMyBackupCodesV4 command
var AdminDownloadMyBackupCodesV4Cmd = &cobra.Command{
	Use:   "adminDownloadMyBackupCodesV4",
	Short: "Admin download my backup codes V4",
	Long:  `Admin download my backup codes V4`,
	RunE: func(cmd *cobra.Command, args []string) error {
		usersV4Service := &iam.UsersV4Service{
			Client:          iam.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		file, errFile := os.Create("file")
		slog.Info("Output", "value", file)
		if errFile != nil {
			return errFile
		}
		writer := bytes.NewBuffer(nil)
		input := &users_v4.AdminDownloadMyBackupCodesV4Params{}
		ok, errOK := usersV4Service.AdminDownloadMyBackupCodesV4Short(input, writer)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
}
