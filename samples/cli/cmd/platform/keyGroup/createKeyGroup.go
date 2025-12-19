// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package keyGroup

import (
	"encoding/json"
	"log/slog"

	platform "github.com/AccelByte/accelbyte-go-modular-sdk/platform-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/platform-sdk/pkg/platformclient/key_group"
	"github.com/AccelByte/accelbyte-go-modular-sdk/platform-sdk/pkg/platformclientmodels"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// CreateKeyGroupCmd represents the CreateKeyGroup command
var CreateKeyGroupCmd = &cobra.Command{
	Use:   "createKeyGroup",
	Short: "Create key group",
	Long:  `Create key group`,
	RunE: func(cmd *cobra.Command, args []string) error {
		keyGroupService := &platform.KeyGroupService{
			Client:          platform.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *platformclientmodels.KeyGroupCreate
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &key_group.CreateKeyGroupParams{
			Body:      body,
			Namespace: namespace,
		}
		created, errCreated := keyGroupService.CreateKeyGroupShort(input)
		if errCreated != nil {
			slog.Error("operation failed", "error", errCreated)

			return errCreated
		}

		slog.Info("Response CLI success", "response", created)

		return nil
	},
}

func init() {
	CreateKeyGroupCmd.Flags().String("body", "", "Body")
	_ = CreateKeyGroupCmd.MarkFlagRequired("body")
	CreateKeyGroupCmd.Flags().String("namespace", "", "Namespace")
	_ = CreateKeyGroupCmd.MarkFlagRequired("namespace")
}
