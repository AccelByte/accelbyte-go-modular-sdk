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

// QueryAcquiringDSWaitTimeAvgCmd represents the QueryAcquiringDSWaitTimeAvg command
var QueryAcquiringDSWaitTimeAvgCmd = &cobra.Command{
	Use:   "queryAcquiringDSWaitTimeAvg",
	Short: "Query acquiring DS wait time avg",
	Long:  `Query acquiring DS wait time avg`,
	RunE: func(cmd *cobra.Command, args []string) error {
		xRayService := &sessionhistory.XRayService{
			Client:          sessionhistory.NewSessionhistoryClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		endDate, _ := cmd.Flags().GetString("endDate")
		startDate, _ := cmd.Flags().GetString("startDate")
		input := &x_ray.QueryAcquiringDSWaitTimeAvgParams{
			Namespace: namespace,
			EndDate:   endDate,
			StartDate: startDate,
		}
		ok, errOK := xRayService.QueryAcquiringDSWaitTimeAvgShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	QueryAcquiringDSWaitTimeAvgCmd.Flags().String("namespace", "", "Namespace")
	_ = QueryAcquiringDSWaitTimeAvgCmd.MarkFlagRequired("namespace")
	QueryAcquiringDSWaitTimeAvgCmd.Flags().String("endDate", "", "End date")
	_ = QueryAcquiringDSWaitTimeAvgCmd.MarkFlagRequired("endDate")
	QueryAcquiringDSWaitTimeAvgCmd.Flags().String("startDate", "", "Start date")
	_ = QueryAcquiringDSWaitTimeAvgCmd.MarkFlagRequired("startDate")
}
