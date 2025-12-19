// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package publicFollow

import (
	"encoding/json"
	"log/slog"

	ugc "github.com/AccelByte/accelbyte-go-modular-sdk/ugc-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/ugc-sdk/pkg/ugcclient/public_follow"
	"github.com/AccelByte/accelbyte-go-modular-sdk/ugc-sdk/pkg/ugcclientmodels"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// UpdateUserFollowStatusCmd represents the UpdateUserFollowStatus command
var UpdateUserFollowStatusCmd = &cobra.Command{
	Use:   "updateUserFollowStatus",
	Short: "Update user follow status",
	Long:  `Update user follow status`,
	RunE: func(cmd *cobra.Command, args []string) error {
		publicFollowService := &ugc.PublicFollowService{
			Client:          ugc.NewUgcClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *ugcclientmodels.ModelsUserFollowRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &public_follow.UpdateUserFollowStatusParams{
			Body:      body,
			Namespace: namespace,
			UserID:    userId,
		}
		ok, errOK := publicFollowService.UpdateUserFollowStatusShort(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	UpdateUserFollowStatusCmd.Flags().String("body", "", "Body")
	_ = UpdateUserFollowStatusCmd.MarkFlagRequired("body")
	UpdateUserFollowStatusCmd.Flags().String("namespace", "", "Namespace")
	_ = UpdateUserFollowStatusCmd.MarkFlagRequired("namespace")
	UpdateUserFollowStatusCmd.Flags().String("userId", "", "User id")
	_ = UpdateUserFollowStatusCmd.MarkFlagRequired("userId")
}
