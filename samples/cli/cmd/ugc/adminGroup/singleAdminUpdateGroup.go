// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package adminGroup

import (
	"encoding/json"
	"log/slog"

	ugc "github.com/AccelByte/accelbyte-go-modular-sdk/ugc-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/ugc-sdk/pkg/ugcclient/admin_group"
	"github.com/AccelByte/accelbyte-go-modular-sdk/ugc-sdk/pkg/ugcclientmodels"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// SingleAdminUpdateGroupCmd represents the SingleAdminUpdateGroup command
var SingleAdminUpdateGroupCmd = &cobra.Command{
	Use:   "singleAdminUpdateGroup",
	Short: "Single admin update group",
	Long:  `Single admin update group`,
	RunE: func(cmd *cobra.Command, args []string) error {
		adminGroupService := &ugc.AdminGroupService{
			Client:          ugc.NewUgcClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *ugcclientmodels.ModelsCreateGroupRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		groupId, _ := cmd.Flags().GetString("groupId")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &admin_group.SingleAdminUpdateGroupParams{
			Body:      body,
			GroupID:   groupId,
			Namespace: namespace,
		}
		ok, errOK := adminGroupService.SingleAdminUpdateGroupShort(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	SingleAdminUpdateGroupCmd.Flags().String("body", "", "Body")
	_ = SingleAdminUpdateGroupCmd.MarkFlagRequired("body")
	SingleAdminUpdateGroupCmd.Flags().String("groupId", "", "Group id")
	_ = SingleAdminUpdateGroupCmd.MarkFlagRequired("groupId")
	SingleAdminUpdateGroupCmd.Flags().String("namespace", "", "Namespace")
	_ = SingleAdminUpdateGroupCmd.MarkFlagRequired("namespace")
}
