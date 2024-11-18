// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package app

import (
	csm "github.com/AccelByte/accelbyte-go-modular-sdk/csm-sdk/pkg"
	app_ "github.com/AccelByte/accelbyte-go-modular-sdk/csm-sdk/pkg/csmclient/app"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// DeleteAppV1Cmd represents the DeleteAppV1 command
var DeleteAppV1Cmd = &cobra.Command{
	Use:   "deleteAppV1",
	Short: "Delete app V1",
	Long:  `Delete app V1`,
	RunE: func(cmd *cobra.Command, args []string) error {
		appService := &csm.AppService{
			Client:          csm.NewCsmClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		app, _ := cmd.Flags().GetString("app")
		namespace, _ := cmd.Flags().GetString("namespace")
		forced, _ := cmd.Flags().GetString("forced")
		input := &app_.DeleteAppV1Params{
			App:       app,
			Namespace: namespace,
			Forced:    &forced,
		}
		errNoContent := appService.DeleteAppV1Short(input)
		if errNoContent != nil {
			logrus.Error(errNoContent)

			return errNoContent
		}

		logrus.Infof("Response CLI success.")

		return nil
	},
}

func init() {
	DeleteAppV1Cmd.Flags().String("app", "", "App")
	_ = DeleteAppV1Cmd.MarkFlagRequired("app")
	DeleteAppV1Cmd.Flags().String("namespace", "", "Namespace")
	_ = DeleteAppV1Cmd.MarkFlagRequired("namespace")
	DeleteAppV1Cmd.Flags().String("forced", "", "Forced")
}
