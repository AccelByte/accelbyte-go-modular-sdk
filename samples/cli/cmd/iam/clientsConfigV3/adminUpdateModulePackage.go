// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package clientsConfigV3

import (
	"encoding/json"
	"log/slog"

	iam "github.com/AccelByte/accelbyte-go-modular-sdk/iam-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/iam-sdk/pkg/iamclient/clients_config_v3"
	"github.com/AccelByte/accelbyte-go-modular-sdk/iam-sdk/pkg/iamclientmodels"
	sdkrepository "github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/repository"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// AdminUpdateModulePackageCmd represents the AdminUpdateModulePackage command
var AdminUpdateModulePackageCmd = &cobra.Command{
	Use:   "adminUpdateModulePackage",
	Short: "Admin update module package",
	Long:  `Admin update module package`,
	RunE: func(cmd *cobra.Command, args []string) error {
		clientsConfigV3Service := &iam.ClientsConfigV3Service{
			Client: iam.NewIamHttpClient(&repository.ConfigRepositoryImpl{}),
			Session: sdkrepository.Session{
				TokenRepository: &repository.TokenRepositoryImpl{},
			},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *iamclientmodels.ClientmodelUpsertPermissionModulePackageRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		input := &clients_config_v3.AdminUpdateModulePackageParams{
			Body: body,
		}
		errNoContent := clientsConfigV3Service.AdminUpdateModulePackageShort(input)
		if errNoContent != nil {
			slog.Error("operation failed", "error", errNoContent)

			return errNoContent
		}

		slog.Info("Response CLI success.")

		return nil
	},
}

func init() {
	AdminUpdateModulePackageCmd.Flags().String("body", "", "Body")
	_ = AdminUpdateModulePackageCmd.MarkFlagRequired("body")
}
