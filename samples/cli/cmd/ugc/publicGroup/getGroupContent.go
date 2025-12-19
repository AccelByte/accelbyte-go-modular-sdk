// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package publicGroup

import (
	"log/slog"

	ugc "github.com/AccelByte/accelbyte-go-modular-sdk/ugc-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/ugc-sdk/pkg/ugcclient/public_group"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// GetGroupContentCmd represents the GetGroupContent command
var GetGroupContentCmd = &cobra.Command{
	Use:   "getGroupContent",
	Short: "Get group content",
	Long:  `Get group content`,
	RunE: func(cmd *cobra.Command, args []string) error {
		publicGroupService := &ugc.PublicGroupService{
			Client:          ugc.NewUgcClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		groupId, _ := cmd.Flags().GetString("groupId")
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		limit, _ := cmd.Flags().GetInt64("limit")
		offset, _ := cmd.Flags().GetInt64("offset")
		input := &public_group.GetGroupContentParams{
			GroupID:   groupId,
			Namespace: namespace,
			UserID:    userId,
			Limit:     &limit,
			Offset:    &offset,
		}
		ok, errOK := publicGroupService.GetGroupContentShort(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	GetGroupContentCmd.Flags().String("groupId", "", "Group id")
	_ = GetGroupContentCmd.MarkFlagRequired("groupId")
	GetGroupContentCmd.Flags().String("namespace", "", "Namespace")
	_ = GetGroupContentCmd.MarkFlagRequired("namespace")
	GetGroupContentCmd.Flags().String("userId", "", "User id")
	_ = GetGroupContentCmd.MarkFlagRequired("userId")
	GetGroupContentCmd.Flags().Int64("limit", 20, "Limit")
	GetGroupContentCmd.Flags().Int64("offset", 0, "Offset")
}
