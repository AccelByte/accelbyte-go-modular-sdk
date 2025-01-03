// Copyright (c) 2023 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package integration_test

import (
	"strings"
	"testing"
	"time"

	iam "github.com/AccelByte/accelbyte-go-modular-sdk/iam-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/iam-sdk/pkg/iamclient/override_role_config_v3"
	"github.com/AccelByte/accelbyte-go-modular-sdk/iam-sdk/pkg/iamclient/roles"
	"github.com/AccelByte/accelbyte-go-modular-sdk/iam-sdk/pkg/iamclientmodels"
	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/utils/auth"
	"github.com/stretchr/testify/assert"
)

func findAndCheckResourceFromRole(configRepo *auth.ConfigRepositoryImpl, tokenRepo *auth.TokenRepositoryImpl, roleID string, resourceToCheck string) (int, error) {
	iamClient := iam.NewIamClient(configRepo)

	resultAction := -1

	overrideRoleService := iam.OverrideRoleConfigv3Service{
		Client:           iamClient,
		ConfigRepository: configRepo,
		TokenRepository:  tokenRepo,
	}

	tkn, err := tokenRepo.GetToken()
	if err != nil {
		return resultAction, err
	}

	permissions, err := overrideRoleService.AdminGetRoleNamespacePermissionV3Short(&override_role_config_v3.AdminGetRoleNamespacePermissionV3Params{
		RoleID:    roleID,
		Namespace: *tkn.Namespace,
	})

	if err != nil {
		return resultAction, err
	}

	for _, permission := range permissions.Data.Permissions {
		if *permission.Resource == resourceToCheck {
			resultAction = int(*permission.Action)
			break
		}
	}

	return resultAction, err
}

func Test_RoleOverride(t *testing.T) {
	roleIdentityToUpdate := "USER"
	resourceToCheck := "NAMESPACE:{namespace}:PROFILE"
	actionToCheck := 7
	updatedActionToCheck := 2
	checkCount := 20
	checkInterval := 1000

	configRepo := auth.DefaultConfigRepositoryImpl()
	tokenRepo := auth.DefaultTokenRepositoryImpl()
	iamClient := iam.NewIamClient(configRepo)

	authService := iam.OAuth20Service{
		Client:           iamClient,
		ConfigRepository: configRepo,
		TokenRepository:  tokenRepo,
	}

	err := authService.LoginClient(&configRepo.ClientId, &configRepo.ClientSecret)
	assert.NoError(t, err)

	tkn, err := tokenRepo.GetToken()
	assert.NoError(t, err)

	roleService := iam.RolesService{
		Client:           iamClient,
		ConfigRepository: configRepo,
		TokenRepository:  tokenRepo,
	}

	adminRole := false
	roles, err := roleService.AdminGetRolesV4Short(&roles.AdminGetRolesV4Params{
		AdminRole: &adminRole,
	})
	assert.NoError(t, err)

	userRoleID := ""

	for _, role := range roles.Data.Data {
		if strings.ToUpper(*role.RoleName) == roleIdentityToUpdate {
			userRoleID = *role.RoleID
			break
		}
	}

	action, err := findAndCheckResourceFromRole(configRepo, tokenRepo, userRoleID, resourceToCheck)

	assert.NoError(t, err)
	assert.Equal(t, actionToCheck, action)

	overrideRoleService := iam.OverrideRoleConfigv3Service{
		Client:           iamClient,
		ConfigRepository: configRepo,
		TokenRepository:  tokenRepo,
	}

	updateResponse, err := overrideRoleService.AdminUpdateRoleOverrideConfigV3Short(&override_role_config_v3.AdminUpdateRoleOverrideConfigV3Params{
		Body: &iamclientmodels.ModelRoleOverrideUpdateRequest{
			Exclusions: []*iamclientmodels.AccountcommonOverrideRolePermission{
				{
					Actions:  []int32{1, 4},
					Resource: &resourceToCheck,
				},
			},
		},
		Namespace: *tkn.Namespace,
		Identity:  roleIdentityToUpdate,
	})
	assert.NoError(t, err)

	assert.NotNil(t, updateResponse)

	active := true
	activateResponse, err := overrideRoleService.AdminChangeRoleOverrideConfigStatusV3Short(&override_role_config_v3.AdminChangeRoleOverrideConfigStatusV3Params{
		Body: &iamclientmodels.ModelRoleOverrideStatsUpdateRequest{
			Active: &active,
		},
		Namespace: *tkn.Namespace,
		Identity:  roleIdentityToUpdate,
	})
	assert.NoError(t, err)

	assert.NotNil(t, activateResponse)

	if activateResponse != nil {
		assert.Equal(t, true, *activateResponse.Data.Active)
	}

	uValid := false
	currentCount := 0

	for currentCount < checkCount {
		uAction, err := findAndCheckResourceFromRole(configRepo, tokenRepo, userRoleID, resourceToCheck)
		assert.NoError(t, err)

		if uAction == updatedActionToCheck {
			uValid = true
			break
		}

		currentCount++
		time.Sleep(time.Duration(checkInterval) * time.Millisecond)
	}

	assert.Equal(t, true, uValid)

	active = false
	overrideRoleService.AdminChangeRoleOverrideConfigStatusV3Short(&override_role_config_v3.AdminChangeRoleOverrideConfigStatusV3Params{
		Body: &iamclientmodels.ModelRoleOverrideStatsUpdateRequest{
			Active: &active,
		},
		Namespace: *tkn.Namespace,
		Identity:  roleIdentityToUpdate,
	})

}
