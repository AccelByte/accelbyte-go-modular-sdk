// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package platformAccountClosureClient

import (
	"encoding/json"
	"log/slog"

	gdpr "github.com/AccelByte/accelbyte-go-modular-sdk/gdpr-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/gdpr-sdk/pkg/gdprclient/platform_account_closure_client"
	"github.com/AccelByte/accelbyte-go-modular-sdk/gdpr-sdk/pkg/gdprclientmodels"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// AdminMockPlatformAccountClosureDataCmd represents the AdminMockPlatformAccountClosureData command
var AdminMockPlatformAccountClosureDataCmd = &cobra.Command{
	Use:   "adminMockPlatformAccountClosureData",
	Short: "Admin mock platform account closure data",
	Long:  `Admin mock platform account closure data`,
	RunE: func(cmd *cobra.Command, args []string) error {
		platformAccountClosureClientService := &gdpr.PlatformAccountClosureClientService{
			Client:          gdpr.NewGdprClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *gdprclientmodels.DTOPlatformAccountClosureMockRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		platform, _ := cmd.Flags().GetString("platform")
		input := &platform_account_closure_client.AdminMockPlatformAccountClosureDataParams{
			Body:      body,
			Namespace: namespace,
			Platform:  platform,
		}
		errNoContent := platformAccountClosureClientService.AdminMockPlatformAccountClosureDataShort(input)
		if errNoContent != nil {
			slog.Error("operation failed", "error", errNoContent)

			return errNoContent
		}

		slog.Info("Response CLI success.")

		return nil
	},
}

func init() {
	AdminMockPlatformAccountClosureDataCmd.Flags().String("body", "", "Body")
	_ = AdminMockPlatformAccountClosureDataCmd.MarkFlagRequired("body")
	AdminMockPlatformAccountClosureDataCmd.Flags().String("namespace", "", "Namespace")
	_ = AdminMockPlatformAccountClosureDataCmd.MarkFlagRequired("namespace")
	AdminMockPlatformAccountClosureDataCmd.Flags().String("platform", "", "Platform")
	_ = AdminMockPlatformAccountClosureDataCmd.MarkFlagRequired("platform")
}
