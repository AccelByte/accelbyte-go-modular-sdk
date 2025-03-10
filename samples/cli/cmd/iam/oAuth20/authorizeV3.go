// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package oAuth20

import (
	"net/http"

	iam "github.com/AccelByte/accelbyte-go-modular-sdk/iam-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/iam-sdk/pkg/iamclient/o_auth2_0"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// AuthorizeV3Cmd represents the AuthorizeV3 command
var AuthorizeV3Cmd = &cobra.Command{
	Use:   "authorizeV3",
	Short: "Authorize V3",
	Long:  `Authorize V3`,
	RunE: func(cmd *cobra.Command, args []string) error {
		oAuth20Service := &iam.OAuth20Service{
			Client:           iam.NewIamClient(&repository.ConfigRepositoryImpl{}),
			ConfigRepository: &repository.ConfigRepositoryImpl{},
			TokenRepository:  &repository.TokenRepositoryImpl{},
		}
		clientId, _ := cmd.Flags().GetString("clientId")
		responseType, _ := cmd.Flags().GetString("responseType")
		blockedPlatformId, _ := cmd.Flags().GetString("blockedPlatformId")
		codeChallenge, _ := cmd.Flags().GetString("codeChallenge")
		codeChallengeMethod, _ := cmd.Flags().GetString("codeChallengeMethod")
		createHeadless, _ := cmd.Flags().GetBool("createHeadless")
		loginWebBased, _ := cmd.Flags().GetBool("loginWebBased")
		nonce, _ := cmd.Flags().GetString("nonce")
		oneTimeLinkCode, _ := cmd.Flags().GetString("oneTimeLinkCode")
		redirectUri, _ := cmd.Flags().GetString("redirectUri")
		scope, _ := cmd.Flags().GetString("scope")
		state, _ := cmd.Flags().GetString("state")
		targetAuthPage, _ := cmd.Flags().GetString("targetAuthPage")
		useRedirectUriAsLoginUrlWhenLocked, _ := cmd.Flags().GetBool("useRedirectUriAsLoginUrlWhenLocked")
		httpClient := &http.Client{
			CheckRedirect: func(req *http.Request, via []*http.Request) error {
				return http.ErrUseLastResponse
			},
		}
		input := &o_auth2_0.AuthorizeV3Params{
			BlockedPlatformID:                  &blockedPlatformId,
			CodeChallenge:                      &codeChallenge,
			CodeChallengeMethod:                &codeChallengeMethod,
			CreateHeadless:                     &createHeadless,
			LoginWebBased:                      &loginWebBased,
			Nonce:                              &nonce,
			OneTimeLinkCode:                    &oneTimeLinkCode,
			RedirectURI:                        &redirectUri,
			Scope:                              &scope,
			State:                              &state,
			TargetAuthPage:                     &targetAuthPage,
			UseRedirectURIAsLoginURLWhenLocked: &useRedirectUriAsLoginUrlWhenLocked,
			ClientID:                           clientId,
			ResponseType:                       responseType,
			HTTPClient:                         httpClient,
		}
		_, errFound := oAuth20Service.AuthorizeV3Short(input)
		if errFound != nil {
			logrus.Error(errFound)

			return errFound
		}

		logrus.Infof("Response CLI success.")

		return nil
	},
}

func init() {
	AuthorizeV3Cmd.Flags().String("blockedPlatformId", "", "Blocked platform id")
	AuthorizeV3Cmd.Flags().String("codeChallenge", "", "Code challenge")
	AuthorizeV3Cmd.Flags().String("codeChallengeMethod", "", "Code challenge method")
	AuthorizeV3Cmd.Flags().Bool("createHeadless", false, "Create headless")
	AuthorizeV3Cmd.Flags().Bool("loginWebBased", false, "Login web based")
	AuthorizeV3Cmd.Flags().String("nonce", "", "Nonce")
	AuthorizeV3Cmd.Flags().String("oneTimeLinkCode", "", "One time link code")
	AuthorizeV3Cmd.Flags().String("redirectUri", "", "Redirect uri")
	AuthorizeV3Cmd.Flags().String("scope", "", "Scope")
	AuthorizeV3Cmd.Flags().String("state", "", "State")
	AuthorizeV3Cmd.Flags().String("targetAuthPage", "", "Target auth page")
	AuthorizeV3Cmd.Flags().Bool("useRedirectUriAsLoginUrlWhenLocked", false, "Use redirect uri as login url when locked")
	AuthorizeV3Cmd.Flags().String("clientId", "", "Client id")
	_ = AuthorizeV3Cmd.MarkFlagRequired("client_id")
	AuthorizeV3Cmd.Flags().String("responseType", "", "Response type")
	_ = AuthorizeV3Cmd.MarkFlagRequired("response_type")
}
