// Copyright (c) 2022 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package auth

import (
	"fmt"
	"sync"
	"time"

	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/repository"
	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/utils"
)

type TokenRepositoryImpl struct {
	IssuedTime  *time.Time
	AccessToken *repository.Token
	mu          sync.Mutex
}

func DefaultTokenRepositoryImpl() *TokenRepositoryImpl {
	return &TokenRepositoryImpl{
		AccessToken: &repository.Token{},
	}
}

func (t *TokenRepositoryImpl) Store(accessToken interface{}) error {
	defer t.mu.Unlock()
	t.mu.Lock()

	timeNow := utils.TimeNow().UTC()
	t.IssuedTime = &timeNow

	convertedToken, err := repository.ConvertInterfaceToModel(accessToken)
	if err != nil {
		return err
	}
	t.AccessToken = convertedToken

	return nil
}

func (t *TokenRepositoryImpl) GetToken() (*repository.Token, error) {
	defer t.mu.Unlock()
	t.mu.Lock()

	if t.AccessToken == nil {
		return nil, fmt.Errorf("empty access token")
	}

	return t.AccessToken, nil
}

func (t *TokenRepositoryImpl) RemoveToken() error {
	defer t.mu.Unlock()
	t.mu.Lock()

	t.IssuedTime = nil
	t.AccessToken = nil

	return nil
}

func (t *TokenRepositoryImpl) TokenIssuedTimeUTC() time.Time {
	defer t.mu.Unlock()
	t.mu.Lock()

	return *t.IssuedTime
}
