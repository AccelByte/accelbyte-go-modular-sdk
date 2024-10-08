// Copyright (c) 2022 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package integration

import (
	"fmt"
	"os"
	"time"

	"github.com/AccelByte/accelbyte-go-modular-sdk/lobby-sdk/pkg/connectionutils"
	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/repository"
)

/*
	Please set your client_id and client_secret in to the env before run the test
*/

var (
	NamespaceTest = os.Getenv("AB_NAMESPACE")
)

type ConnectionManagerImpl struct {
}

var wsConn *connectionutils.WSConnection

func (connManager *ConnectionManagerImpl) Save(conn *connectionutils.WSConnection) {
	wsConn = conn
}

func (connManager *ConnectionManagerImpl) Get() *connectionutils.WSConnection {
	return wsConn
}

func (connManager *ConnectionManagerImpl) Close() error {
	if wsConn == nil {
		return fmt.Errorf("no websocket connection can be closed")
	}

	return wsConn.Conn.Close()
}

// ------------------------------------- section for phantauth token repo -----------------------------------

type TokenRepositoryPhantAuthImpl struct {
	IssuedTime  *time.Time
	AccessToken *repository.Token
}

type ConfigRepositoryPhantAuthImpl struct {
}

func (c *ConfigRepositoryPhantAuthImpl) GetClientId() string {
	return "test.client"
}

func (c *ConfigRepositoryPhantAuthImpl) GetClientSecret() string {
	return "UTBcWwt5"
}

func (c *ConfigRepositoryPhantAuthImpl) GetJusticeBaseUrl() string {
	return os.Getenv("AB_PHANTAUTH_BASE_URL")
}

func (t *TokenRepositoryPhantAuthImpl) Store(accessToken interface{}) error {
	convertedToken, err := repository.ConvertInterfaceToModel(accessToken)
	if err != nil {
		return err
	}
	t.AccessToken = convertedToken

	return nil
}

func (t *TokenRepositoryPhantAuthImpl) GetToken() (*repository.Token, error) {
	return t.AccessToken, nil
}

func (t *TokenRepositoryPhantAuthImpl) RemoveToken() error {
	t.AccessToken = &repository.Token{}

	return nil
}

func (t *TokenRepositoryPhantAuthImpl) TokenIssuedTimeUTC() time.Time {
	return *t.IssuedTime
}
