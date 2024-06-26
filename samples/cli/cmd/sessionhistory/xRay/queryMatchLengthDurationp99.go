// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package xRay

import (
	sessionhistory "github.com/AccelByte/accelbyte-go-modular-sdk/sessionhistory-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/sessionhistory-sdk/pkg/sessionhistoryclient/x_ray"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// QueryMatchLengthDurationp99Cmd represents the QueryMatchLengthDurationp99 command
var QueryMatchLengthDurationp99Cmd = &cobra.Command{
	Use:   "queryMatchLengthDurationp99",
	Short: "Query match length durationp99",
	Long:  `Query match length durationp99`,
	RunE: func(cmd *cobra.Command, args []string) error {
		xRayService := &sessionhistory.XRayService{
			Client:          sessionhistory.NewSessionhistoryClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		endDate, _ := cmd.Flags().GetString("endDate")
		startDate, _ := cmd.Flags().GetString("startDate")
		input := &x_ray.QueryMatchLengthDurationp99Params{
			Namespace: namespace,
			EndDate:   endDate,
			StartDate: startDate,
		}
		ok, errOK := xRayService.QueryMatchLengthDurationp99Short(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	QueryMatchLengthDurationp99Cmd.Flags().String("namespace", "", "Namespace")
	_ = QueryMatchLengthDurationp99Cmd.MarkFlagRequired("namespace")
	QueryMatchLengthDurationp99Cmd.Flags().String("endDate", "", "End date")
	_ = QueryMatchLengthDurationp99Cmd.MarkFlagRequired("endDate")
	QueryMatchLengthDurationp99Cmd.Flags().String("startDate", "", "Start date")
	_ = QueryMatchLengthDurationp99Cmd.MarkFlagRequired("startDate")
}
