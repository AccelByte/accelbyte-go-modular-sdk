// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package admin

import (
	dsmc "github.com/AccelByte/accelbyte-go-modular-sdk/dsmc-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/dsmc-sdk/pkg/dsmcclient/admin"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// DeleteLocalServerCmd represents the DeleteLocalServer command
var DeleteLocalServerCmd = &cobra.Command{
	Use:   "deleteLocalServer",
	Short: "Delete local server",
	Long:  `Delete local server`,
	RunE: func(cmd *cobra.Command, args []string) error {
		adminService := &dsmc.AdminService{
			Client:          dsmc.NewDsmcClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		name, _ := cmd.Flags().GetString("name")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &admin.DeleteLocalServerParams{
			Name:      name,
			Namespace: namespace,
		}
		errNoContent := adminService.DeleteLocalServerShort(input)
		if errNoContent != nil {
			logrus.Error(errNoContent)

			return errNoContent
		}

		logrus.Infof("Response CLI success.")

		return nil
	},
}

func init() {
	DeleteLocalServerCmd.Flags().String("name", "", "Name")
	_ = DeleteLocalServerCmd.MarkFlagRequired("name")
	DeleteLocalServerCmd.Flags().String("namespace", "", "Namespace")
	_ = DeleteLocalServerCmd.MarkFlagRequired("namespace")
}
