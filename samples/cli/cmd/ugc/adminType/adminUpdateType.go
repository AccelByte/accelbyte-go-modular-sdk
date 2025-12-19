// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package adminType

import (
	"encoding/json"
	"log/slog"

	ugc "github.com/AccelByte/accelbyte-go-modular-sdk/ugc-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/ugc-sdk/pkg/ugcclient/admin_type"
	"github.com/AccelByte/accelbyte-go-modular-sdk/ugc-sdk/pkg/ugcclientmodels"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// AdminUpdateTypeCmd represents the AdminUpdateType command
var AdminUpdateTypeCmd = &cobra.Command{
	Use:   "adminUpdateType",
	Short: "Admin update type",
	Long:  `Admin update type`,
	RunE: func(cmd *cobra.Command, args []string) error {
		adminTypeService := &ugc.AdminTypeService{
			Client:          ugc.NewUgcClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *ugcclientmodels.ModelsCreateTypeRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		typeId, _ := cmd.Flags().GetString("typeId")
		input := &admin_type.AdminUpdateTypeParams{
			Body:      body,
			Namespace: namespace,
			TypeID:    typeId,
		}
		ok, errOK := adminTypeService.AdminUpdateTypeShort(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	AdminUpdateTypeCmd.Flags().String("body", "", "Body")
	_ = AdminUpdateTypeCmd.MarkFlagRequired("body")
	AdminUpdateTypeCmd.Flags().String("namespace", "", "Namespace")
	_ = AdminUpdateTypeCmd.MarkFlagRequired("namespace")
	AdminUpdateTypeCmd.Flags().String("typeId", "", "Type id")
	_ = AdminUpdateTypeCmd.MarkFlagRequired("typeId")
}
