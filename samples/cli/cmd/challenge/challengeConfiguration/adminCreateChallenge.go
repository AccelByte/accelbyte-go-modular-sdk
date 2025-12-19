// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package challengeConfiguration

import (
	"encoding/json"
	"log/slog"

	challenge "github.com/AccelByte/accelbyte-go-modular-sdk/challenge-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/challenge-sdk/pkg/challengeclient/challenge_configuration"
	"github.com/AccelByte/accelbyte-go-modular-sdk/challenge-sdk/pkg/challengeclientmodels"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// AdminCreateChallengeCmd represents the AdminCreateChallenge command
var AdminCreateChallengeCmd = &cobra.Command{
	Use:   "adminCreateChallenge",
	Short: "Admin create challenge",
	Long:  `Admin create challenge`,
	RunE: func(cmd *cobra.Command, args []string) error {
		challengeConfigurationService := &challenge.ChallengeConfigurationService{
			Client:          challenge.NewChallengeClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *challengeclientmodels.ModelCreateChallengeRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &challenge_configuration.AdminCreateChallengeParams{
			Body:      body,
			Namespace: namespace,
		}
		created, errCreated := challengeConfigurationService.AdminCreateChallengeShort(input)
		if errCreated != nil {
			slog.Error("operation failed", "error", errCreated)

			return errCreated
		}

		slog.Info("Response CLI success", "response", created)

		return nil
	},
}

func init() {
	AdminCreateChallengeCmd.Flags().String("body", "", "Body")
	_ = AdminCreateChallengeCmd.MarkFlagRequired("body")
	AdminCreateChallengeCmd.Flags().String("namespace", "", "Namespace")
	_ = AdminCreateChallengeCmd.MarkFlagRequired("namespace")
}
