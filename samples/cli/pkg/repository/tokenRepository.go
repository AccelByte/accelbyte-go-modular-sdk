// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package repository

import (
	"encoding/json"
	"errors"
	"os"
	"time"

	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/repository"

	"github.com/sirupsen/logrus"
)

type TokenRepositoryImpl struct {
	IssuedTime time.Time
}

func (tokenRepository *TokenRepositoryImpl) Store(accessToken interface{}) error {
	tokenRepository.TokenIssuedTimeUTC()

	_, err := os.Stat(os.TempDir() + "/justice-sample-apps/")
	if os.IsNotExist(err) {
		errDir := os.MkdirAll(os.TempDir()+"/justice-sample-apps/", 0755) //nolint:mnd
		if errDir != nil {
			return errDir
		}
	}
	marshal, err := json.Marshal(accessToken)
	if err != nil {
		return err
	}
	err = os.WriteFile(os.TempDir()+"/justice-sample-apps/userData", marshal, 0644) //nolint:mnd
	if err != nil {
		return err
	}

	return nil
}

func (tokenRepository *TokenRepositoryImpl) GetToken() (*repository.Token, error) {
	if _, err := os.Stat(os.TempDir() + "/justice-sample-apps/userData"); os.IsNotExist(err) {
		logrus.Error(err)

		return nil, errors.New("please do login")
	}
	content, err := os.ReadFile(os.TempDir() + "/justice-sample-apps/userData")
	if err != nil {
		logrus.Error(err)

		return nil, errors.New("please do login")
	}
	var token repository.Token
	err = json.Unmarshal(content, &token)
	if err != nil {
		logrus.Error(err)

		return nil, errors.New("please do login")
	}

	return &token, nil
}

func (tokenRepository *TokenRepositoryImpl) RemoveToken() error {
	err := os.Remove(os.TempDir() + "/justice-sample-apps/userData")
	if err != nil {
		logrus.Error("Cannot delete user data")

		return err
	}

	return nil
}

func (tokenRepository *TokenRepositoryImpl) TokenIssuedTimeUTC() time.Time {
	return tokenRepository.IssuedTime
}
