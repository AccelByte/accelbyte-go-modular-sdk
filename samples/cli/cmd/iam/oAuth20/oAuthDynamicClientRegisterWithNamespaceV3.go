// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package oAuth20

import (
	"encoding/json"
	"log/slog"

	iam "github.com/AccelByte/accelbyte-go-modular-sdk/iam-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/iam-sdk/pkg/iamclient/o_auth2_0"
	"github.com/AccelByte/accelbyte-go-modular-sdk/iam-sdk/pkg/iamclientmodels"
	sdkrepository "github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/repository"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// OAuthDynamicClientRegisterWithNamespaceV3Cmd represents the OAuthDynamicClientRegisterWithNamespaceV3 command
var OAuthDynamicClientRegisterWithNamespaceV3Cmd = &cobra.Command{
	Use:   "oAuthDynamicClientRegisterWithNamespaceV3",
	Short: "O auth dynamic client register with namespace V3",
	Long:  `O auth dynamic client register with namespace V3`,
	RunE: func(cmd *cobra.Command, args []string) error {
		oAuth20Service := &iam.OAuth20Service{
			Client: iam.NewIamHttpClient(&repository.ConfigRepositoryImpl{}),
			Session: sdkrepository.Session{
				TokenRepository: &repository.TokenRepositoryImpl{},
			},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *iamclientmodels.OauthmodelClientRegistrationRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &o_auth2_0.OAuthDynamicClientRegisterWithNamespaceV3Params{
			Body:      body,
			Namespace: namespace,
		}
		created, errCreated := oAuth20Service.OAuthDynamicClientRegisterWithNamespaceV3Short(input)
		if errCreated != nil {
			slog.Error("operation failed", "error", errCreated)

			return errCreated
		}

		slog.Info("Response CLI success", "response", created)

		return nil
	},
}

func init() {
	OAuthDynamicClientRegisterWithNamespaceV3Cmd.Flags().String("body", "", "Body")
	_ = OAuthDynamicClientRegisterWithNamespaceV3Cmd.MarkFlagRequired("body")
	OAuthDynamicClientRegisterWithNamespaceV3Cmd.Flags().String("namespace", "", "Namespace")
	_ = OAuthDynamicClientRegisterWithNamespaceV3Cmd.MarkFlagRequired("namespace")
}
