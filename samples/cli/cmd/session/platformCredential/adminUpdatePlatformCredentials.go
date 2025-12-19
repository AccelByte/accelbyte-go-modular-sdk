// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package platformCredential

import (
	"encoding/json"
	"log/slog"

	session "github.com/AccelByte/accelbyte-go-modular-sdk/session-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/session-sdk/pkg/sessionclient/platform_credential"
	"github.com/AccelByte/accelbyte-go-modular-sdk/session-sdk/pkg/sessionclientmodels"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// AdminUpdatePlatformCredentialsCmd represents the AdminUpdatePlatformCredentials command
var AdminUpdatePlatformCredentialsCmd = &cobra.Command{
	Use:   "adminUpdatePlatformCredentials",
	Short: "Admin update platform credentials",
	Long:  `Admin update platform credentials`,
	RunE: func(cmd *cobra.Command, args []string) error {
		platformCredentialService := &session.PlatformCredentialService{
			Client:          session.NewSessionClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *sessionclientmodels.ApimodelsPutPlatformCredentialsRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &platform_credential.AdminUpdatePlatformCredentialsParams{
			Body:      body,
			Namespace: namespace,
		}
		ok, errOK := platformCredentialService.AdminUpdatePlatformCredentialsShort(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	AdminUpdatePlatformCredentialsCmd.Flags().String("body", "", "Body")
	_ = AdminUpdatePlatformCredentialsCmd.MarkFlagRequired("body")
	AdminUpdatePlatformCredentialsCmd.Flags().String("namespace", "", "Namespace")
	_ = AdminUpdatePlatformCredentialsCmd.MarkFlagRequired("namespace")
}
