// Copyright (c) 2022 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package integration_test

//lint:ignore SA5011 possible nil pointer dereference

import (
	"bytes"
	"fmt"
	"net/http"
	"os"
	"testing"
	"time"

	"github.com/sirupsen/logrus"
	"github.com/stretchr/testify/assert"

	iam "github.com/AccelByte/accelbyte-go-modular-sdk/iam-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/tests/integration"

	"github.com/AccelByte/accelbyte-go-modular-sdk/iam-sdk/pkg/iamclient/users"
	"github.com/AccelByte/accelbyte-go-modular-sdk/iam-sdk/pkg/iamclient/users_v4"
	"github.com/AccelByte/accelbyte-go-modular-sdk/iam-sdk/pkg/iamclientmodels"
	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/utils/auth"

	"github.com/AccelByte/accelbyte-go-modular-sdk/iam-sdk/pkg/iamclient/o_auth2_0"
	"github.com/AccelByte/accelbyte-go-modular-sdk/iam-sdk/pkg/iamclient/o_auth2_0_extension"
	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/utils"
)

var (
	httpClient = &http.Client{
		CheckRedirect: func(req *http.Request, via []*http.Request) error {
			return http.ErrUseLastResponse
		},
	}
	tokenRepository  = auth.DefaultTokenRepositoryImpl()
	configRepository = auth.DefaultConfigRepositoryImpl()
	oAuth20Service   = &iam.OAuth20Service{
		Client:           iam.NewIamClient(auth.DefaultConfigRepositoryImpl()),
		ConfigRepository: configRepository,
		TokenRepository:  tokenRepository,
	}
	userService = &iam.UsersService{
		Client:           iam.NewIamClient(auth.DefaultConfigRepositoryImpl()),
		ConfigRepository: auth.DefaultConfigRepositoryImpl(),
		TokenRepository:  tokenRepository,
	}
	userV4Service = &iam.UsersV4Service{
		Client:           iam.NewIamClient(auth.DefaultConfigRepositoryImpl()),
		ConfigRepository: auth.DefaultConfigRepositoryImpl(),
		TokenRepository:  tokenRepository,
	}
	oAuth20ExtensionService = &iam.OAuth20ExtensionService{
		Client:           iam.NewIamClient(auth.DefaultConfigRepositoryImpl()),
		ConfigRepository: auth.DefaultConfigRepositoryImpl(),
		TokenRepository:  tokenRepository,
	}
	clientService = &iam.ClientsService{
		Client:           iam.NewIamClient(auth.DefaultConfigRepositoryImpl()),
		ConfigRepository: auth.DefaultConfigRepositoryImpl(),
		TokenRepository:  tokenRepository,
	}
	codeChallengeMethod = o_auth2_0.AuthorizeV3CodeChallengeMethodS256Constant
	redirectURI         string
	scope               = "commerce account social publishing analytics"
	username            = os.Getenv("AB_USERNAME")
	password            = os.Getenv("AB_PASSWORD")
	clientID            = oAuth20Service.ConfigRepository.GetClientId()
	publicClientID      = os.Getenv("PUBLIC_AB_CLIENT_ID")
	authType            = "EMAILPASSWD"
	country             = "US"
	displayName         = "Go Extend SDK Test"
	pwd                 = "q!w@e#r$azsxdcfv1"
	dynamicUsername     = RandStringBytes(5)
	dynamicDoB          = "1990-01-01"
	emailAdd            = fmt.Sprint(dynamicUsername + "@test.com")
	createUserBody      = &iamclientmodels.AccountCreateTestUserRequestV4{
		AuthType:          &authType,
		Country:           &country,
		DateOfBirth:       &dynamicDoB,
		DisplayName:       &displayName,
		EmailAddress:      &emailAdd,
		Password:          &pwd,
		Username:          &dynamicUsername,
		UniqueDisplayName: dynamicUsername,
	}
	reachMinimumAge  = false
	code             = ""
	createUserBodyV3 = &iamclientmodels.ModelUserCreateRequestV3{
		PasswordMD5Sum:    "",
		AcceptedPolicies:  []*iamclientmodels.LegalAcceptedPoliciesRequest{},
		AuthType:          &authType,
		Code:              &code,
		Country:           &country,
		DateOfBirth:       "1990-01-01",
		DisplayName:       &displayName,
		EmailAddress:      &emailAdd,
		Password:          &password,
		ReachMinimumAge:   &reachMinimumAge,
		UniqueDisplayName: dynamicUsername,
	}
	updateUserBody = &iamclientmodels.ModelUserUpdateRequestV3{
		DisplayName: "Golang Update Test",
	}
)

func Init() {
	input := &o_auth2_0.TokenGrantV3Params{
		Password:  &password,
		Username:  &username,
		GrantType: o_auth2_0.TokenGrantV3PasswordConstant,
	}
	accessToken, err := oAuth20Service.TokenGrantV3Short(input)
	if err != nil {
		logrus.Errorf("failed login. %v", err.Error())
	} else if accessToken.Data == nil { //lint:ignore SA5011 possible nil pointer dereference
		logrus.Error("empty access token")
	} else {
		tes := oAuth20Service
		errStore := oAuth20Service.TokenRepository.Store(*accessToken.Data)
		if errStore != nil {
			logrus.Errorf("failed stored the token. %v", tes)
		}
	}
}

// Authorization
func TestIntegrationAuthorizeV3(t *testing.T) {
	t.Parallel()

	codeVerifierGenerator, _ := utils.CreateCodeVerifier()
	codeChallenge := codeVerifierGenerator.CodeChallengeS256()
	input := &o_auth2_0.AuthorizeV3Params{
		CodeChallenge:       &codeChallenge,
		CodeChallengeMethod: &codeChallengeMethod,
		RedirectURI:         &redirectURI,
		Scope:               &scope,
		ClientID:            clientID,
		ResponseType:        o_auth2_0.AuthorizeV3ResponseTypeCodeConstant,
		HTTPClient:          httpClient,
	}
	expected, err := oAuth20Service.AuthorizeV3Short(input)
	if err != nil {
		assert.FailNow(t, err.Error())
	}

	// Assert
	assert.Nil(t, err, "err should be nil")
	assert.NotNil(t, expected, "response should not be nil")
}

// Authentication
func TestIntegrationAuthenticate(t *testing.T) {
	t.Parallel()

	// Authorize
	codeVerifierGenerator, _ := utils.CreateCodeVerifier()
	codeChallenge := codeVerifierGenerator.CodeChallengeS256()
	input := &o_auth2_0.AuthorizeV3Params{
		CodeChallenge:       &codeChallenge,
		CodeChallengeMethod: &codeChallengeMethod,
		RedirectURI:         &redirectURI,
		Scope:               &scope,
		ClientID:            oAuth20Service.ConfigRepository.GetClientId(),
		ResponseType:        o_auth2_0.AuthorizeV3ResponseTypeCodeConstant,
		HTTPClient:          httpClient,
	}
	requestID, err := oAuth20Service.AuthorizeV3Short(input)
	if err != nil {
		assert.FailNow(t, err.Error())
	}

	// Authentication
	inputAuth := &o_auth2_0_extension.UserAuthenticationV3Params{
		ClientID:   &clientID,
		Password:   password,
		RequestID:  requestID,
		UserName:   username,
		HTTPClient: httpClient,
	}
	expected, errExpected := oAuth20ExtensionService.UserAuthenticationV3Short(inputAuth)
	if errExpected != nil {
		assert.FailNow(t, errExpected.Error())
	}

	// Assert
	assert.Nil(t, errExpected, "err should be nil")
	assert.NotNil(t, expected, "response should not be nil")
}

func TestIntegrationGrantTokenAuthorizationCode(t *testing.T) {
	t.Parallel()

	// CASE Authorize
	codeVerifierGenerator, _ := utils.CreateCodeVerifier()
	codeChallenge := codeVerifierGenerator.CodeChallengeS256()
	input := &o_auth2_0.AuthorizeV3Params{
		CodeChallenge:       &codeChallenge,
		CodeChallengeMethod: &codeChallengeMethod,
		RedirectURI:         &redirectURI,
		Scope:               &scope,
		ClientID:            clientID,
		ResponseType:        o_auth2_0.AuthorizeV3ResponseTypeCodeConstant,
		HTTPClient:          httpClient,
	}

	requestID, err := oAuth20Service.AuthorizeV3Short(input)
	if err != nil {
		assert.FailNow(t, err.Error())
	}
	// ESAC

	// Assert
	assert.Nil(t, err, "err should be nil")
	assert.NotNil(t, requestID, "response should not be nil")

	// CASE User authentication
	inputAuth := &o_auth2_0_extension.UserAuthenticationV3Params{
		ClientID:   &clientID,
		Password:   password,
		RequestID:  requestID,
		UserName:   username,
		HTTPClient: httpClient,
	}

	code, errCode := oAuth20ExtensionService.UserAuthenticationV3Short(inputAuth)
	if errCode != nil {
		assert.FailNow(t, errCode.Error())
	}
	// ESAC

	// Assert
	assert.Nil(t, errCode, "err should be nil")
	assert.NotNil(t, code, "response should not be nil")

	// CASE Token grant
	codeVerifier := codeVerifierGenerator.String()
	inputTokenGrant := &o_auth2_0.TokenGrantV3Params{
		Code:         &code,
		CodeVerifier: &codeVerifier,
		GrantType:    o_auth2_0.TokenGrantV3GrantTypeAuthorizationCodeConstant,
	}

	oAuth20Service.TokenRepository.RemoveToken()

	expected, errExpected := oAuth20Service.TokenGrantV3Short(inputTokenGrant)
	if errExpected != nil {
		assert.FailNow(t, errExpected.Error())
	}
	// ESAC

	// Assert
	assert.Nil(t, errExpected, "err should be nil")
	assert.NotNil(t, expected, "response should not be nil")
}

func TestIntegrationLogin(t *testing.T) {
	t.Parallel()

	// CASE Login
	err := oAuth20Service.Login(username, password)
	if err != nil {
		assert.FailNow(t, err.Error())
	}

	getToken, errGetToken := oAuth20Service.TokenRepository.GetToken()
	logrus.Infof("Bearer %v; UserId %v", *getToken.AccessToken, getToken.UserID)
	// ESAC

	// Assert
	assert.Nil(t, err, "err should be nil")
	assert.Nil(t, errGetToken, "err should be nil")
	assert.NotNil(t, getToken, "response should not be nil")
}

func TestIntegrationLoginWithScope(t *testing.T) {
	t.Parallel()

	// CASE Login
	scope = "account"
	err := oAuth20Service.LoginWithScope(username, password, scope)
	if err != nil {
		assert.FailNow(t, err.Error())
	}

	getToken, errGetToken := oAuth20Service.TokenRepository.GetToken()
	logrus.Infof("Bearer %v; UserId %v", *getToken.AccessToken, getToken.UserID)
	// ESAC

	// Assert
	assert.Nil(t, err, "err should be nil")
	assert.Nil(t, errGetToken, "err should be nil")
	assert.NotNil(t, getToken, "response should not be nil")
}

func TestIntegrationUser(t *testing.T) {
	// Login User - Arrange
	Init()

	// CASE Create a user
	input := &users_v4.PublicCreateTestUserV4Params{
		Body:      createUserBody,
		Namespace: integration.NamespaceTest,
	}

	user, err := userV4Service.PublicCreateTestUserV4Short(input)
	if err != nil {
		assert.FailNow(t, err.Error())
	}
	t.Logf("userId: %v", *user.Data.UserID)
	// ESAC

	// Assert
	assert.Nil(t, err, "err should be nil")
	assert.NotNil(t, user, "response should not be nil")

	// CASE Update a user
	inputUpdate := &users.AdminUpdateUserV3Params{
		Body:      updateUserBody,
		Namespace: integration.NamespaceTest,
		UserID:    *user.Data.UserID,
	}

	update, errUpdate := userService.AdminUpdateUserV3Short(inputUpdate)
	if errUpdate != nil {
		assert.FailNow(t, errUpdate.Error())
	}
	// ESAC

	// Assert
	assert.NotNil(t, update, "should not be nil")

	// CASE Get user by Id
	inputGet := &users.AdminGetUserByUserIDV3Params{
		Namespace: integration.NamespaceTest,
		UserID:    *user.Data.UserID,
	}

	get, errGet := userService.AdminGetUserByUserIDV3Short(inputGet)
	if errGet != nil {
		assert.FailNow(t, errGet.Error())
	}
	// ESAC

	// Assert
	assert.NotNil(t, get, "should not be nil")

	// CASE Delete a user
	inputDelete := &users.AdminDeleteUserInformationV3Params{
		Namespace: integration.NamespaceTest,
		UserID:    *user.Data.UserID,
	}

	errDelete := userService.AdminDeleteUserInformationV3Short(inputDelete)
	if errDelete != nil {
		assert.FailNow(t, errDelete.Error())
	}
	// ESAC

	// Assert
	assert.Nil(t, errDelete, "err should be nil")
}

func TestIntegrationLoginClient(t *testing.T) {
	// prepare the IAM Oauth service
	clientId := oAuth20Service.ConfigRepository.GetClientId()
	clientSecret := oAuth20Service.ConfigRepository.GetClientSecret()

	// call the endpoint tokenGrantV3Short through the wrapper 'LoginClient'
	err := oAuth20Service.LoginClient(&clientId, &clientSecret)
	assert.NoError(t, err)

	// get the token
	token, err := oAuth20Service.TokenRepository.GetToken()
	// Assert
	assert.NoError(t, err)
	assert.NotNil(t, token, "response should not be nil")
	t.Logf("Access token %v", *token.AccessToken)

	// call an AccelByte Gaming Services API e.g. GetCountryLocationV3
	input := &o_auth2_0_extension.GetCountryLocationV3Params{}
	country, err := oAuth20ExtensionService.GetCountryLocationV3Short(input)
	assert.NoError(t, err)
	assert.NotNil(t, country)
	t.Logf("Country name: %s", *country.Data.CountryName)
}

func TestIntegrationLoginPublicClient(t *testing.T) {
	t.Skip()
	// Arrange
	var buf bytes.Buffer
	logrus.SetOutput(&buf)
	defer func() {
		logrus.SetOutput(os.Stderr)
	}()

	// Act
	err := oAuth20Service.LoginClient(&publicClientID, nil)
	assert.NoError(t, err)

	// Assert
	assert.True(t, bytes.Contains(buf.Bytes(), []byte("The use of a Public OAuth Client is highly discouraged!")))
}

func TestIntegration_LoginOrRefreshClient_shouldReuseValidToken(t *testing.T) {
	oauthSvc := &iam.OAuth20Service{
		Client:                 iam.NewIamClient(auth.DefaultConfigRepositoryImpl()),
		ConfigRepository:       auth.DefaultConfigRepositoryImpl(),
		TokenRepository:        auth.DefaultTokenRepositoryImpl(),
		RefreshTokenRepository: &auth.RefreshTokenImpl{AutoRefresh: false, RefreshRate: 1},
	}
	clientId := oauthSvc.ConfigRepository.GetClientId()
	clientSecret := oauthSvc.ConfigRepository.GetClientSecret()

	for i := 0; i < 5; i++ {
		// first time auth
		err := oauthSvc.LoginOrRefreshClient(&clientId, &clientSecret)
		if err != nil {
			t.Fatal(err)
		}
		firstToken, err := oauthSvc.TokenRepository.GetToken()
		if err != nil {
			t.Fatal(err)
		}
		assert.NotEmpty(t, *firstToken)

		time.Sleep(time.Second * 5)
		// second time auth
		err = oauthSvc.LoginOrRefreshClient(&clientId, &clientSecret)
		if err != nil {
			t.Fatal(err)
		}
		secondToken, err := oauthSvc.TokenRepository.GetToken()
		if err != nil {
			t.Fatal(err)
		}
		assert.NotEmpty(t, *secondToken)
		assert.Equal(t, *secondToken, *firstToken)
	}
}

func TestIntegration_LoginOrRefreshClient_shouldReAuthenticate(t *testing.T) {
	oauthSvc := &iam.OAuth20Service{
		Client:                 iam.NewIamClient(auth.DefaultConfigRepositoryImpl()),
		ConfigRepository:       auth.DefaultConfigRepositoryImpl(),
		TokenRepository:        auth.DefaultTokenRepositoryImpl(),
		RefreshTokenRepository: &auth.RefreshTokenImpl{AutoRefresh: false, RefreshRate: 0.001}, // very small numbers to make token expire sooner
	}
	clientId := oauthSvc.ConfigRepository.GetClientId()
	clientSecret := oauthSvc.ConfigRepository.GetClientSecret()

	// first time auth
	err := oauthSvc.LoginOrRefreshClient(&clientId, &clientSecret)
	if err != nil {
		t.Fatal(err)
	}
	firstToken, err := oauthSvc.TokenRepository.GetToken()
	if err != nil {
		t.Fatal(err)
	}
	assert.NotEmpty(t, *firstToken)

	time.Sleep(time.Second * 10) // just to be sure it expires
	// second time auth
	err = oauthSvc.LoginOrRefreshClient(&clientId, &clientSecret)
	if err != nil {
		t.Fatal(err)
	}
	secondToken, err := oauthSvc.TokenRepository.GetToken()
	if err != nil {
		t.Fatal(err)
	}
	assert.NotEmpty(t, *secondToken)
	assert.NotEqual(t, *secondToken, *firstToken)
}

func TestIntegration_LoginOrRefresh_shouldReAuthenticate(t *testing.T) {
	username = os.Getenv("AB_USERNAME")
	password = os.Getenv("AB_PASSWORD")
	oauthSvc := &iam.OAuth20Service{
		Client:                 iam.NewIamClient(auth.DefaultConfigRepositoryImpl()),
		ConfigRepository:       auth.DefaultConfigRepositoryImpl(),
		TokenRepository:        auth.DefaultTokenRepositoryImpl(),
		RefreshTokenRepository: &auth.RefreshTokenImpl{AutoRefresh: false, RefreshRate: 0.001}, // very small numbers to make token expire sooner
	}

	// first time auth
	err := oauthSvc.LoginOrRefresh(username, password)
	if err != nil {
		t.Fatal(err)
	}
	firstToken, err := oauthSvc.TokenRepository.GetToken()
	if err != nil {
		t.Fatal(err)
	}
	assert.NotEmpty(t, *firstToken)

	time.Sleep(time.Second * 10) // just to be sure it expires
	// second time auth
	err = oauthSvc.LoginOrRefresh(username, password)
	if err != nil {
		t.Fatal(err)
	}
	secondToken, err := oauthSvc.TokenRepository.GetToken()
	if err != nil {
		t.Fatal(err)
	}
	assert.NotEmpty(t, *secondToken)
	assert.NotEqual(t, *secondToken, *firstToken)
}

// helper
func GetUserID() string {
	input := &o_auth2_0.TokenGrantV3Params{
		Password:  &password,
		Username:  &username,
		GrantType: "password",
	}
	accessToken, err := oAuth20Service.TokenGrantV3Short(input)
	if err != nil {
		logrus.Error("failed login")
	} else if accessToken == nil { //lint:ignore SA5011 possible nil pointer dereference
		logrus.Error("empty access token")
	} else {
		errStore := oAuth20Service.TokenRepository.Store(*accessToken.Data)
		if errStore != nil {
			logrus.Error("failed stored the token")
		}
	}

	return accessToken.Data.UserID
}
