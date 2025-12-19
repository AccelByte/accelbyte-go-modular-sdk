// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package season

import (
	"encoding/json"
	"log/slog"

	seasonpass "github.com/AccelByte/accelbyte-go-modular-sdk/seasonpass-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/seasonpass-sdk/pkg/seasonpassclient/season"
	"github.com/AccelByte/accelbyte-go-modular-sdk/seasonpass-sdk/pkg/seasonpassclientmodels"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// UpdateSeasonCmd represents the UpdateSeason command
var UpdateSeasonCmd = &cobra.Command{
	Use:   "updateSeason",
	Short: "Update season",
	Long:  `Update season`,
	RunE: func(cmd *cobra.Command, args []string) error {
		seasonService := &seasonpass.SeasonService{
			Client:          seasonpass.NewSeasonpassClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		seasonId, _ := cmd.Flags().GetString("seasonId")
		bodyString := cmd.Flag("body").Value.String()
		var body *seasonpassclientmodels.SeasonUpdate
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		input := &season.UpdateSeasonParams{
			Body:      body,
			Namespace: namespace,
			SeasonID:  seasonId,
		}
		ok, errOK := seasonService.UpdateSeasonShort(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	UpdateSeasonCmd.Flags().String("body", "", "Body")
	UpdateSeasonCmd.Flags().String("namespace", "", "Namespace")
	_ = UpdateSeasonCmd.MarkFlagRequired("namespace")
	UpdateSeasonCmd.Flags().String("seasonId", "", "Season id")
	_ = UpdateSeasonCmd.MarkFlagRequired("seasonId")
}
