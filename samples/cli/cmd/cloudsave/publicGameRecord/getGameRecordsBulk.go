// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package publicGameRecord

import (
	"encoding/json"
	"log/slog"

	cloudsave "github.com/AccelByte/accelbyte-go-modular-sdk/cloudsave-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/cloudsave-sdk/pkg/cloudsaveclient/public_game_record"
	"github.com/AccelByte/accelbyte-go-modular-sdk/cloudsave-sdk/pkg/cloudsaveclientmodels"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// GetGameRecordsBulkCmd represents the GetGameRecordsBulk command
var GetGameRecordsBulkCmd = &cobra.Command{
	Use:   "getGameRecordsBulk",
	Short: "Get game records bulk",
	Long:  `Get game records bulk`,
	RunE: func(cmd *cobra.Command, args []string) error {
		publicGameRecordService := &cloudsave.PublicGameRecordService{
			Client:          cloudsave.NewCloudsaveClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *cloudsaveclientmodels.ModelsBulkGetGameRecordRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &public_game_record.GetGameRecordsBulkParams{
			Body:      body,
			Namespace: namespace,
		}
		ok, errOK := publicGameRecordService.GetGameRecordsBulkShort(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	GetGameRecordsBulkCmd.Flags().String("body", "", "Body")
	_ = GetGameRecordsBulkCmd.MarkFlagRequired("body")
	GetGameRecordsBulkCmd.Flags().String("namespace", "", "Namespace")
	_ = GetGameRecordsBulkCmd.MarkFlagRequired("namespace")
}
