# Common Use Cases

## Achievement

Source: [achievement_test.go](../services-api/pkg/tests/integration/achievement_test.go)

### Create an achievement

```go
inputCreate := &achievements.AdminCreateNewAchievementParams{
	Body:      bodyAchievement,
	Namespace: integration.NamespaceTest,
}

created, errCreate := achievementsService.AdminCreateNewAchievementShort(inputCreate)
if errCreate != nil {
	assert.FailNow(t, errCreate.Error())
}
t.Logf("AchievementCode: %v created", *created.Data.AchievementCode)
```

### Retrieve an achievement by its code

```go
inputGet := &achievements.AdminGetAchievementParams{
	AchievementCode: achievementCode,
	Namespace:       integration.NamespaceTest,
}

get, errGet := achievementsService.AdminGetAchievementShort(inputGet)
```

### Update an achievement

```go
inputUpdate := &achievements.AdminUpdateAchievementParams{
	AchievementCode: achievementCode,
	Body:            bodyAchievementUpdate,
	Namespace:       integration.NamespaceTest,
}

updated, errUpdate := achievementsService.AdminUpdateAchievementShort(inputUpdate)
```

### Export an achievement

```go
file, errFile := os.Create("file")
if errFile != nil {
	t.Errorf("Failed to create file: %v", errFile)
}
defer file.Close()

logrus.Infof("Successfully created file: %v", file.Name())

writer := bytes.NewBuffer(nil)

inputExport := &achievements.ExportAchievementsParams{
	Namespace: integration.NamespaceTest,
}
export, errExport := achievementsService.ExportAchievementsShort(inputExport, writer)
```

### Get all achievements

```go
inputGetAll := &achievements.AdminListAchievementsParams{
	Limit:     nil,
	Namespace: integration.NamespaceTest,
	Offset:    nil,
	SortBy:    nil,
}

getAll, errGetAll := achievementsService.AdminListAchievementsShort(inputGetAll)
```

### Delete an achievement

```go
inputDelete := &achievements.AdminDeleteAchievementParams{
	AchievementCode: achievementCode,
	Namespace:       integration.NamespaceTest,
}

errDelete := achievementsService.AdminDeleteAchievementShort(inputDelete)
```
## AMS

Source: [ams_test.go](../services-api/pkg/tests/integration/ams_test.go)

### Image List

```go
inputGet := &images.ImageListParams{
	Namespace: integration.NamespaceTest,
}
get, errGet := imagesService.ImageListShort(inputGet)
if errGet != nil {
	assert.FailNow(t, errGet.Error())

	return
}
```

### Create Fleet

```go
inputCreate := &fleets.FleetCreateParams{
	Body: &amsclientmodels.APIFleetParameters{
		Active:    &defaultBool,
		ClaimKeys: claimKeys,
		ImageDeploymentProfile: &amsclientmodels.APIImageDeploymentProfile{
			ImageID: &imageId,
		},
		Name:    &fleetName,
		Regions: fleetRegions,
	},
	Namespace: integration.NamespaceTest,
}
created, errCreated := fleetService.FleetCreateShort(inputCreate)
if errCreated != nil {
	t.Skip("not using the real image Id")
	assert.FailNow(t, errCreated.Error())

	return
}
```

### Get Fleet

```go
inputGet := &fleets.FleetGetParams{
	FleetID:   *created.Data.ID,
	Namespace: integration.NamespaceTest,
}
get, errGet := fleetService.FleetGetShort(inputGet)
if errGet != nil {
	assert.FailNow(t, errGet.Error())

	return
}
```

### Update Fleet

```go
inputUpdate := &fleets.FleetUpdateParams{
	Body: &amsclientmodels.APIFleetParameters{
		Active:    &defaultBool,
		ClaimKeys: claimKeys,
		ImageDeploymentProfile: &amsclientmodels.APIImageDeploymentProfile{
			ImageID: &imageId,
		},
		Name:    &fleetNameUpdate,
		Regions: fleetRegions,
	},
	FleetID:   *created.Data.ID,
	Namespace: integration.NamespaceTest,
}
errUpdated := fleetService.FleetUpdateShort(inputUpdate)
if errUpdated != nil {
	assert.FailNow(t, errUpdated.Error())

	return
}
```

### Delete Fleet

```go
inputDelete := &fleets.FleetDeleteParams{
	FleetID:   *created.Data.ID,
	Namespace: integration.NamespaceTest,
}
errDelete := fleetService.FleetDeleteShort(inputDelete)
if errDelete != nil {
	assert.FailNow(t, errDelete.Error())

	return
}
```

### Info regions

```go
inputInfo := &a_m_s_info.InfoRegionsParams{
	Namespace: integration.NamespaceTest,
}
info, errInfo := infoService.InfoRegionsShort(inputInfo)
if errInfo != nil {
	assert.FailNow(t, errInfo.Error())

	return
}
```

### Info supported instances

```go
inputInfo := &a_m_s_info.InfoSupportedInstancesParams{
	Namespace: integration.NamespaceTest,
}
info, errInfo := infoService.InfoSupportedInstancesShort(inputInfo)
if errInfo != nil {
	assert.FailNow(t, errInfo.Error())

	return
}
```
## Basic

Source: [basic_test.go](../services-api/pkg/tests/integration/basic_test.go)

### Create a profile

```go
inputCreate := &user_profile.CreateMyProfileParams{
	Body:      bodyBasic,
	Namespace: integration.NamespaceTest,
}

created, errCreate := userProfileService.CreateMyProfileShort(inputCreate)
if errCreate != nil {
	assert.FailNow(t, errCreate.Error())
}
t.Logf("Profile: %v created", created.Data.UserID)
```

### Get a profile

```go
inputGet := &user_profile.PublicGetUserProfileInfoParams{
	Namespace: integration.NamespaceTest,
	UserID:    created.Data.UserID,
}

get, errGet := userProfileService.PublicGetUserProfileInfoShort(inputGet)
if errGet != nil {
	assert.FailNow(t, errGet.Error())
}
```

### Update a profile

```go
inputUpdate := &user_profile.PublicUpdateUserProfileParams{
	Body:      bodyBasicUpdate,
	Namespace: integration.NamespaceTest,
	UserID:    created.Data.UserID,
}

updated, errUpdate := userProfileService.PublicUpdateUserProfileShort(inputUpdate)
if errUpdate != nil {
	assert.FailNow(t, errUpdate.Error())
}
```

### Delete a profile

```go
inputDelete := &user_profile.DeleteUserProfileParams{
	Namespace: integration.NamespaceTest,
	UserID:    created.Data.UserID,
}

deleted, errDelete := userProfileService.DeleteUserProfileShort(inputDelete)
if errDelete != nil {
	assert.FailNow(t, errDelete.Error())
}
```
## Challenge

Source: [challenge_test.go](../services-api/pkg/tests/integration/challenge_test.go)

### Create a new challenge

```go
challengeCreateParams := &challenge_configuration.AdminCreateChallengeParams{
	Namespace: integration.NamespaceTest,
	Body:      bodyNewChallenge,
}

created, errCreate := challengeConfigSvc.AdminCreateChallengeShort(challengeCreateParams)
if errCreate != nil {
	assert.FailNow(t, errCreate.Error())
}
t.Logf("Challenge: %v created", created.Data.Name)
```

### Get challenge

```go
getParam := &challenge_configuration.AdminGetChallengeParams{
	Namespace:     integration.NamespaceTest,
	ChallengeCode: challengeCode,
}

challengeData, errGet := challengeConfigSvc.AdminGetChallengeShort(getParam)
if errGet != nil {
	assert.FailNow(t, errGet.Error())
}
t.Logf("Challenge: %v", challengeData.Data.Name)
```

### Update a challenge

```go
updateParam := &challenge_configuration.AdminUpdateChallengeParams{
	Namespace:     integration.NamespaceTest,
	ChallengeCode: challengeCode,
	Body:          bodyUpdateChallenge,
}

challengeUpdate, errUpdate := challengeConfigSvc.AdminUpdateChallengeShort(updateParam)
if errUpdate != nil {
	assert.FailNow(t, errUpdate.Error())
}
t.Logf("Challenge: %v updated", challengeData.Data.Name)
```

### Create a new goal

```go
goalCreateParams := &goal_configuration.AdminCreateGoalParams{
	Namespace:     integration.NamespaceTest,
	ChallengeCode: challengeCode,
	Body:          bodyNewGoal,
}

newGoal, errCreate := goalConfigSvc.AdminCreateGoalShort(goalCreateParams)
if errCreate != nil {
	assert.FailNow(t, errCreate.Error())
}
t.Logf("Goal: %v created", newGoal.Data.Name)
```

### Delete a goal

```go
goalDelParams := &goal_configuration.AdminDeleteGoalParams{
	Namespace:     integration.NamespaceTest,
	ChallengeCode: challengeCode,
	Code:          goalCode,
}

errDelete := goalConfigSvc.AdminDeleteGoalShort(goalDelParams)
if errDelete != nil {
	assert.FailNow(t, errDelete.Error())
}
```

### Delete a challenge

```go
delParams := &challenge_configuration.AdminDeleteChallengeParams{
	Namespace:     integration.NamespaceTest,
	ChallengeCode: challengeCode,
}

errDelete = challengeConfigSvc.AdminDeleteChallengeShort(delParams)
if errDelete != nil {
	assert.FailNow(t, errDelete.Error())
}
```

### Get user rewards

```go
getParam := &player_reward.PublicGetUserRewardsParams{
	Namespace: integration.NamespaceTest,
}

rewards, errGet := playerRewardSvc.PublicGetUserRewardsShort(getParam)
if errGet != nil {
	assert.FailNow(t, errGet.Error())
} else {
	for _, reward := range rewards.Data.Data {
		t.Logf("Reward for userId: %v, goal code %v", *reward.UserID, *reward.GoalCode)
	}
}
```
## Chat

Source: [chat_test.go](../services-api/pkg/tests/integration/chat_test.go)

### Admin Profanity Create

```go
create, errCreate := profanityOperationsService.AdminProfanityCreateShort(&profanity.AdminProfanityCreateParams{
	Body: &chatclientmodels.ModelsDictionaryInsertRequest{
		Word:     &profanityWord,
		WordType: &profanityWordType,
	},
	Namespace: integration.NamespaceTest,
})
```

### Admin Profanity Get

```go
get, errGet := profanityOperationsService.AdminProfanityQueryShort(&profanity.AdminProfanityQueryParams{
	Namespace:       integration.NamespaceTest,
	IncludeChildren: &profanityQueryIncludeChildren,
	WordType:        &profanityWordType,
	StartWith:       &profanityWord,
})
```

### Admin Profanity Update

```go
update, errUpdate := profanityOperationsService.AdminProfanityUpdateShort(&profanity.AdminProfanityUpdateParams{
	Body: &chatclientmodels.ModelsDictionaryUpdateRequest{
		Word:     &profanityWord,
		WordType: &profanityWordType,
	},
	Namespace: integration.NamespaceTest,
	ID:        *create.Data.ID,
})
```

### Admin Profanity Delete

```go
errDelete := profanityOperationsService.AdminProfanityDeleteShort(&profanity.AdminProfanityDeleteParams{
	Namespace: integration.NamespaceTest,
	ID:        *create.ID,
})
```

### Save Inbox Message

```go
save, errSave := inboxOperationsService.AdminSaveInboxMessageShort(&inbox.AdminSaveInboxMessageParams{
	Body: &chatclientmodels.ModelsSaveInboxMessageRequest{
		ExpiredAt: &expiredAt,
		Message:   &dataMessage,
		Scope:     &scopeChat,
		Status:    &statusChat,
		UserIds:   userIds,
	},
	Namespace: integration.NamespaceTest,
})
```

### Send Inbox Message

```go
create, errCreate := inboxOperationsService.AdminSendInboxMessageShort(&inbox.AdminSendInboxMessageParams{
	Body:      dataMessage,
	MessageID: *save.Data.ID,
	Namespace: integration.NamespaceTest,
})
```

### Admin Get Inbox Messages

```go
get, errGet := inboxOperationsService.AdminGetInboxMessagesShort(&inbox.AdminGetInboxMessagesParams{
	Namespace: integration.NamespaceTest,
})
```

### Admin Update Inbox Message

```go
errUpdate := inboxOperationsService.AdminUpdateInboxMessageShort(&inbox.AdminUpdateInboxMessageParams{
	Body: &chatclientmodels.ModelsUpdateInboxMessageRequest{
		ExpiredAt: &expiredAt,
		Message:   &dataMessage,
		Scope:     &scopeChat,
		UserIds:   userIds,
	},
	Namespace: integration.NamespaceTest,
	MessageID: *save.Data.ID,
})
```

### Admin Delete Inbox Message

```go
errDelete := inboxOperationsService.AdminDeleteInboxMessageShort(&inbox.AdminDeleteInboxMessageParams{
	Namespace: integration.NamespaceTest,
	MessageID: *save.ID,
	Force:     &force,
})
```

### Add chat inbox category

```go
add, errAdd := inboxOperationsService.AdminAddInboxCategoryShort(&inbox.AdminAddInboxCategoryParams{
	Body: &chatclientmodels.ModelsAddInboxCategoryRequest{
		Name:      &categoryName,
		ExpiresIn: &expiresIn,
	},
	Namespace: integration.NamespaceTest,
})
```

### Get chat inbox category

```go
get, errGet := inboxOperationsService.AdminGetInboxCategoriesShort(&inbox.AdminGetInboxCategoriesParams{
	Namespace: integration.NamespaceTest,
})
```

### Update chat inbox category

```go
errUpdate := inboxOperationsService.AdminUpdateInboxCategoryShort(&inbox.AdminUpdateInboxCategoryParams{
	Body: &chatclientmodels.ModelsUpdateInboxCategoryRequest{
		ExpiresIn: &expiresInUpdate,
	},
	Category:  categoryName,
	Namespace: integration.NamespaceTest,
})
```

### Delete chat inbox category

```go
errDelete := inboxOperationsService.AdminDeleteInboxCategoryShort(&inbox.AdminDeleteInboxCategoryParams{
	Category:  categoryName,
	Namespace: integration.NamespaceTest,
})
```
## CloudSave

Source: [cloudsave_test.go](../services-api/pkg/tests/integration/cloudsave_test.go)

### Create a game record

```go
input := &public_game_record.PostGameRecordHandlerV1Params{
	Body:      map[string]interface{}{"foo": "bar"},
	Key:       key,
	Namespace: integration.NamespaceTest,
}

ok, err := publicGameRecordService.PostGameRecordHandlerV1Short(input)
if err != nil {
	assert.FailNow(t, err.Error())
}
```

### Delete a game record

```go
input := &public_game_record.DeleteGameRecordHandlerV1Params{
	Key:       key,
	Namespace: integration.NamespaceTest,
}

err := publicGameRecordService.DeleteGameRecordHandlerV1Short(input)
if err != nil {
	assert.FailNow(t, err.Error())
}
```

### Get a game record

```go
inputRecord := &public_game_record.GetGameRecordHandlerV1Params{
	Key:       key,
	Namespace: integration.NamespaceTest,
}

ok, errOk := publicGameRecordService.GetGameRecordHandlerV1Short(inputRecord)
if errOk != nil {
	assert.FailNow(t, errOk.Error())
}
```

### Update a game record

```go
input := &public_game_record.PutGameRecordHandlerV1Params{
	Body:      map[string]interface{}{"foo": "bar"},
	Key:       key,
	Namespace: integration.NamespaceTest,
}

ok, err := publicGameRecordService.PutGameRecordHandlerV1Short(input)
if err != nil {
	assert.FailNow(t, err.Error())
}
```

### Create a player record

```go
input := &public_player_record.PostPlayerPublicRecordHandlerV1Params{
	Body:      map[string]interface{}{"foo": "bar"},
	Key:       key,
	Namespace: integration.NamespaceTest,
	UserID:    userID,
}
ok, err := publicPlayerRecordService.PostPlayerPublicRecordHandlerV1Short(input)
if err != nil {
	assert.FailNow(t, err.Error())
}
```

### Get a player record

```go
inputRecord := &public_player_record.GetPlayerPublicRecordHandlerV1Params{
	Key:       key,
	Namespace: integration.NamespaceTest,
	UserID:    userID,
}

okGet, errGet := publicPlayerRecordService.GetPlayerPublicRecordHandlerV1Short(inputRecord)
if errGet != nil {
	assert.FailNow(t, errGet.Error())
}
```

### Put a player record

```go
keyUpdate := key + "-update"
inputUpdate := &public_player_record.PutPlayerPublicRecordHandlerV1Params{
	Body:      map[string]interface{}{"foo": "bar"},
	Key:       keyUpdate,
	Namespace: integration.NamespaceTest,
	UserID:    userID,
}

okUpdate, errUpdate := publicPlayerRecordService.PutPlayerPublicRecordHandlerV1Short(inputUpdate)
if errUpdate != nil {
	assert.FailNow(t, errUpdate.Error())
}
```

### Delete a player record

```go
inputDelete := &public_player_record.DeletePlayerRecordHandlerV1Params{
	Key:       keyUpdate,
	Namespace: integration.NamespaceTest,
	UserID:    userID,
}

errDelete := publicPlayerRecordService.DeletePlayerRecordHandlerV1Short(inputDelete)
if errDelete != nil {
	assert.FailNow(t, errDelete.Error())
}
```
## CSM

Source: [csm_test.go](../services-api/pkg/tests/integration/csm_test.go)

### Create extend app

```go
input := &app_v2.CreateAppV2Params{
	Namespace: namespace,
	App:       extendAppName,
	Body: &csmclientmodels.ApimodelCreateAppV2Request{
		CPU: &csmclientmodels.ApimodelCPURequest{
			RequestCPU: &cpu,
		},
		Description: "test integration create extend app for extend sdk",
		Memory: &csmclientmodels.ApimodelMemoryRequest{
			RequestMemory: 100,
		},
		Scenario: &scenario,
	},
}
ok, err := csmAppService.CreateAppV2Short(input)
```

### Get extend app detail

```go
app, err := csmAppService.GetAppV2Short(&app_v2.GetAppV2Params{
	Namespace: namespace,
	App:       extendAppName,
})
```

### Save extend app secret

```go
input := &configuration_v2.SaveSecretV2Params{
	Namespace: namespace,
	App:       extendAppName,
	Body: &csmclientmodels.ApimodelSaveSecretConfigurationV2Request{
		ConfigName: &secretName,
		Value:      &secretValue,
		Source:     &configSource,
	},
}

secret, err := csmConfigService.SaveSecretV2Short(input)
```

### Get extend app secrets list

```go
secrets, err := csmConfigService.GetListOfSecretsV2Short(&configuration_v2.GetListOfSecretsV2Params{
	Namespace: namespace,
	App:       extendAppName,
})
```

### Update extend app secret

```go
updatedSecret, err := csmConfigService.UpdateSecretV2Short(&configuration_v2.UpdateSecretV2Params{
	Namespace: namespace,
	App:       extendAppName,
	ConfigID:  *secret.Data.ConfigID,
	Body: &csmclientmodels.ApimodelUpdateSecretConfigurationV2Request{
		Value: &updatedSecretValue,
	},
})
```

### Save extend app environment variable

```go
input := &configuration_v2.SaveVariableV2Params{
	Namespace: namespace,
	App:       extendAppName,
	Body: &csmclientmodels.ApimodelSaveConfigurationV2Request{
		ApplyMask:  true,
		ConfigName: &envVarName,
		Value:      &envVarValue,
		Source:     &configSource,
	},
}

envVar, err := csmConfigService.SaveVariableV2Short(input)
```

### Get extend app environment variables list

```go
envVars, err := csmConfigService.GetListOfVariablesV2Short(&configuration_v2.GetListOfVariablesV2Params{
	Namespace: namespace,
	App:       extendAppName,
})
```

### Update extend app environment variable

```go
updatedVariable, err := csmConfigService.UpdateVariableV2Short(&configuration_v2.UpdateVariableV2Params{
	Namespace: namespace,
	App:       extendAppName,
	ConfigID:  *envVar.Data.ConfigID,
	Body: &csmclientmodels.ApimodelUpdateConfigurationV2Request{
		ApplyMask: true,
		Value:     &updatedEnvVarValue,
	},
})
```

### Delete extend app's IAM Client

```go
err = clientService.AdminDeleteClientV3Short(&clients.AdminDeleteClientV3Params{
	Namespace: namespace,
	ClientID:  appClientID,
})
```

### Delete extend app secret

```go
err = csmConfigService.DeleteSecretV2Short(&configuration_v2.DeleteSecretV2Params{
	Namespace: namespace,
	App:       extendAppName,
	ConfigID:  secretConfigID,
})
```

### Delete extend app environment variable

```go
err = csmConfigService.DeleteVariableV2Short(&configuration_v2.DeleteVariableV2Params{
	Namespace: namespace,
	App:       extendAppName,
	ConfigID:  envVarConfigID,
})
```

### Delete extend app

```go
err = csmAppService.DeleteAppV2Short(&app_v2.DeleteAppV2Params{
	Namespace: namespace,
	App:       extendAppName,
	Forced:    &forced,
})
```
## GameTelemetry

Source: [gametelemetry_test.go](../services-api/pkg/tests/integration/gametelemetry_test.go)

### Protected Save Events

```go
telemetryBodyArray = append(telemetryBodyArray, telemetryBody)
input := &gametelemetry_operations.ProtectedSaveEventsGameTelemetryV1ProtectedEventsPostParams{
	Body: telemetryBodyArray,
}

err := gameTelemetryOperationsService.ProtectedSaveEventsGameTelemetryV1ProtectedEventsPostShort(input)
if err != nil {
	assert.FailNow(t, err.Error())
}
```
## GDPR

Source: [gdpr_test.go](../services-api/pkg/tests/integration/gdpr_test.go)

### Create admin email configuration

```go
body = append(body, email)
input := &data_retrieval.PublicGetUserPersonalDataRequestsParams{
	Namespace: integration.NamespaceTest,
	UserID:    GetUserID(),
}

get, err := gdprRetrievalService.PublicGetUserPersonalDataRequestsShort(input)
```

### Create admin email configuration

```go
body = append(body, email)
input := &data_retrieval.PublicGetUserPersonalDataRequestsParams{
	Namespace: integration.NamespaceTest,
	UserID:    GetUserID(),
}

get, err := gdprRetrievalService.PublicGetUserPersonalDataRequestsShort(input)
```

### Get admin email addresses configuration

```go
input := &configuration.GetAdminEmailConfigurationParams{
	Namespace: integration.NamespaceTest,
}

ok, err := gdprConfigurationService.GetAdminEmailConfigurationShort(input)
```

### Update admin email configuration

```go
body = append(body, email)
input := &configuration.UpdateAdminEmailConfigurationParams{
	Body:      body,
	Namespace: integration.NamespaceTest,
}

err := gdprConfigurationService.UpdateAdminEmailConfigurationShort(input)
if err != nil {
	assert.FailNow(t, err.Error())
}
```

### Delete admin email configuration

```go
emails = append(emails, email)
input := &configuration.DeleteAdminEmailConfigurationParams{
	Emails:    emails,
	Namespace: integration.NamespaceTest,
}

err := gdprConfigurationService.DeleteAdminEmailConfigurationShort(input)
```
## Group

Source: [group_test.go](../services-api/pkg/tests/integration/group_test.go)

### Create a group configuration admin

```go
inputCreate := &configuration.CreateGroupConfigurationAdminV1Params{
	Body: &groupclientmodels.ModelsCreateGroupConfigurationRequestV1{
		AllowMultiple:     &allowMultiple,
		ConfigurationCode: &configurationCode,
		Description:       &groupDescription,
		GlobalRules:       globalRules,
		GroupAdminRoleID:  &groupAdminRoleId,
		GroupMaxMember:    &groupMaxMember,
		GroupMemberRoleID: &groupMemberRoleId,
		Name:              &groupName,
	},
	Namespace: integration.NamespaceTest,
}

created, errCreate := configurationService.CreateGroupConfigurationAdminV1Short(inputCreate)
if errCreate != nil {
	assert.FailNow(t, errCreate.Error())
} else {
	groupConfigName := *created.Data.Name
	t.Logf("GroupConfig: %v created", groupConfigName)
}
```

### Create a group

```go
// needs to use a token user who are not already joined a group
inputCreate := &group_.CreateNewGroupPublicV1Params{
	Body:      bodyGroup,
	Namespace: integration.NamespaceTest,
}

created, errCreate := groupService.CreateNewGroupPublicV1Short(inputCreate)
if errCreate != nil {
	assert.FailNow(t, errCreate.Error())
}
groupID := *created.Data.GroupID
t.Logf("GroupID: %v created", groupID)
```

### Get a single group

```go
inputGet := &group_.GetSingleGroupPublicV1Params{
	GroupID:   groupID,
	Namespace: integration.NamespaceTest,
}

get, errGet := groupService.GetSingleGroupPublicV1Short(inputGet)
if errGet != nil {
	assert.FailNow(t, errGet.Error())
}
t.Logf("GroupID: %v get with name: %v", groupID, *created.Data.GroupName)
```

### Update a group

```go
inputUpdate := &group_.UpdatePatchSingleGroupPublicV1Params{
	Body:      bodyGroupUpdate,
	GroupID:   groupID,
	Namespace: integration.NamespaceTest,
}

updated, errUpdate := groupService.UpdatePatchSingleGroupPublicV1Short(inputUpdate)
if errUpdate != nil {
	assert.FailNow(t, errUpdate.Error())
}
```

### Delete a group

```go
inputDelete := &group_.DeleteGroupPublicV1Params{
	GroupID:   groupID,
	Namespace: integration.NamespaceTest,
}

errDelete := groupService.DeleteGroupPublicV1Short(inputDelete)
if errDelete != nil {
	assert.FailNow(t, errDelete.Error())
}
```
## IAM

Source: [iam_test.go](../services-api/pkg/tests/integration/iam_test.go)

### Authorize

```go
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
```

### User authentication

```go
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
```

### Token grant

```go
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
```

### Login

```go
err := oAuth20Service.Login(username, password)
if err != nil {
	assert.FailNow(t, err.Error())
}

getToken, errGetToken := oAuth20Service.TokenRepository.GetToken()
logrus.Infof("Bearer %v; UserId %v", *getToken.AccessToken, getToken.UserID)
```

### Login

```go
err := oAuth20Service.Login(username, password)
if err != nil {
	assert.FailNow(t, err.Error())
}

getToken, errGetToken := oAuth20Service.TokenRepository.GetToken()
logrus.Infof("Bearer %v; UserId %v", *getToken.AccessToken, getToken.UserID)
```

### Create a user

```go
input := &users_v4.PublicCreateTestUserV4Params{
	Body:      createUserBody,
	Namespace: integration.NamespaceTest,
}

user, err := userV4Service.PublicCreateTestUserV4Short(input)
if err != nil {
	assert.FailNow(t, err.Error())
}
t.Logf("userId: %v", *user.Data.UserID)
```

### Update a user

```go
inputUpdate := &users.AdminUpdateUserV3Params{
	Body:      updateUserBody,
	Namespace: integration.NamespaceTest,
	UserID:    *user.Data.UserID,
}

update, errUpdate := userService.AdminUpdateUserV3Short(inputUpdate)
if errUpdate != nil {
	assert.FailNow(t, errUpdate.Error())
}
```

### Get user by Id

```go
inputGet := &users.AdminGetUserByUserIDV3Params{
	Namespace: integration.NamespaceTest,
	UserID:    *user.Data.UserID,
}

get, errGet := userService.AdminGetUserByUserIDV3Short(inputGet)
if errGet != nil {
	assert.FailNow(t, errGet.Error())
}
```

### Delete a user

```go
inputDelete := &users.AdminDeleteUserInformationV3Params{
	Namespace: integration.NamespaceTest,
	UserID:    *user.Data.UserID,
}

errDelete := userService.AdminDeleteUserInformationV3Short(inputDelete)
if errDelete != nil {
	assert.FailNow(t, errDelete.Error())
}
```
## Leaderboard

Source: [leaderboard_test.go](../services-api/pkg/tests/integration/leaderboard_test.go)

### Create a leaderboard

```go
inputCreate := &leaderboard_configuration.CreateLeaderboardConfigurationAdminV1Params{
	Body:      bodyReq,
	Namespace: integration.NamespaceTest,
}

created, errCreate := leaderboardConfigurationService.CreateLeaderboardConfigurationAdminV1Short(inputCreate)
if errCreate != nil {
	assert.FailNow(t, errCreate.Error())
}
t.Logf("Leaderboard Code: %v created", *created.Data.LeaderboardCode)
```

### Get a single leaderboard

```go
inputGet := &leaderboard_configuration.GetLeaderboardConfigurationAdminV1Params{
	LeaderboardCode: leaderboardCode,
	Namespace:       integration.NamespaceTest,
}

get, errGet := leaderboardConfigurationService.GetLeaderboardConfigurationAdminV1Short(inputGet)
if errGet != nil {
	assert.FailNow(t, errGet.Error())
}
```

### Update a leaderboard

```go
inputUpdate := &leaderboard_configuration.UpdateLeaderboardConfigurationAdminV1Params{
	Body:            bodyReqUpdate,
	LeaderboardCode: leaderboardCode,
	Namespace:       integration.NamespaceTest,
}

updated, errUpdate := leaderboardConfigurationService.UpdateLeaderboardConfigurationAdminV1Short(inputUpdate)
if errUpdate != nil {
	assert.FailNow(t, errUpdate.Error())
}
```

### Delete a leaderboard

```go
inputLeaderboard := &leaderboard_configuration.DeleteLeaderboardConfigurationAdminV1Params{
	LeaderboardCode: leaderboardCode,
	Namespace:       integration.NamespaceTest,
}

errDelete := leaderboardConfigurationService.DeleteLeaderboardConfigurationAdminV1Short(inputLeaderboard)
if errDelete != nil {
	assert.FailNow(t, errDelete.Error())
}
```
## Legal

Source: [legal_test.go](../services-api/pkg/tests/integration/legal_test.go)

### Bulk accept policy versions

```go
bodyLegals = append(bodyLegals, bodyLegal)
inputLegal := &agreement.BulkAcceptVersionedPolicyParams{
	Body: bodyLegals,
}

ok, err := agreementService.BulkAcceptVersionedPolicyShort(inputLegal)
```

### Get agreements

```go
inputLegal := &agreement.RetrieveAgreementsPublicParams{}

ok, err := agreementService.RetrieveAgreementsPublicShort(inputLegal)
```

### Create policy

```go
bodyLegals = append(bodyLegals, bodyLegal)
inputLegal := &base_legal_policies.CreatePolicyParams{
	Body: &legalclientmodels.CreateBasePolicyRequest{
		AffectedClientIds: []string{"ID"},
		AffectedCountries: []string{},
		BasePolicyName:    "Go SDK Policy Test",
		Description:       "Go SDK Test",
		IsHidden:          false,
		IsHiddenPublic:    false,
		Namespace:         integration.NamespaceTest,
		Tags:              []string{"go", "sdk", "test"},
		TypeID:            "",
	},
}
ok, err := baseLegalService.CreatePolicyShort(inputLegal)
```

### Create policy version

```go
bodyLegals = append(bodyLegals, bodyLegal)
inputLegal := &policy_versions.CreatePolicyVersionParams{
	Body: &legalclientmodels.CreatePolicyVersionRequest{
		Description:    "Test Go SDK",
		DisplayVersion: "1",
		IsCommitted:    false,
	},
	PolicyID: policyID,
}
ok, err := policyVersionService.CreatePolicyVersionShort(inputLegal)
```

### Update marketing preference consent

```go
bodyLegals = append(bodyLegals, bodyLegal)
inputLegal := &agreement.ChangePreferenceConsentParams{
	Body:      bodyLegals,
	Namespace: integration.NamespaceTest,
	UserID:    GetUserID(),
}

err := agreementService.ChangePreferenceConsentShort(inputLegal)
```

### Retrieve Agreements Public

```go
input := &agreement.RetrieveAgreementsPublicParams{}

policiesExist, err := agreementService.RetrieveAgreementsPublicShort(input)
```
## Lobby

Source: [lobby_test.go](../services-api/pkg/tests/integration/lobby_test.go)

### Lobby get a notification

```go
err = notificationService.GetNotificationMessage()
```

### Lobby get offline notification

```go
err = notificationService.GetOfflineNotification()
```

### Lobby free form notification

```go
err := lobbyAdminSvc.FreeFormNotificationShort(&lobbyAdminNotification.FreeFormNotificationParams{
	Body: &lobbyclientmodels.ModelFreeFormNotificationRequest{
		Message: &message,
		Topic:   &topic,
	},
	Namespace: integration.NamespaceTest,
})
```

### Lobby party create request

```go
err = lobbyWebsocketSvc.PartyCreateRequest(&id)
```

### Lobby admin export config

```go
file, errFile := os.Create("file")
if errFile != nil {
	t.Errorf("Failed to create file: %v", errFile)
}
defer file.Close()

logrus.Infof("Successfully created file: %v", file.Name())

writer := bytes.NewBuffer(nil)

export, err := lobbyConfigSvc.AdminExportConfigV1Short(&config.AdminExportConfigV1Params{
	Namespace: integration.NamespaceTest,
}, writer)
```
## LoginQueue

Source: [loginqueue_test.go](../services-api/pkg/tests/integration/loginqueue_test.go)

### Admin Get Configuration

```go
get, errGet := loginQueueAdminV1Service.AdminGetConfigurationShort(&admin_v1.AdminGetConfigurationParams{
	Namespace: integration.NamespaceTest,
})
```

### Admin Update Configuration

```go
update, errUpdate := loginQueueAdminV1Service.AdminUpdateConfigurationShort(&admin_v1.AdminUpdateConfigurationParams{
	Body: &loginqueueclientmodels.ApimodelsConfigurationRequest{
		MaxLoginRate: &updateMaxLoginRate,
	},
	Namespace: integration.NamespaceTest,
})
```
## MatchmakingV2

Source: [match2_test.go](../services-api/pkg/tests/integration/match2_test.go)

### Create a match rule set

```go
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
```

### Create a match pool

```go
tempMatchPoolBody := *bodyMatchPool
tempMatchPoolBody.SessionTemplate = &cfgName

inputCreatePool := &match_pools.CreateMatchPoolParams{
	Body:      &tempMatchPoolBody,
	Namespace: integration.NamespaceTest,
}
errCreated := matchPoolService.CreateMatchPoolShort(inputCreatePool)
if errCreated != nil {
	assert.FailNow(t, errCreated.Error())

	return
}
```

### List match pools

```go
inputCreate := &match_pools.MatchPoolListParams{
	Limit:     &integration.Limit,
	Namespace: integration.NamespaceTest,
	Offset:    &offset,
}
getList, errGetList := matchPoolService.MatchPoolListShort(inputCreate)
if errGetList != nil {
	assert.FailNow(t, errGetList.Error())

	return
}
```

### User create a match ticket

```go
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
```

### Delete a match ticket

```go
inputDeleteTicket := &match_tickets.DeleteMatchTicketParams{
	Namespace: integration.NamespaceTest,
	Ticketid:  *createdTicket.Data.MatchTicketID,
}
errDeletedTicket := matchTicketService.DeleteMatchTicketShort(inputDeleteTicket)
if errDeletedTicket != nil {
	assert.FailNow(t, errDeletedTicket.Error())

	return
}
```

### Delete a match pool

```go
inputDeletePool := &match_pools.DeleteMatchPoolParams{
	Namespace: integration.NamespaceTest,
	Pool:      poolName,
}
errDeletedPool := matchPoolService.DeleteMatchPoolShort(inputDeletePool)
if errDeletedPool != nil {
	assert.FailNow(t, errDeletedPool.Error())

	return
}
```

### Delete a match rule set

```go
inputDeleteRule := &rule_sets.DeleteRuleSetParams{
	Namespace: integration.NamespaceTest,
	Ruleset:   matchRuleSet,
}
errDeletedRule := ruleSetsService.DeleteRuleSetShort(inputDeleteRule)
if errDeletedRule != nil {
	assert.FailNow(t, errDeletedRule.Error())

	return
}
```

### List match functions

```go
inputCreate := &match_functions.MatchFunctionListParams{
	Limit:     &integration.Limit,
	Namespace: integration.NamespaceTest,
	Offset:    &offset,
}
getList, errGetList := matchFunctionService.MatchFunctionListShort(inputCreate)
if errGetList != nil {
	assert.FailNow(t, errGetList.Error())

	return
}
```
## Platform

Source: [platform_test.go](../services-api/pkg/tests/integration/platform_test.go)

### Create a store

```go
inputCreate := &store.CreateStoreParams{
	Body:      bodyStore,
	Namespace: integration.NamespaceTest,
}

created, errCreate := storeService.CreateStoreShort(inputCreate)
if errCreate != nil {
	assert.FailNow(t, errCreate.Error())
}
storeID := *created.Data.StoreID
t.Logf("Store: %v created", storeID)
```

### Get a single store

```go
inputGet := &store.GetStoreParams{
	Namespace: integration.NamespaceTest,
	StoreID:   storeID,
}

get, errGet := storeService.GetStoreShort(inputGet)
if errGet != nil {
	assert.FailNow(t, errGet.Error())
}
```

### Update a store

```go
inputUpdate := &store.UpdateStoreParams{
	Body:      bodyStoreUpdate,
	Namespace: integration.NamespaceTest,
	StoreID:   storeID,
}

updated, errUpdate := storeService.UpdateStoreShort(inputUpdate)
if errUpdate != nil {
	assert.FailNow(t, errUpdate.Error())
}
```

### Delete a store

```go
inputDelete := &store.DeleteStoreParams{
	Namespace: integration.NamespaceTest,
	StoreID:   storeID,
}

deleted, errDelete := storeService.DeleteStoreShort(inputDelete)
if errDelete != nil {
	assert.FailNow(t, errDelete.Error())
}
```

### Store export

```go
inputExport := &store.ExportStore1Params{
	Namespace: integration.NamespaceTest,
	StoreID:   publishedStoreId,
}

okExport, errExport := storeService.ExportStore1Short(inputExport, writer)
if errExport != nil {
	t.Fatal(errExport.Error())
}
```

### Store export

```go
inputExport := &store.ExportStore1Params{
	Namespace: integration.NamespaceTest,
	StoreID:   publishedStoreId,
}

okExport, errExport := storeService.ExportStore1Short(inputExport, writer)
if errExport != nil {
	t.Fatal(errExport.Error())
}
```

### Reward export

```go
inputExport := &reward.ExportRewardsParams{
	Namespace: integration.NamespaceTest,
}

writer := bytes.NewBuffer(nil)
okExport, errExport := rewardService.ExportRewardsShort(inputExport, writer)
if errExport != nil {
	t.Fatal(errExport.Error())
}
```

### Reward import

```go
inputImport := &reward.ImportRewardsParams{
	File:            file,
	Namespace:       integration.NamespaceTest,
	ReplaceExisting: false,
}

errImport := rewardService.ImportRewardsShort(inputImport)
if errImport != nil {
	t.Fatal(errImport.Error())
}
```
## Reporting

Source: [reporting_test.go](../services-api/pkg/tests/integration/reporting_test.go)

### Create Reason

```go
inputCreateReason := &admin_reasons.CreateReasonParams{
	Body: &reportingclientmodels.RestapiCreateReasonRequest{
		Description: &reasonTitle,
		GroupIds:    []string{},
		Title:       &reasonTitle,
	},
	Namespace: namespace,
}

created, errCreate := adminReasonsService.CreateReasonShort(inputCreateReason)
```

### Delete Reason

```go
inputDeleteReason := &admin_reasons.DeleteReasonParams{
	Namespace: namespace,
	ReasonID:  reasonID,
}

errDelete := adminReasonsService.DeleteReasonShort(inputDeleteReason)
```

### Submit Report

```go
inputReport := &public_reports.SubmitReportParams{
	Body: &reportingclientmodels.RestapiSubmitReportRequest{
		AdditionalInfo:    integration.EmptyInterface,
		Category:          &categoryUGC,
		Comment:           reasonTitle,
		ExtensionCategory: categoryUGC,
		ObjectID:          utils.GenerateID(),
		ObjectType:        utils.GenerateID(),
		Reason:            &reasonTitle,
		UserID:            &userID,
	},
	Namespace: namespace,
}

created, errCreate := publicReportsService.SubmitReportShort(inputReport)
```
## SeasonPass

Source: [seasonpass_test.go](../services-api/pkg/tests/integration/seasonpass_test.go)

### Create/Get stores

```go
seasonStore, err := getStore()
if err != nil {
	t.Skip("failed to get a store")

	return
}
seasonStoreID := seasonStore.StoreID
```

### Get store item tier ID

```go
seasonItemTierID, err := getStoreTierItemID(*seasonStoreID)
if err != nil {
	t.Skip("failed to get store tier item id")

	return
}
```

### Create a season

```go
timeNow := time.Now()
seasonName := "GoServerSDKTestSeason"
seasonRequiredExp := int32(100)
seasonTierItemID := seasonItemTierID
seasonLocalization := make(map[string]seasonpassclientmodels.Localization)
seasonLocalization["en"] = seasonpassclientmodels.Localization{
	Title:       "English",
	Description: "English",
}
createSeason := seasonpassclientmodels.SeasonCreate{
	Name:               &seasonName,
	Start:              strfmt.DateTime(timeNow),
	End:                strfmt.DateTime(timeNow.AddDate(0, 0, 7)),
	DefaultRequiredExp: &seasonRequiredExp,
	DraftStoreID:       seasonStoreID,
	TierItemID:         seasonTierItemID,
	Localizations:      seasonLocalization,
}
inputCreateSeason := season.CreateSeasonParams{
	Namespace: namespace,
	Body:      &createSeason,
}

createSeasonOk, errCreateSeason := seasonService.CreateSeasonShort(&inputCreateSeason)
```

### UpdateSeason

```go
updatedSeasonName := "UpdatedGoServerSDKTestSeason"
updateSeason := seasonpassclientmodels.SeasonUpdate{
	Name: updatedSeasonName,
}
inputUpdateSeason := season.UpdateSeasonParams{
	Namespace: namespace,
	SeasonID:  seasonID,
	Body:      &updateSeason,
}

updateSeasonOk, errUpdateSeason := seasonService.UpdateSeasonShort(&inputUpdateSeason)
```

### Get season

```go
inputGetSeason := season.GetSeasonParams{
	Namespace: namespace,
	SeasonID:  seasonID,
}

getSeasonOk, errGetSeason := seasonService.GetSeasonShort(&inputGetSeason)
```

### Delete season

```go
inputDeleteSeason := season.DeleteSeasonParams{
	Namespace: namespace,
	SeasonID:  seasonID,
}

errDeleteSeason := seasonService.DeleteSeasonShort(&inputDeleteSeason)
```
## Session

Source: [session_test.go](../services-api/pkg/tests/integration/session_test.go)

### Create Configuration Template

```go
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
```

### Update Configuration Template

```go
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
```

### Delete Configuration Template

```go
inputDelete := &configuration_template.AdminDeleteConfigurationTemplateV1Params{
	Name:      *created.Data.Name,
	Namespace: integration.NamespaceTest,
}
errDeleted := configService.AdminDeleteConfigurationTemplateV1Short(inputDelete)
if errDeleted != nil {
	assert.FailNow(t, errDeleted.Error())

	return
}
```

### Create Game Session

```go
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
```

### Join a Game Session

```go
inputJoin := &game_session.JoinGameSessionParams{
	Namespace: integration.NamespaceTest,
	SessionID: *created.Data.ID,
}
joined, errJoined := gameSessionServiceFor2ndPlayer.JoinGameSessionShort(inputJoin)
if errJoined != nil {
	assert.FailNow(t, errJoined.Error())

	return
}
```

### Leave a Game Session

```go
inputLeave := &game_session.LeaveGameSessionParams{
	Namespace: integration.NamespaceTest,
	SessionID: *created.Data.ID,
}
errLeave := gameSessionService.LeaveGameSessionShort(inputLeave)
if errLeave != nil {
	assert.FailNow(t, errLeave.Error())

	return
}
```

### Delete Game Session

```go
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
```

### Query Game Session

```go
input := &game_session.PublicQueryGameSessionsByAttributesParams{
	Body:      nil,
	Namespace: integration.NamespaceTest,
}
query, err := gameSessionService.PublicQueryGameSessionsByAttributesShort(input)
if err != nil {
	assert.FailNow(t, err.Error())

	return
}
```

### Create a party

```go
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
```

### User join a party with code

```go
inputJoined := &partySession.PublicPartyJoinCodeParams{
	Body:      &sessionclientmodels.ApimodelsJoinByCodeRequest{Code: created.Data.Code},
	Namespace: integration.NamespaceTest,
}
joined, errJoined := partyServiceFor2ndPlayer.PublicPartyJoinCodeShort(inputJoined)
if errJoined != nil {
	assert.FailNow(t, errJoined.Error())

	return
}
```

### Get party detail

```go
inputGet := &partySession.PublicGetPartyParams{
	Namespace: integration.NamespaceTest,
	PartyID:   *joined.Data.ID,
}
get, errGet := partyService.PublicGetPartyShort(inputGet)
if errGet != nil {
	assert.FailNow(t, errGet.Error())

	return
}
```

### User leave a party

```go
inputLeave := &partySession.PublicPartyLeaveParams{
	Namespace: integration.NamespaceTest,
	PartyID:   *joined.Data.ID,
}
errLeave := partyServiceFor2ndPlayer.PublicPartyLeaveShort(inputLeave)
if errLeave != nil {
	assert.FailNow(t, errLeave.Error())

	return
}
```
## Social

Source: [social_test.go](../services-api/pkg/tests/integration/social_test.go)

### Delete a statistic

```go
inputStat := &stat_configuration.DeleteStatParams{
	Namespace: integration.NamespaceTest,
	StatCode:  statCodeSocial,
}

err := statConfigurationService.DeleteStatShort(inputStat)
```

### Create a statistic

```go
tagsSocial = append(tagsSocial, tag)
inputStat := &stat_configuration.CreateStatParams{
	Body:      bodyStatSocial,
	Namespace: integration.NamespaceTest,
}

ok, err := statConfigurationService.CreateStatShort(inputStat)
```

### Get a statistic by its Stat Code

```go
inputStat := &stat_configuration.GetStatParams{
	Namespace: integration.NamespaceTest,
	StatCode:  statCodeSocial,
}

ok, errOk := statConfigurationService.GetStatShort(inputStat)
```

### Get all statistics

```go
inputStat := &stat_configuration.GetStatsParams{
	Limit:     nil,
	Namespace: integration.NamespaceTest,
	Offset:    nil,
}

ok, err := statConfigurationService.GetStatsShort(inputStat)
```

### Query statistics by keyword

```go
inputStat := &stat_configuration.QueryStatsParams{
	Keyword:   statCodeSocial,
	Limit:     nil,
	Namespace: integration.NamespaceTest,
	Offset:    nil,
}

ok, err := statConfigurationService.QueryStatsShort(inputStat)
```

### Update a statistic

```go
bodyStatUpdate := &socialclientmodels.StatUpdate{
	Description: "",
	Name:        statCodeSocial,
	Tags:        nil,
}
inputStat := &stat_configuration.UpdateStatParams{
	Body:      bodyStatUpdate,
	Namespace: integration.NamespaceTest,
	StatCode:  statCodeSocial,
}

ok, err := statConfigurationService.UpdateStatShort(inputStat)
```

### Stat export

```go
inputExportStat := &stat_configuration.ExportStatsParams{
	Namespace: integration.NamespaceTest,
}

writer := bytes.NewBuffer(nil)
okExport, errExport := statConfigurationService.ExportStatsShort(inputExportStat, writer)
```

### Stat import

```go
inputImportStat := &stat_configuration.ImportStatsParams{
	File:            file,
	Namespace:       integration.NamespaceTest,
	ReplaceExisting: nil,
}

okImport, errImport := statConfigurationService.ImportStatsShort(inputImportStat)
```

### Create user item

```go
inputCreate := &user_statistic.CreateUserStatItemParams{
	Namespace: integration.NamespaceTest,
	StatCode:  statCodeSocial,
	UserID:    *user.Data.UserID,
}

errCreate := userStatisticService.CreateUserStatItemShort(inputCreate)
```

### Get user item

```go
inputGet := &user_statistic.GetUserStatItemsParams{
	Namespace: integration.NamespaceTest,
	UserID:    *user.Data.UserID,
	StatCodes: &statCodeSocial,
}

get, errGet := userStatisticService.GetUserStatItemsShort(inputGet)
```

### Inc user stat item value

```go
inputInc := &user_statistic.IncUserStatItemValueParams{
	Body:      &socialclientmodels.StatItemInc{Inc: float64(4)},
	Namespace: integration.NamespaceTest,
	StatCode:  statCodeSocial,
	UserID:    *user.Data.UserID,
}

inc, errInc := userStatisticService.IncUserStatItemValueShort(inputInc)
```

### Delete user stat items

```go
inputDelete := &user_statistic.DeleteUserStatItemsParams{
	Namespace: integration.NamespaceTest,
	StatCode:  statCodeSocial,
	UserID:    *user.Data.UserID,
}

errDelete := userStatisticService.DeleteUserStatItemsShort(inputDelete)
```
## UGC

Source: [ugc_test.go](../services-api/pkg/tests/integration/ugc_test.go)

### Create tag

```go
inputCreate := &admin_tag.AdminCreateTagParams{
	Body:      bodyTag,
	Namespace: integration.NamespaceTest,
}

created, errCreate := adminTagService.AdminCreateTagShort(inputCreate)
if errCreate != nil {
	assert.FailNow(t, errCreate.Error())
}
tagID := *created.Data.ID
t.Logf("TagId: %v created", tagID)
```

### Get tag

```go
inputGet := &admin_tag.AdminGetTagParams{
	Limit:     nil,
	Namespace: integration.NamespaceTest,
	Offset:    nil,
}
get, errGet := adminTagService.AdminGetTagShort(inputGet)
if errGet != nil {
	assert.FailNow(t, errGet.Error())
}

t.Log("Tag acquired")
```

### Update a tag

```go
inputUpdate := &admin_tag.AdminUpdateTagParams{
	Body:      bodyTagUpdate,
	Namespace: integration.NamespaceTest,
	TagID:     tagID,
}

updated, errUpdate := adminTagService.AdminUpdateTagShort(inputUpdate)
if errUpdate != nil {
	assert.FailNow(t, errUpdate.Error())
}
```

### Delete a tag

```go
inputDelete := &admin_tag.AdminDeleteTagParams{
	Namespace: integration.NamespaceTest,
	TagID:     tagID,
}

errDelete := adminTagService.AdminDeleteTagShort(inputDelete)
if errDelete != nil {
	assert.FailNow(t, errDelete.Error())
}
```