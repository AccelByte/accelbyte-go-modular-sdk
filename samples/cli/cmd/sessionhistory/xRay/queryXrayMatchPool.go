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

// QueryXrayMatchPoolCmd represents the QueryXrayMatchPool command
var QueryXrayMatchPoolCmd = &cobra.Command{
	Use:   "queryXrayMatchPool",
	Short: "Query xray match pool",
	Long:  `Query xray match pool`,
	RunE: func(cmd *cobra.Command, args []string) error {
		xRayService := &sessionhistory.XRayService{
			Client:          sessionhistory.NewSessionhistoryClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		poolName, _ := cmd.Flags().GetString("poolName")
		endDate, _ := cmd.Flags().GetString("endDate")
		startDate, _ := cmd.Flags().GetString("startDate")
		input := &x_ray.QueryXrayMatchPoolParams{
			Namespace: namespace,
			PoolName:  poolName,
			EndDate:   endDate,
			StartDate: startDate,
		}
		ok, errOK := xRayService.QueryXrayMatchPoolShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	QueryXrayMatchPoolCmd.Flags().String("namespace", "", "Namespace")
	_ = QueryXrayMatchPoolCmd.MarkFlagRequired("namespace")
	QueryXrayMatchPoolCmd.Flags().String("poolName", "", "Pool name")
	_ = QueryXrayMatchPoolCmd.MarkFlagRequired("poolName")
	QueryXrayMatchPoolCmd.Flags().String("endDate", "", "End date")
	_ = QueryXrayMatchPoolCmd.MarkFlagRequired("endDate")
	QueryXrayMatchPoolCmd.Flags().String("startDate", "", "Start date")
	_ = QueryXrayMatchPoolCmd.MarkFlagRequired("startDate")
}
