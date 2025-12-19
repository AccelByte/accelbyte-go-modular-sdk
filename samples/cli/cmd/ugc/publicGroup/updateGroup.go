// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package publicGroup

import (
	"encoding/json"
	"log/slog"

	ugc "github.com/AccelByte/accelbyte-go-modular-sdk/ugc-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/ugc-sdk/pkg/ugcclient/public_group"
	"github.com/AccelByte/accelbyte-go-modular-sdk/ugc-sdk/pkg/ugcclientmodels"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// UpdateGroupCmd represents the UpdateGroup command
var UpdateGroupCmd = &cobra.Command{
	Use:   "updateGroup",
	Short: "Update group",
	Long:  `Update group`,
	RunE: func(cmd *cobra.Command, args []string) error {
		publicGroupService := &ugc.PublicGroupService{
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
		userId, _ := cmd.Flags().GetString("userId")
		input := &public_group.UpdateGroupParams{
			Body:      body,
			GroupID:   groupId,
			Namespace: namespace,
			UserID:    userId,
		}
		ok, errOK := publicGroupService.UpdateGroupShort(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	UpdateGroupCmd.Flags().String("body", "", "Body")
	_ = UpdateGroupCmd.MarkFlagRequired("body")
	UpdateGroupCmd.Flags().String("groupId", "", "Group id")
	_ = UpdateGroupCmd.MarkFlagRequired("groupId")
	UpdateGroupCmd.Flags().String("namespace", "", "Namespace")
	_ = UpdateGroupCmd.MarkFlagRequired("namespace")
	UpdateGroupCmd.Flags().String("userId", "", "User id")
	_ = UpdateGroupCmd.MarkFlagRequired("userId")
}
