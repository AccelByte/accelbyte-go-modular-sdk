// Copyright (c) 2022 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package integration_test

import (
	"strings"
	"testing"

	"github.com/sirupsen/logrus"
	"github.com/stretchr/testify/assert"

	match2 "github.com/AccelByte/accelbyte-go-modular-sdk/match2-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/match2-sdk/pkg/match2client/match_functions"
	"github.com/AccelByte/accelbyte-go-modular-sdk/match2-sdk/pkg/match2client/match_pools"
	"github.com/AccelByte/accelbyte-go-modular-sdk/match2-sdk/pkg/match2client/match_tickets"
	"github.com/AccelByte/accelbyte-go-modular-sdk/match2-sdk/pkg/match2client/rule_sets"
	"github.com/AccelByte/accelbyte-go-modular-sdk/match2-sdk/pkg/match2clientmodels"
	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/tests/integration"
	"github.com/AccelByte/accelbyte-go-modular-sdk/session-sdk/pkg/sessionclient/party"
	"github.com/AccelByte/accelbyte-go-modular-sdk/session-sdk/pkg/sessionclientmodels"
)

var (
	ruleSetsService = &match2.RuleSetsService{
		Client:          match2.NewMatch2Client(configRepo),
		TokenRepository: tokenRepository,
	}
	matchPoolService = &match2.MatchPoolsService{
		Client:          match2.NewMatch2Client(configRepo),
		TokenRepository: tokenRepository,
	}
	matchTicketService = &match2.MatchTicketsService{
		Client:          match2.NewMatch2Client(configRepo),
		TokenRepository: tokenRepository,
	}
	matchFunctionService = &match2.MatchFunctionsService{
		Client:          match2.NewMatch2Client(configRepo),
		TokenRepository: tokenRepository,
	}
	ruleSetName       = "go_sdk_ruleset_" + RandStringBytes(4)
	poolName          = "go_sdk_pool_" + RandStringBytes(4)
	matchFunction     = "basic"
	expirationSeconds = int32(600)
	data              = "{\"alliance\":{\"minNumber\":\"2\",\"maxNumber\":\"10\",\"playerMinNumber\":\"2\",\"playerMaxNumber\":\"4\"},\"matchingRules\":[{\"attribute\":\"\",\"criteria\":\"distance\",\"reference\":\"\"}],\"flexingRules\":[{\"duration\":\"600\",\"attribute\":\"\",\"criteria\":\"distance\",\"reference\":\"\"}],\"match_options\":{\"options\":[{\"name\":\"\",\"type\":\"any\"}]},\"alliance_flexing_rule\":[{\"duration\":\"600\",\"min_number\":\"\",\"max_number\":\"\",\"player_min_number\":\"\",\"player_max_number\":\"\"}]}"
	bodyMatchPool     = &match2clientmodels.APIMatchPool{
		BackfillTicketExpirationSeconds: &expirationSeconds,
		MatchFunction:                   &matchFunction,
		Name:                            &poolName,
		RuleSet:                         &ruleSetName,
		SessionTemplate:                 &cfgTemplateName,
		TicketExpirationSeconds:         &expirationSeconds,
	}
)

func TestIntegrationMatchPool(t *testing.T) {
	if strings.Contains(configRepository.BaseUrl, "gamingservices.accelbyte.io") {
		t.Skip("temporarily disabled in AGS Starter due to issue in session service")
	}

	// Login User - Arrange
	Init()

	// CASE Create a match rule set
	inputCreateRule := &rule_sets.CreateRuleSetParams{
		Body: &match2clientmodels.APIRuleSetPayload{
			Data: &data,
			Name: &ruleSetName,
		},
		Namespace: integration.NamespaceTest,
	}
	errCreateRule := ruleSetsService.CreateRuleSetShort(inputCreateRule)
	if errCreateRule != nil {
		assert.FailNow(t, errCreateRule.Error())

		return
	}
	// ESAC

	// Assert
	assert.Nil(t, errCreateRule, "err should be nil")

	// CASE Create a match pool
	inputCreatePool := &match_pools.CreateMatchPoolParams{
		Body:      bodyMatchPool,
		Namespace: integration.NamespaceTest,
	}
	errCreated := matchPoolService.CreateMatchPoolShort(inputCreatePool)
	if errCreated != nil {
		assert.FailNow(t, errCreated.Error())

		return
	}
	// ESAC

	// Assert
	assert.Nil(t, errCreated, "err should be nil")

	// CASE List match pools
	inputCreate := &match_pools.MatchPoolListParams{
		Limit:     &limit,
		Namespace: integration.NamespaceTest,
		Offset:    &offset,
	}
	getList, errGetList := matchPoolService.MatchPoolListShort(inputCreate)
	if errGetList != nil {
		assert.FailNow(t, errGetList.Error())

		return
	}
	// ESAC

	// Assert
	assert.Nil(t, errGetList, "err should be nil")
	assert.NotNil(t, getList, "should not be nil")

	player2Id := createPlayer2()
	defer deletePlayer(player2Id)

	sessionID := getSessionID(t, player2Id)

	// CASE User create a match ticket
	inputCreateTicket := &match_tickets.CreateMatchTicketParams{
		Body: &match2clientmodels.APIMatchTicketRequest{
			MatchPool: &poolName,
			SessionID: sessionID,
		},
		Namespace: integration.NamespaceTest,
	}
	createdTicket, errCreatedTicket := matchTicketService.CreateMatchTicketShort(inputCreateTicket)
	if errCreatedTicket != nil {
		assert.FailNow(t, errCreatedTicket.Error())

		return
	}
	// ESAC

	// Assert
	assert.Nil(t, errCreatedTicket, "err should be nil")
	assert.NotNil(t, createdTicket, "should not be nil")

	// CASE Delete a match ticket
	inputDeleteTicket := &match_tickets.DeleteMatchTicketParams{
		Namespace: integration.NamespaceTest,
		Ticketid:  *createdTicket.MatchTicketID,
	}
	errDeletedTicket := matchTicketService.DeleteMatchTicketShort(inputDeleteTicket)
	if errDeletedTicket != nil {
		assert.FailNow(t, errDeletedTicket.Error())

		return
	}
	// ESAC

	// Assert
	assert.Nil(t, errDeletedTicket, "err should be nil")

	var matchRuleSet string
	for _, match := range getList.Data {
		poolName = *match.Name
		matchRuleSet = *match.RuleSet
	}

	// CASE Delete a match pool
	inputDeletePool := &match_pools.DeleteMatchPoolParams{
		Namespace: integration.NamespaceTest,
		Pool:      poolName,
	}
	errDeletedPool := matchPoolService.DeleteMatchPoolShort(inputDeletePool)
	if errDeletedPool != nil {
		assert.FailNow(t, errDeletedPool.Error())

		return
	}
	// ESAC

	// Assert
	assert.Nil(t, errDeletedPool, "err should be nil")

	// CASE Delete a match rule set
	inputDeleteRule := &rule_sets.DeleteRuleSetParams{
		Namespace: integration.NamespaceTest,
		Ruleset:   matchRuleSet,
	}
	errDeletedRule := ruleSetsService.DeleteRuleSetShort(inputDeleteRule)
	if errDeletedRule != nil {
		assert.FailNow(t, errDeletedRule.Error())

		return
	}
	// ESAC

	// Assert
	assert.Nil(t, errDeletedRule, "err should be nil")
}

func TestIntegrationMatchFunction(t *testing.T) {
	// Login User - Arrange
	Init()

	// CASE List match functions
	inputCreate := &match_functions.MatchFunctionListParams{
		Limit:     &limit,
		Namespace: integration.NamespaceTest,
		Offset:    &offset,
	}
	getList, errGetList := matchFunctionService.MatchFunctionListShort(inputCreate)
	if errGetList != nil {
		assert.FailNow(t, errGetList.Error())

		return
	}
	// ESAC

	// Assert
	assert.Nil(t, errGetList, "err should be nil")
	assert.NotNil(t, getList, "should not be nil")
}

func getSessionID(t *testing.T, memberID string) string {
	t.Helper()

	cfgName, _ := createCfgTemplate()
	defer func(name string) {
		err := deleteCfgTemplate(name)
		if err != nil {
			assert.FailNow(t, err.Error())
		}
	}(cfgName)

	member := &sessionclientmodels.ApimodelsRequestMember{ID: &memberID}
	bodyParty := &sessionclientmodels.ApimodelsCreatePartyRequest{
		ConfigurationName: &cfgTemplateName,
		InactiveTimeout:   &inactiveTimeout,
		InviteTimeout:     &inviteTimeout,
		Joinability:       &joinability,
		MaxPlayers:        &maxNumber,
		Members:           []*sessionclientmodels.ApimodelsRequestMember{member},
		MinPlayers:        &minNumber,
		Type:              &cfgTemplateType,
	}
	created, errCreated := partyService.PublicCreatePartyShort(&party.PublicCreatePartyParams{
		Body:      bodyParty,
		Namespace: integration.NamespaceTest,
	})
	if errCreated != nil {
		logrus.Error(errCreated.Error())
		t.Skip("skip due to UserIsNotInSession error")

		return ""
	}

	return *created.ID
}
