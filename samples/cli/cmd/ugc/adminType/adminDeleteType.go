// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package adminType

import (
	"log/slog"

	ugc "github.com/AccelByte/accelbyte-go-modular-sdk/ugc-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/ugc-sdk/pkg/ugcclient/admin_type"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// AdminDeleteTypeCmd represents the AdminDeleteType command
var AdminDeleteTypeCmd = &cobra.Command{
	Use:   "adminDeleteType",
	Short: "Admin delete type",
	Long:  `Admin delete type`,
	RunE: func(cmd *cobra.Command, args []string) error {
		adminTypeService := &ugc.AdminTypeService{
			Client:          ugc.NewUgcClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		typeId, _ := cmd.Flags().GetString("typeId")
		input := &admin_type.AdminDeleteTypeParams{
			Namespace: namespace,
			TypeID:    typeId,
		}
		errNoContent := adminTypeService.AdminDeleteTypeShort(input)
		if errNoContent != nil {
			slog.Error("operation failed", "error", errNoContent)

			return errNoContent
		}

		slog.Info("Response CLI success.")

		return nil
	},
}

func init() {
	AdminDeleteTypeCmd.Flags().String("namespace", "", "Namespace")
	_ = AdminDeleteTypeCmd.MarkFlagRequired("namespace")
	AdminDeleteTypeCmd.Flags().String("typeId", "", "Type id")
	_ = AdminDeleteTypeCmd.MarkFlagRequired("typeId")
}
