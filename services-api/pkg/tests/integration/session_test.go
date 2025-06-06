// Copyright (c) 2022 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package integration_test

import (
	"fmt"
	"strings"
	"testing"

	"github.com/sirupsen/logrus"
	"github.com/stretchr/testify/assert"

	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/tests/integration"

	iam "github.com/AccelByte/accelbyte-go-modular-sdk/iam-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/iam-sdk/pkg/iamclient/users"
	"github.com/AccelByte/accelbyte-go-modular-sdk/iam-sdk/pkg/iamclient/users_v4"
	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/utils/auth"
	session "github.com/AccelByte/accelbyte-go-modular-sdk/session-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/session-sdk/pkg/sessionclient/configuration_template"
	"github.com/AccelByte/accelbyte-go-modular-sdk/session-sdk/pkg/sessionclient/game_session"
	partySession "github.com/AccelByte/accelbyte-go-modular-sdk/session-sdk/pkg/sessionclient/party"
	"github.com/AccelByte/accelbyte-go-modular-sdk/session-sdk/pkg/sessionclientmodels"
)

var (
	tokenRepository2ndPlayer = auth.DefaultTokenRepositoryImpl()
	configService            = &session.ConfigurationTemplateService{
		Client:          session.NewSessionClient(configRepo),
		TokenRepository: tokenRepository,
	}
	cfgTemplateType  = "P2P"
	inviteTimeout    = int32(60)
	inactiveTimeout  = int32(60)
	joinability      = "OPEN"
	clientVersion    = "1.0.0"
	requestedRegions = []string{"us-west-2"}
	bodyTemplate     = &sessionclientmodels.ApimodelsCreateConfigurationTemplateRequest{
		ClientVersion:    &clientVersion,
		InactiveTimeout:  &inactiveTimeout,
		InviteTimeout:    &inviteTimeout,
		Joinability:      &joinability,
		MaxPlayers:       &maxNumber,
		MinPlayers:       &minNumber,
		RequestedRegions: requestedRegions,
		Type:             &cfgTemplateType,
	}
	maxNumberUpdate    = int32(4)
	bodyTemplateUpdate = &sessionclientmodels.ApimodelsUpdateConfigurationTemplateRequest{
		MaxPlayers:  &maxNumberUpdate,
		Joinability: &joinability,
		Type:        &cfgTemplateType,
	}
	gameSessionService = &session.GameSessionService{
		Client:          session.NewSessionClient(configRepo),
		TokenRepository: tokenRepository,
	}
	gameSessionServiceFor2ndPlayer = &session.GameSessionService{
		Client:          session.NewSessionClient(configRepo),
		TokenRepository: tokenRepository2ndPlayer,
	}
	gameSessionBody = &sessionclientmodels.ApimodelsCreateGameSessionRequest{
		ClientVersion:    &clientVersion,
		Deployment:       &integration.Deployment,
		InactiveTimeout:  &inactiveTimeout,
		InviteTimeout:    &inviteTimeout,
		Joinability:      &joinability,
		MaxPlayers:       &maxNumber,
		MinPlayers:       &minNumber,
		RequestedRegions: requestedRegions,
		Type:             &cfgTemplateType,
	}
	partyService = &session.PartyService{
		Client:          session.NewSessionClient(configRepo),
		TokenRepository: tokenRepository,
	}
	partyServiceFor2ndPlayer = &session.PartyService{
		Client:          session.NewSessionClient(configRepo),
		TokenRepository: tokenRepository2ndPlayer,
	}
	members   []*sessionclientmodels.ApimodelsRequestMember
	bodyParty = &sessionclientmodels.ApimodelsCreatePartyRequest{
		InactiveTimeout: &inactiveTimeout,
		InviteTimeout:   &inviteTimeout,
		Joinability:     &joinability,
		MaxPlayers:      &maxNumber,
		Members:         members,
		MinPlayers:      &minNumber,
		Type:            &cfgTemplateType,
	}
)

func TestIntegrationConfigurationTemplate(t *testing.T) {
	if strings.Contains(configRepository.BaseUrl, "gamingservices.accelbyte.io") {
		t.Skip("temporarily disabled in AGS Starter due to issue in session service")
	}

	// Login User - Arrange
	Init()

	// CASE Create Configuration Template
	tempConfigTemplateName := randomizeCfgTemplateName()
	tempConfigTemplate := *bodyTemplate
	tempConfigTemplate.Name = &tempConfigTemplateName

	inputCreate := &configuration_template.AdminCreateConfigurationTemplateV1Params{
		Body:      &tempConfigTemplate,
		Namespace: integration.NamespaceTest,
	}
	created, errCreated := configService.AdminCreateConfigurationTemplateV1Short(inputCreate)
	if errCreated != nil {
		assert.FailNow(t, errCreated.Error())

		return
	}
	// ESAC

	// Assert
	assert.Nil(t, errCreated, "err should be nil")
	assert.NotNil(t, created, "should not be nil")
	t.Logf("created config template with name: %s", *created.Data.Name)

	// CASE Update Configuration Template
	tempConfigTemplateUpdate := *bodyTemplateUpdate
	tempConfigTemplateUpdate.Name = created.Data.Name

	inputUpdate := &configuration_template.AdminUpdateConfigurationTemplateV1Params{
		Body:      &tempConfigTemplateUpdate,
		Namespace: integration.NamespaceTest,
		Name:      *created.Data.Name,
	}
	updated, errUpdated := configService.AdminUpdateConfigurationTemplateV1Short(inputUpdate)
	if errUpdated != nil {
		assert.FailNow(t, errUpdated.Error())

		return
	}
	// ESAC

	// Assert
	assert.NotNil(t, updated, "should not be nil")
	if updated != nil {
		assert.Equal(t, *updated.Data.MaxPlayers, maxNumberUpdate)
		t.Logf("updated max player to %v for template name: %s", *updated.Data.MaxPlayers, *updated.Data.Name)
	}

	// CASE Delete Configuration Template
	inputDelete := &configuration_template.AdminDeleteConfigurationTemplateV1Params{
		Name:      *created.Data.Name,
		Namespace: integration.NamespaceTest,
	}
	errDeleted := configService.AdminDeleteConfigurationTemplateV1Short(inputDelete)
	if errDeleted != nil {
		assert.FailNow(t, errDeleted.Error())

		return
	}
	// ESAC

	// Assert
	assert.Nil(t, errDeleted, "should be nil")
}

func TestIntegrationGameSession(t *testing.T) {
	if strings.Contains(configRepository.BaseUrl, "gamingservices.accelbyte.io") {
		t.Skip("temporarily disabled in AGS Starter due to issue in session service")
	}

	// Login User - Arrange
	Init()

	// Create configuration - Arrange
	cfgName, _ := createCfgTemplate(randomizeCfgTemplateName())
	defer func(name string) {
		err := deleteCfgTemplate(name)
		if err != nil {
			assert.FailNow(t, err.Error())
		}
	}(cfgName)

	// CASE Create Game Session
	tempCreateGameSessionBody := *gameSessionBody
	tempCreateGameSessionBody.ConfigurationName = &cfgName

	inputCreate := &game_session.CreateGameSessionParams{
		Body:      &tempCreateGameSessionBody,
		Namespace: integration.NamespaceTest,
	}
	created, errCreated := gameSessionService.CreateGameSessionShort(inputCreate)
	if errCreated != nil {
		assert.FailNow(t, errCreated.Error())

		return
	}
	// ESAC

	// Assert
	assert.Nil(t, errCreated, "err should be nil")
	assert.NotNil(t, created, "should be nil")
	t.Logf("created game session with ID: %s, members %s", *created.Data.ID, *created.Data.Members[0].ID)

	// Login User - Arrange
	player2Id := createPlayer2()
	defer deletePlayer(player2Id)

	// CASE Join a Game Session
	inputJoin := &game_session.JoinGameSessionParams{
		Namespace: integration.NamespaceTest,
		SessionID: *created.Data.ID,
	}
	joined, errJoined := gameSessionServiceFor2ndPlayer.JoinGameSessionShort(inputJoin)
	if errJoined != nil {
		assert.FailNow(t, errJoined.Error())

		return
	}
	// ESAC

	// Assert
	assert.NotNil(t, joined, "should not be nil")
	assert.Equal(t, int(maxNumber), len(joined.Data.Members))
	t.Logf("joined P2 %s for session id: %s", player2Id, *joined.Data.ID)

	// CASE Leave a Game Session
	inputLeave := &game_session.LeaveGameSessionParams{
		Namespace: integration.NamespaceTest,
		SessionID: *created.Data.ID,
	}
	errLeave := gameSessionService.LeaveGameSessionShort(inputLeave)
	if errLeave != nil {
		assert.FailNow(t, errLeave.Error())

		return
	}
	// ESAC

	// Assert
	assert.Nil(t, errLeave, "err should be nil")

	// CASE Delete Game Session
	ids := []string{*created.Data.ID}
	inputDelete := &game_session.AdminDeleteBulkGameSessionsParams{
		Body:      &sessionclientmodels.ApimodelsDeleteBulkGameSessionRequest{Ids: ids},
		Namespace: integration.NamespaceTest,
	}
	deleted, errDeleted := gameSessionService.AdminDeleteBulkGameSessionsShort(inputDelete)
	if errDeleted != nil {
		assert.FailNow(t, errDeleted.Error())

		return
	}
	// ESAC

	// Assert
	assert.Nil(t, errDeleted, "err should be nil")
	assert.NotNil(t, deleted, "should not be nil")
	t.Logf("successfully delete/clean session id: %s", *created.Data.ID)
}

func TestIntegrationQueryGameSession(t *testing.T) {
	// Login User - Arrange
	Init()

	// CASE Query Game Session
	input := &game_session.PublicQueryGameSessionsByAttributesParams{
		Body:      nil,
		Namespace: integration.NamespaceTest,
	}
	query, err := gameSessionService.PublicQueryGameSessionsByAttributesShort(input)
	if err != nil {
		assert.FailNow(t, err.Error())

		return
	}
	// ESAC

	// Assert
	assert.Nil(t, err, "err should be nil")
	assert.NotNil(t, query, "should not be nil")
}

func TestIntegrationParty(t *testing.T) {
	if strings.Contains(configRepository.BaseUrl, "gamingservices.accelbyte.io") {
		t.Skip("temporarily disabled in AGS Starter due to issue in session service")
	}

	// Login User - Arrange
	Init()

	// Create configuration - Arrange
	cfgName, _ := createCfgTemplate(randomizeCfgTemplateName())
	defer func(name string) {
		err := deleteCfgTemplate(name)
		if err != nil {
			assert.FailNow(t, err.Error())
		}
	}(cfgName)

	// Login User - Arrange
	player2Id := createPlayer2()
	defer deletePlayer(player2Id)

	// CASE Create a party
	tempCreatePartyBody := *bodyParty
	tempCreatePartyBody.ConfigurationName = &cfgName

	inputCreated := &partySession.PublicCreatePartyParams{
		Body:      &tempCreatePartyBody,
		Namespace: integration.NamespaceTest,
	}
	created, errCreated := partyService.PublicCreatePartyShort(inputCreated)
	if errCreated != nil {
		assert.Error(t, errCreated)
		t.Skip("skip due to UserIsNotInSession error")

		return
	}
	// ESAC

	// Assert
	assert.Nil(t, errCreated, "err should be nil")
	assert.NotNil(t, created, "should not be nil")

	// CASE User join a party with code
	inputJoined := &partySession.PublicPartyJoinCodeParams{
		Body:      &sessionclientmodels.ApimodelsJoinByCodeRequest{Code: created.Data.Code},
		Namespace: integration.NamespaceTest,
	}
	joined, errJoined := partyServiceFor2ndPlayer.PublicPartyJoinCodeShort(inputJoined)
	if errJoined != nil {
		assert.FailNow(t, errJoined.Error())

		return
	}
	// ESAC

	// Assert
	assert.Nil(t, errJoined, "err should be nil")
	assert.NotNil(t, joined, "should not be nil")

	// CASE Get party detail
	inputGet := &partySession.PublicGetPartyParams{
		Namespace: integration.NamespaceTest,
		PartyID:   *joined.Data.ID,
	}
	get, errGet := partyService.PublicGetPartyShort(inputGet)
	if errGet != nil {
		assert.FailNow(t, errGet.Error())

		return
	}
	// ESAC

	// Assert
	assert.Nil(t, errGet, "err should be nil")
	assert.NotNil(t, get, "should not be nil")

	// CASE User leave a party
	inputLeave := &partySession.PublicPartyLeaveParams{
		Namespace: integration.NamespaceTest,
		PartyID:   *joined.Data.ID,
	}
	errLeave := partyServiceFor2ndPlayer.PublicPartyLeaveShort(inputLeave)
	if errLeave != nil {
		assert.FailNow(t, errLeave.Error())

		return
	}
	// ESAC

	// Assert
	assert.Nil(t, errLeave, "err should be nil")
}

func randomizeCfgTemplateName() string {
	return fmt.Sprintf("go_sdk_template_" + RandStringBytes(4))
}

func createCfgTemplate(name string) (string, error) {
	tempConfigTemplate := *bodyTemplate

	if name != "" {
		tempConfigTemplateName := name
		tempConfigTemplate.Name = &tempConfigTemplateName
	}

	inputCreate := &configuration_template.AdminCreateConfigurationTemplateV1Params{
		Body:      &tempConfigTemplate,
		Namespace: integration.NamespaceTest,
	}
	created, errCreated := configService.AdminCreateConfigurationTemplateV1Short(inputCreate)
	if errCreated != nil {
		logrus.Fatal(errCreated.Error())

		return "", errCreated
	}

	return *created.Data.Name, nil
}

func deleteCfgTemplate(name string) error {
	inputDelete := &configuration_template.AdminDeleteConfigurationTemplateV1Params{
		Name:      name,
		Namespace: integration.NamespaceTest,
	}
	errDeleted := configService.AdminDeleteConfigurationTemplateV1Short(inputDelete)
	if errDeleted != nil {
		logrus.Fatal(errDeleted.Error())

		return errDeleted
	}

	return nil
}

func createPlayer2() string {
	Init()
	input := &users_v4.PublicCreateTestUserV4Params{
		Body:      createUserBody,
		Namespace: integration.NamespaceTest,
	}

	user, err := userV4Service.PublicCreateTestUserV4Short(input)
	if err != nil {
		logrus.Fatal(err.Error())

		return ""
	}
	logrus.Infof("userId: %v", *user.Data.UserID)

	// login
	oAuth20Service2 := &iam.OAuth20Service{
		Client:           iam.NewIamClient(auth.DefaultConfigRepositoryImpl()),
		ConfigRepository: auth.DefaultConfigRepositoryImpl(),
		TokenRepository:  tokenRepository2ndPlayer,
	}
	errLogin := oAuth20Service2.Login(*user.Data.EmailAddress, pwd)
	if errLogin != nil {
		logrus.Error("failed login. ", errLogin.Error())

		return ""
	}
	token, _ := oAuth20Service2.TokenRepository.GetToken()
	logrus.Infof("2nd token %s", *token.AccessToken)

	return *user.Data.UserID
}

func deletePlayer(userId string) {
	inputDelete := &users.AdminDeleteUserInformationV3Params{
		Namespace: integration.NamespaceTest,
		UserID:    userId,
	}

	errDelete := userService.AdminDeleteUserInformationV3Short(inputDelete)
	if errDelete != nil {
		logrus.Fatal(errDelete.Error())
	}
	logrus.Infof("successfully clean/delete userId player2: %v", userId)
}
