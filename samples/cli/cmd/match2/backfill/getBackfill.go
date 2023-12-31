// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package backfill

import (
	match2 "github.com/AccelByte/accelbyte-go-modular-sdk/match2-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/match2-sdk/pkg/match2client/backfill"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// GetBackfillCmd represents the GetBackfill command
var GetBackfillCmd = &cobra.Command{
	Use:   "getBackfill",
	Short: "Get backfill",
	Long:  `Get backfill`,
	RunE: func(cmd *cobra.Command, args []string) error {
		backfillService := &match2.BackfillService{
			Client:          match2.NewMatch2Client(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		backfillID, _ := cmd.Flags().GetString("backfillID")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &backfill.GetBackfillParams{
			BackfillID: backfillID,
			Namespace:  namespace,
		}
		ok, errOK := backfillService.GetBackfillShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	GetBackfillCmd.Flags().String("backfillID", "", "Backfill ID")
	_ = GetBackfillCmd.MarkFlagRequired("backfillID")
	GetBackfillCmd.Flags().String("namespace", "", "Namespace")
	_ = GetBackfillCmd.MarkFlagRequired("namespace")
}
