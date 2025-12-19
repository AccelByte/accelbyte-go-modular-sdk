// Copyright (c) 2023 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package main

import (
	"context"
	"encoding/json"
	"fmt"
	"log/slog"
	"strings"
	"time"

	iam "github.com/AccelByte/accelbyte-go-modular-sdk/iam-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/repository"
	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/utils/auth"
	social "github.com/AccelByte/accelbyte-go-modular-sdk/social-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/social-sdk/pkg/socialclient/user_statistic"
	"github.com/aws/aws-lambda-go/events"
	"github.com/aws/aws-lambda-go/lambda"
)

var (
	// use the default config and token implementation
	configRepo                                    = *auth.DefaultConfigRepositoryImpl()
	tokenRepo                                     = *auth.DefaultTokenRepositoryImpl()
	refreshRepo repository.RefreshTokenRepository = &auth.RefreshTokenImpl{AutoRefresh: false, RefreshRate: 0.01} //nolint:mnd // Force refresh with shorter time span

	oAuth20Service = iam.OAuth20Service{
		Client:                 iam.NewIamClient(&configRepo),
		ConfigRepository:       &configRepo,
		TokenRepository:        &tokenRepo,
		RefreshTokenRepository: refreshRepo,
	}
	userStatisticService = &social.UserStatisticService{
		Client:          social.NewSocialClient(&configRepo),
		TokenRepository: &tokenRepo,
	}
)

func main() {
	lambda.Start(Handler)
}

func Handler(ctx context.Context, evt events.LambdaFunctionURLRequest) (events.LambdaFunctionURLResponse, error) {
	reqToken := evt.Headers["authorization"]
	splitToken := strings.Split(reqToken, "Bearer ")
	if len(splitToken) == 1 || len(splitToken) > 2 {
		return events.LambdaFunctionURLResponse{
			Body:       "invalid token. Token split \"Bearer\" and token authorization",
			StatusCode: 400, //nolint:mnd
		}, nil
	}
	slog.Info("Parse Access Token Done")

	// login client
	clientId := oAuth20Service.ConfigRepository.GetClientId()
	clientSecret := oAuth20Service.ConfigRepository.GetClientSecret()
	errLogin := oAuth20Service.LoginOrRefreshClient(&clientId, &clientSecret)
	if errLogin != nil {
		errString := fmt.Errorf("failed to login client. %s", errLogin.Error())
		slog.Error("failed to login client", "error", errString)

		return events.LambdaFunctionURLResponse{}, errString
	}
	slog.Info("Login Client Done")
	// start token validation
	httpRequest := evt.RequestContext.HTTP.Method
	errValidateToken := validateToken(splitToken[1], evt.QueryStringParameters["namespace"], evt.QueryStringParameters["userId"], httpRequest)
	if errValidateToken != nil {
		errString := fmt.Errorf("failed to validate token. %s", errValidateToken.Error())
		slog.Error("failed to validate token", "error", errString)

		return events.LambdaFunctionURLResponse{}, errString
	}
	slog.Info("Token Validation Done")

	// cases:
	switch httpRequest {
	case "GET":
		return getRequest(evt)
	case "POST":
		return postRequest(evt)
	case "DELETE":
		return deleteRequest(evt)
	default:
		return events.LambdaFunctionURLResponse{
			Body:       httpRequest + " request not supported",
			StatusCode: 400, //nolint:mnd
		}, nil
	}
}

func getRequest(evt events.LambdaFunctionURLRequest) (events.LambdaFunctionURLResponse, error) {
	// get user stat item
	inputUserStatItem := &user_statistic.GetUserStatItemsParams{
		Namespace: evt.QueryStringParameters["namespace"],
		UserID:    evt.QueryStringParameters["userId"],
	}
	getUserStatItem, errUserStatItem := userStatisticService.GetUserStatItemsShort(inputUserStatItem)
	if errUserStatItem != nil {
		errString := fmt.Errorf("failed to create user stat item. %s", errUserStatItem.Error())
		slog.Error("failed to create user stat item", "error", errString)

		return events.LambdaFunctionURLResponse{
			Body:       errUserStatItem.Error(),
			StatusCode: 400, //nolint:mnd
		}, nil
	}

	var js []byte
	js, err := json.Marshal(getUserStatItem)
	if err != nil {
		errString := fmt.Errorf("failed to marshal the response. %s", err.Error())
		slog.Error("failed to marshal the response", "error", errString)

		return events.LambdaFunctionURLResponse{
			Body:       err.Error(),
			StatusCode: 400, //nolint:mnd
		}, nil
	}

	return events.LambdaFunctionURLResponse{
		StatusCode: 200, //nolint:mnd
		Body:       string(js),
	}, nil
}

func deleteRequest(evt events.LambdaFunctionURLRequest) (events.LambdaFunctionURLResponse, error) {
	// delete user stat item
	inputDeleteUserStatItem := &user_statistic.DeleteUserStatItemsParams{
		Namespace: evt.QueryStringParameters["namespace"],
		StatCode:  evt.QueryStringParameters["statCode"],
		UserID:    evt.QueryStringParameters["userId"],
	}
	errDeleteUserStatItems := userStatisticService.DeleteUserStatItemsShort(inputDeleteUserStatItem)
	if errDeleteUserStatItems != nil {
		errString := fmt.Errorf("failed to delete user stat code. %s", errDeleteUserStatItems.Error())
		slog.Error("failed to delete user stat code", "error", errString)

		return events.LambdaFunctionURLResponse{
			Body:       errDeleteUserStatItems.Error(),
			StatusCode: 400, //nolint:mnd
		}, nil
	}

	return events.LambdaFunctionURLResponse{
		StatusCode: 200, //nolint:mnd
		Body:       "User stat code deleted successfully",
	}, nil
}

func postRequest(evt events.LambdaFunctionURLRequest) (events.LambdaFunctionURLResponse, error) {
	// create user stat item
	inputUserStatItem := &user_statistic.CreateUserStatItemParams{
		Namespace: evt.QueryStringParameters["namespace"],
		StatCode:  evt.QueryStringParameters["statCode"],
		UserID:    evt.QueryStringParameters["userId"],
	}
	errUserStatItem := userStatisticService.CreateUserStatItemShort(inputUserStatItem)
	if errUserStatItem != nil {
		errString := fmt.Errorf("failed to create user stat item. %s", errUserStatItem.Error())
		slog.Error("failed to create user stat item", "error", errString)

		return events.LambdaFunctionURLResponse{
			Body:       errUserStatItem.Error(),
			StatusCode: 400, //nolint:mnd
		}, nil
	}

	return events.LambdaFunctionURLResponse{
		StatusCode: 200, //nolint:mnd
		Body:       "User stat code added successfully",
	}, nil
}

func validateToken(accessToken string, namespace string, userId string, httpRequest string) error {
	// initialize token validator
	tokenValidator := iam.NewTokenValidator(oAuth20Service, time.Hour)
	tokenValidator.Initialize()

	// validate stat item
	var action int
	switch httpRequest {
	case "GET":
		action = 2
	case "POST":
		action = 1
	case "DELETE":
		action = 8
	}
	requiredPermissionStatItem := iam.Permission{
		Action:   action,
		Resource: fmt.Sprintf("ADMIN:NAMESPACE:%s:USER:%s:STATITEM", namespace, userId),
	}
	errValidateStatItem := tokenValidator.Validate(accessToken, &requiredPermissionStatItem, &namespace, &userId)
	if errValidateStatItem != nil {
		return errValidateStatItem
	}

	return nil
}
