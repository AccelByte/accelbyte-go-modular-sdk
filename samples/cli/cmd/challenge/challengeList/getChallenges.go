// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package challengeList

import (
	challenge "github.com/AccelByte/accelbyte-go-modular-sdk/challenge-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/challenge-sdk/pkg/challengeclient/challenge_list"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// GetChallengesCmd represents the GetChallenges command
var GetChallengesCmd = &cobra.Command{
	Use:   "getChallenges",
	Short: "Get challenges",
	Long:  `Get challenges`,
	RunE: func(cmd *cobra.Command, args []string) error {
		challengeListService := &challenge.ChallengeListService{
			Client:          challenge.NewChallengeClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		limit, _ := cmd.Flags().GetInt64("limit")
		offset, _ := cmd.Flags().GetInt64("offset")
		sortBy, _ := cmd.Flags().GetString("sortBy")
		status, _ := cmd.Flags().GetString("status")
		input := &challenge_list.GetChallengesParams{
			Namespace: namespace,
			Limit:     &limit,
			Offset:    &offset,
			SortBy:    &sortBy,
			Status:    &status,
		}
		ok, errOK := challengeListService.GetChallengesShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	GetChallengesCmd.Flags().String("namespace", "", "Namespace")
	_ = GetChallengesCmd.MarkFlagRequired("namespace")
	GetChallengesCmd.Flags().Int64("limit", 20, "Limit")
	GetChallengesCmd.Flags().Int64("offset", 0, "Offset")
	GetChallengesCmd.Flags().String("sortBy", "", "Sort by")
	GetChallengesCmd.Flags().String("status", "", "Status")
}
