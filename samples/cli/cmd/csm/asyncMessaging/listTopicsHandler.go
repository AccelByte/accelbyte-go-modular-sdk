// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package asyncMessaging

import (
	"log/slog"

	csm "github.com/AccelByte/accelbyte-go-modular-sdk/csm-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/csm-sdk/pkg/csmclient/async_messaging"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// ListTopicsHandlerCmd represents the ListTopicsHandler command
var ListTopicsHandlerCmd = &cobra.Command{
	Use:   "listTopicsHandler",
	Short: "List topics handler",
	Long:  `List topics handler`,
	RunE: func(cmd *cobra.Command, args []string) error {
		asyncMessagingService := &csm.AsyncMessagingService{
			Client:          csm.NewCsmClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		fuzzyTopicName, _ := cmd.Flags().GetString("fuzzyTopicName")
		isSubscribedByAppName, _ := cmd.Flags().GetString("isSubscribedByAppName")
		isUnsubscribedByAppName, _ := cmd.Flags().GetString("isUnsubscribedByAppName")
		limit, _ := cmd.Flags().GetInt64("limit")
		offset, _ := cmd.Flags().GetInt64("offset")
		input := &async_messaging.ListTopicsHandlerParams{
			Namespace:               namespace,
			FuzzyTopicName:          &fuzzyTopicName,
			IsSubscribedByAppName:   &isSubscribedByAppName,
			IsUnsubscribedByAppName: &isUnsubscribedByAppName,
			Limit:                   &limit,
			Offset:                  &offset,
		}
		ok, errOK := asyncMessagingService.ListTopicsHandlerShort(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	ListTopicsHandlerCmd.Flags().String("namespace", "", "Namespace")
	_ = ListTopicsHandlerCmd.MarkFlagRequired("namespace")
	ListTopicsHandlerCmd.Flags().String("fuzzyTopicName", "", "Fuzzy topic name")
	ListTopicsHandlerCmd.Flags().String("isSubscribedByAppName", "", "Is subscribed by app name")
	ListTopicsHandlerCmd.Flags().String("isUnsubscribedByAppName", "", "Is unsubscribed by app name")
	ListTopicsHandlerCmd.Flags().Int64("limit", 20, "Limit")
	ListTopicsHandlerCmd.Flags().Int64("offset", 0, "Offset")
}
