// Copyright (c) 2023 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package iam

import (
	"time"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils/auth"

	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient"
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/o_auth2_0"
)

var Once utils.Once

type refreshTokenSchedulerImpl struct {
}

func NewRefreshTokenSchedulerImpl() auth.RefreshTokenScheduler {
	return &refreshTokenSchedulerImpl{}
}

func (s *refreshTokenSchedulerImpl) Start(session auth.Session, loginType string) {
	Once.Do(func() {
		getToken, _ := session.Token.GetToken()

		refreshRate := session.Refresh.GetRefreshRate()

		switch loginType {
		case "user": // user token have a refreshToken
			if getToken.RefreshToken != "" {
				go func() {
					for {
						token, _ := session.Token.GetToken()
						if token == nil {
							return // Logout
						}
						if repository.HasTokenExpired(session.Token, refreshRate) {
							if !repository.HasRefreshTokenExpired(session.Token, refreshRate) {
								session.Refresh.SetRefreshIsRunningInBackground(true)
								UserTokenRefresher(session)
								session.Refresh.SetRefreshIsRunningInBackground(false)
							}
						}
						time.Sleep(1 * time.Second)
					}
				}()
			}

		case "client":
			go func() {
				for {
					token, _ := session.Token.GetToken()
					if token == nil {
						return // Logout
					}
					if repository.HasTokenExpired(session.Token, refreshRate) {
						session.Refresh.SetRefreshIsRunningInBackground(true)
						ClientTokenRefresher(session)
						session.Refresh.SetRefreshIsRunningInBackground(false)
					}
					time.Sleep(1 * time.Second)
				}
			}()
		}
	})
}

type OAuth20RefreshService struct {
	Client           *iamclient.JusticeIamService
	ConfigRepository repository.ConfigRepository
	Token            repository.TokenRepository
}

func UserTokenRefresher(s auth.Session) {
	token, _ := s.Token.GetToken()
	p := &o_auth2_0.TokenGrantV3Params{
		GrantType:    o_auth2_0.TokenGrantV3RefreshTokenConstant,
		RefreshToken: &token.RefreshToken,
	}
	service := OAuth20RefreshService{
		Client:           NewIamClient(s.Config),
		ConfigRepository: s.Config,
		Token:            s.Token,
	}
	newToken, errLogin := service.Client.OAuth20.TokenGrantV3Short(p, auth.Basic(s.Config.GetClientId(), s.Config.GetClientSecret()))
	if errLogin != nil {
		return
	}
	err := s.Token.Store(*newToken.Payload)
	if err != nil {
		return
	}
}

func ClientTokenRefresher(s auth.Session) {
	p := &o_auth2_0.TokenGrantV3Params{
		GrantType: o_auth2_0.TokenGrantV3ClientCredentialsConstant,
	}
	service := OAuth20RefreshService{
		Client:           NewIamClient(s.Config),
		ConfigRepository: s.Config,
		Token:            s.Token,
	}
	newToken, errLogin := service.Client.OAuth20.TokenGrantV3Short(p, auth.Basic(s.Config.GetClientId(), s.Config.GetClientSecret()))
	if errLogin != nil {
		return
	}
	err := s.Token.Store(*newToken.Payload)
	if err != nil {
		return
	}
}
