// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package revocation

import (
	platform "github.com/AccelByte/accelbyte-go-modular-sdk/platform-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/platform-sdk/pkg/platformclient/revocation"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// DeleteRevocationConfigCmd represents the DeleteRevocationConfig command
var DeleteRevocationConfigCmd = &cobra.Command{
	Use:   "deleteRevocationConfig",
	Short: "Delete revocation config",
	Long:  `Delete revocation config`,
	RunE: func(cmd *cobra.Command, args []string) error {
		revocationService := &platform.RevocationService{
			Client:          platform.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &revocation.DeleteRevocationConfigParams{
			Namespace: namespace,
		}
		errNoContent := revocationService.DeleteRevocationConfigShort(input)
		if errNoContent != nil {
			logrus.Error(errNoContent)

			return errNoContent
		}

		logrus.Infof("Response CLI success.")

		return nil
	},
}

func init() {
	DeleteRevocationConfigCmd.Flags().String("namespace", "", "Namespace")
	_ = DeleteRevocationConfigCmd.MarkFlagRequired("namespace")
}
