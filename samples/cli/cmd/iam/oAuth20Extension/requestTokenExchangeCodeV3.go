// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package oAuth20Extension

import (
	"log/slog"

	iam "github.com/AccelByte/accelbyte-go-modular-sdk/iam-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/iam-sdk/pkg/iamclient/o_auth2_0_extension"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// RequestTokenExchangeCodeV3Cmd represents the RequestTokenExchangeCodeV3 command
var RequestTokenExchangeCodeV3Cmd = &cobra.Command{
	Use:   "requestTokenExchangeCodeV3",
	Short: "Request token exchange code V3",
	Long:  `Request token exchange code V3`,
	RunE: func(cmd *cobra.Command, args []string) error {
		oAuth20ExtensionService := &iam.OAuth20ExtensionService{
			Client:          iam.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		clientId, _ := cmd.Flags().GetString("clientId")
		namespace, _ := cmd.Flags().GetString("namespace")
		codeChallenge, _ := cmd.Flags().GetString("codeChallenge")
		codeChallengeMethod, _ := cmd.Flags().GetString("codeChallengeMethod")
		input := &o_auth2_0_extension.RequestTokenExchangeCodeV3Params{
			ClientID:            clientId,
			Namespace:           namespace,
			CodeChallenge:       &codeChallenge,
			CodeChallengeMethod: &codeChallengeMethod,
		}
		ok, errOK := oAuth20ExtensionService.RequestTokenExchangeCodeV3Short(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	RequestTokenExchangeCodeV3Cmd.Flags().String("clientId", "", "Client id")
	_ = RequestTokenExchangeCodeV3Cmd.MarkFlagRequired("client_id")
	RequestTokenExchangeCodeV3Cmd.Flags().String("namespace", "", "Namespace")
	_ = RequestTokenExchangeCodeV3Cmd.MarkFlagRequired("namespace")
	RequestTokenExchangeCodeV3Cmd.Flags().String("codeChallenge", "", "Code challenge")
	RequestTokenExchangeCodeV3Cmd.Flags().String("codeChallengeMethod", "", "Code challenge method")
}
