// Copyright (c) 2024 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package main

import (
	"bufio"
	"fmt"
	"strings"
	"time"

	lobby "github.com/AccelByte/accelbyte-go-modular-sdk/lobby-sdk/pkg"

	iam "github.com/AccelByte/accelbyte-go-modular-sdk/iam-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/lobby-sdk/pkg/connectionutils"
	"github.com/AccelByte/accelbyte-go-modular-sdk/lobby-sdk/pkg/lobbyclientmodels/model"
	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/utils/auth"
	"github.com/sirupsen/logrus"
)

var (
	// use the default config and token implementation
	configRepo          = *auth.DefaultConfigRepositoryImpl()
	tokenRepo           = *auth.DefaultTokenRepositoryImpl()
	connMgr             *ConnectionManagerImpl
	lobbyMessageHandler = func(dataByte []byte) {

		msg := decodeWSMessage(string(dataByte))

		if v, ok := msg["type"]; ok {
			msgType = v
		}
		switch msgType {
		case model.TypeNotificationMessage:
		}
	}
	msgType   string
	friendsId = "friendsId"
	id        = "testId"
)

func main() {
	// prepare the IAM Oauth service
	oauth := &iam.OAuth20Service{
		Client:           iam.NewIamClient(&configRepo),
		ConfigRepository: &configRepo,
		TokenRepository:  &tokenRepo,
	}
	clientId := oauth.ConfigRepository.GetClientId()
	clientSecret := oauth.ConfigRepository.GetClientSecret()

	// call the endpoint tokenGrantV3Short through the wrapper 'LoginClient'
	err := oauth.LoginClient(&clientId, &clientSecret)
	if err != nil {
		fmt.Println("failed login client")
	} else {
		fmt.Println("successful login")
	}

	// prepare the Websocket lobby service
	lobbyService := &lobby.LobbyServiceWebsocket{
		ConfigRepository:  &configRepo,
		TokenRepository:   &tokenRepo,
		ConnectionManager: connMgr,
	}
	connection, errConn := connectionutils.NewWSConnection(&configRepo, &tokenRepo, connectionutils.WithMessageHandler(lobbyMessageHandler))
	if errConn != nil {
		fmt.Println("failed to make websocket connection")
	}
	lobbyClient := connectionutils.NewLobbyWebSocketClient(connection)
	_, err = lobbyClient.Connect(false)
	if err != nil {
		panic(err)
	}

	connMgr.Save(connection)

	fmt.Println("This will print every 5 seconds")
	for {
		// Use the ObservableTokenRepositoryImpl
		observableRepo := auth.DefaultObservableTokenRepositoryImpl(&tokenRepo)

		// Register an observer for lobbyService
		observableRepo.RegisterObserver(lobbyService)

		// Get access token and observe the change
		newToken, errNewToken := tokenRepo.GetToken()
		if errNewToken != nil {
			fmt.Println(errNewToken.Error())
		}

		errSetAccessToken := observableRepo.SetAccessToken(newToken)
		if errSetAccessToken != nil {
			fmt.Println(errSetAccessToken.Error())
		}

		// cek the token
		token, _ := oauth.TokenRepository.GetToken()
		fmt.Printf("print  %v\n", token) // if refresh token happen this token will get changed

		// call an AccelByte Gaming Services Lobby Websocket operation
		errNotif := lobbyService.ListOfFriendsRequest(&friendsId, &id)
		if errNotif != nil {
			fmt.Println(errNotif.Error())
		} else {
			fmt.Printf("Successfully call websocket\n")
		}
		time.Sleep(5 * time.Second)
	}
}

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

func decodeWSMessage(msg string) map[string]string {
	scanner := bufio.NewScanner(strings.NewReader(msg))
	res := make(map[string]string)

	for scanner.Scan() {
		str := scanner.Text()
		keyValue := strings.Split(str, ": ")
		if len(keyValue) == 2 {
			res[keyValue[0]] = keyValue[1]
		}
	}

	if err := scanner.Err(); err != nil {
		logrus.Errorf("error reading websocket message: %v", err)
	}

	return res
}
