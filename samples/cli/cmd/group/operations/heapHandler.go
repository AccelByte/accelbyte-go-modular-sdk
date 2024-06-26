// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package operations

import (
	group "github.com/AccelByte/accelbyte-go-modular-sdk/group-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/group-sdk/pkg/groupclient/operations"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// HeapHandlerCmd represents the HeapHandler command
var HeapHandlerCmd = &cobra.Command{
	Use:   "heapHandler",
	Short: "Heap handler",
	Long:  `Heap handler`,
	RunE: func(cmd *cobra.Command, args []string) error {
		operationsService := &group.OperationsService{
			Client:          group.NewGroupClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		input := &operations.HeapHandlerParams{}
		errOK := operationsService.HeapHandlerShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success.")

		return nil
	},
}

func init() {
}
