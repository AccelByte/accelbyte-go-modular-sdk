// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package thirdPartyCredential

import (
	"encoding/json"
	"log/slog"

	iam "github.com/AccelByte/accelbyte-go-modular-sdk/iam-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/iam-sdk/pkg/iamclient/third_party_credential"
	"github.com/AccelByte/accelbyte-go-modular-sdk/iam-sdk/pkg/iamclientmodels"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// PartialUpdateThirdPartyLoginPlatformDomainV3Cmd represents the PartialUpdateThirdPartyLoginPlatformDomainV3 command
var PartialUpdateThirdPartyLoginPlatformDomainV3Cmd = &cobra.Command{
	Use:   "partialUpdateThirdPartyLoginPlatformDomainV3",
	Short: "Partial update third party login platform domain V3",
	Long:  `Partial update third party login platform domain V3`,
	RunE: func(cmd *cobra.Command, args []string) error {
		thirdPartyCredentialService := &iam.ThirdPartyCredentialService{
			Client:          iam.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *iamclientmodels.ModelPlatformDomainPatchRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		platformId, _ := cmd.Flags().GetString("platformId")
		input := &third_party_credential.PartialUpdateThirdPartyLoginPlatformDomainV3Params{
			Body:       body,
			Namespace:  namespace,
			PlatformID: platformId,
		}
		ok, errOK := thirdPartyCredentialService.PartialUpdateThirdPartyLoginPlatformDomainV3Short(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	PartialUpdateThirdPartyLoginPlatformDomainV3Cmd.Flags().String("body", "", "Body")
	_ = PartialUpdateThirdPartyLoginPlatformDomainV3Cmd.MarkFlagRequired("body")
	PartialUpdateThirdPartyLoginPlatformDomainV3Cmd.Flags().String("namespace", "", "Namespace")
	_ = PartialUpdateThirdPartyLoginPlatformDomainV3Cmd.MarkFlagRequired("namespace")
	PartialUpdateThirdPartyLoginPlatformDomainV3Cmd.Flags().String("platformId", "", "Platform id")
	_ = PartialUpdateThirdPartyLoginPlatformDomainV3Cmd.MarkFlagRequired("platformId")
}
