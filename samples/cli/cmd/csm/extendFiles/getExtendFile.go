// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package extendFiles

import (
	"log/slog"

	csm "github.com/AccelByte/accelbyte-go-modular-sdk/csm-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/csm-sdk/pkg/csmclient/extend_files"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// GetExtendFileCmd represents the GetExtendFile command
var GetExtendFileCmd = &cobra.Command{
	Use:   "getExtendFile",
	Short: "Get extend file",
	Long:  `Get extend file`,
	RunE: func(cmd *cobra.Command, args []string) error {
		extendFilesService := &csm.ExtendFilesService{
			Client:          csm.NewCsmClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		filePath, _ := cmd.Flags().GetString("filePath")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &extend_files.GetExtendFileParams{
			FilePath:  filePath,
			Namespace: namespace,
		}
		errOK := extendFilesService.GetExtendFileShort(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success.")

		return nil
	},
}

func init() {
	GetExtendFileCmd.Flags().String("filePath", "", "File path")
	_ = GetExtendFileCmd.MarkFlagRequired("filePath")
	GetExtendFileCmd.Flags().String("namespace", "", "Namespace")
	_ = GetExtendFileCmd.MarkFlagRequired("namespace")
}
