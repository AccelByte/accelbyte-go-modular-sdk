// Copyright (c) 2022 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package auth

import (
	"encoding/base64"
	"fmt"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/constant"
	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/repository"
)

type Session struct {
	Token   repository.TokenRepository
	Config  repository.ConfigRepository
	Refresh repository.RefreshTokenRepository
}

// AuthInfoWriter called by the existing security from the wrapper
func AuthInfoWriter(s Session, outerValues [][]string, key string) runtime.ClientAuthInfoWriter {
	return runtime.ClientAuthInfoWriterFunc(func(r runtime.ClientRequest, _ strfmt.Registry) error {
		var errors []string
		for _, innerValue := range outerValues {
			success := true
			for _, value := range innerValue {
				switch value {
				case constant.BearerAuth:
					err := TokenRepo(s).AuthenticateRequest(r, nil)
					if err != nil {
						errors = append(errors, err.Error())
						success = false

						break
					}
				case constant.BasicAuth:
					err := ConfigRepo(s).AuthenticateRequest(r, nil)
					if err != nil {
						errors = append(errors, err.Error())
						success = false

						break
					}
				case constant.CookieAuth:
					err := Cookie(s, key).AuthenticateRequest(r, nil)
					if err != nil {
						errors = append(errors, err.Error())
						success = false

						break
					}
				}
			}
			if success {
				return nil
			}
		}
		aggregatedErr := fmt.Errorf(strings.Join(errors, ""))

		return fmt.Errorf("failed to find an existing authorization. %s", aggregatedErr)
	})
}

func ConfigRepo(s Session) runtime.ClientAuthInfoWriter {
	clientID := s.Config.GetClientId()
	if clientID == "" {
		return Error(fmt.Errorf("empty clientID"))
	}
	clientSecret := s.Config.GetClientSecret()

	return Basic(clientID, clientSecret)
}

func Basic(username, password string) runtime.ClientAuthInfoWriter {
	return runtime.ClientAuthInfoWriterFunc(func(r runtime.ClientRequest, _ strfmt.Registry) error {
		encoded := base64.StdEncoding.EncodeToString([]byte(username + ":" + password))

		return r.SetHeaderParam(constant.Authorization, "Basic "+encoded)
	})
}

func TokenRepo(s Session) runtime.ClientAuthInfoWriter {
	getToken, err := s.Token.GetToken()
	if err != nil {
		return Error(err)
	}
	if getToken.AccessToken == nil {
		return Error(fmt.Errorf("access token is nil. please do login first"))
	}

	return Bearer(*getToken.AccessToken)
}

func Bearer(token string) runtime.ClientAuthInfoWriter {
	return runtime.ClientAuthInfoWriterFunc(func(r runtime.ClientRequest, _ strfmt.Registry) error {
		return r.SetHeaderParam(constant.Authorization, "Bearer "+token)
	})
}

func CookieValue(key, value string) runtime.ClientAuthInfoWriter {
	return runtime.ClientAuthInfoWriterFunc(func(r runtime.ClientRequest, _ strfmt.Registry) error {
		return r.SetHeaderParam(constant.CookieAuth, key+"="+value)
	})
}

func Cookie(s Session, key string) runtime.ClientAuthInfoWriter {
	getToken, err := s.Token.GetToken()
	if err != nil {
		return Error(err)
	}
	if getToken.AccessToken == nil {
		return Error(fmt.Errorf("access token is nil"))
	}

	return CookieValue(key, *getToken.AccessToken)
}

func Error(err error) runtime.ClientAuthInfoWriter {
	return runtime.ClientAuthInfoWriterFunc(func(r runtime.ClientRequest, _ strfmt.Registry) error {
		return err
	})
}
