// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package socialMatchmaking

import (
	"encoding/json"

	matchmaking "github.com/AccelByte/accelbyte-go-modular-sdk/matchmaking-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/matchmaking-sdk/pkg/matchmakingclient/social_matchmaking"
	"github.com/AccelByte/accelbyte-go-modular-sdk/matchmaking-sdk/pkg/matchmakingclientmodels"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// UpdatePlayTimeWeightCmd represents the UpdatePlayTimeWeight command
var UpdatePlayTimeWeightCmd = &cobra.Command{
	Use:   "updatePlayTimeWeight",
	Short: "Update play time weight",
	Long:  `Update play time weight`,
	RunE: func(cmd *cobra.Command, args []string) error {
		socialMatchmakingService := &matchmaking.SocialMatchmakingService{
			Client:          matchmaking.NewMatchmakingClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *matchmakingclientmodels.ModelsUpdatePlayTimeWeightRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &social_matchmaking.UpdatePlayTimeWeightParams{
			Body:      body,
			Namespace: namespace,
		}
		ok, errOK := socialMatchmakingService.UpdatePlayTimeWeightShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	UpdatePlayTimeWeightCmd.Flags().String("body", "", "Body")
	_ = UpdatePlayTimeWeightCmd.MarkFlagRequired("body")
	UpdatePlayTimeWeightCmd.Flags().String("namespace", "", "Namespace")
	_ = UpdatePlayTimeWeightCmd.MarkFlagRequired("namespace")
}
