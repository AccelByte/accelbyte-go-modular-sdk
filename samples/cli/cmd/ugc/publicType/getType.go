// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package publicType

import (
	ugc "github.com/AccelByte/accelbyte-go-modular-sdk/ugc-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/ugc-sdk/pkg/ugcclient/public_type"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// GetTypeCmd represents the GetType command
var GetTypeCmd = &cobra.Command{
	Use:   "getType",
	Short: "Get type",
	Long:  `Get type`,
	RunE: func(cmd *cobra.Command, args []string) error {
		publicTypeService := &ugc.PublicTypeService{
			Client:          ugc.NewUgcClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		limit, _ := cmd.Flags().GetInt64("limit")
		offset, _ := cmd.Flags().GetInt64("offset")
		input := &public_type.GetTypeParams{
			Namespace: namespace,
			Limit:     &limit,
			Offset:    &offset,
		}
		ok, errOK := publicTypeService.GetTypeShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	GetTypeCmd.Flags().String("namespace", "", "Namespace")
	_ = GetTypeCmd.MarkFlagRequired("namespace")
	GetTypeCmd.Flags().Int64("limit", 20, "Limit")
	GetTypeCmd.Flags().Int64("offset", 0, "Offset")
}
