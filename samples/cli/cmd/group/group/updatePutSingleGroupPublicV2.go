// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package group

import (
	"encoding/json"
	"log/slog"

	group "github.com/AccelByte/accelbyte-go-modular-sdk/group-sdk/pkg"
	group_ "github.com/AccelByte/accelbyte-go-modular-sdk/group-sdk/pkg/groupclient/group"
	"github.com/AccelByte/accelbyte-go-modular-sdk/group-sdk/pkg/groupclientmodels"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// UpdatePutSingleGroupPublicV2Cmd represents the UpdatePutSingleGroupPublicV2 command
var UpdatePutSingleGroupPublicV2Cmd = &cobra.Command{
	Use:   "updatePutSingleGroupPublicV2",
	Short: "Update put single group public V2",
	Long:  `Update put single group public V2`,
	RunE: func(cmd *cobra.Command, args []string) error {
		groupService := &group.GroupService{
			Client:          group.NewGroupClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *groupclientmodels.ModelsUpdateGroupRequestV1
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		groupId, _ := cmd.Flags().GetString("groupId")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &group_.UpdatePutSingleGroupPublicV2Params{
			Body:      body,
			GroupID:   groupId,
			Namespace: namespace,
		}
		ok, errOK := groupService.UpdatePutSingleGroupPublicV2Short(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	UpdatePutSingleGroupPublicV2Cmd.Flags().String("body", "", "Body")
	_ = UpdatePutSingleGroupPublicV2Cmd.MarkFlagRequired("body")
	UpdatePutSingleGroupPublicV2Cmd.Flags().String("groupId", "", "Group id")
	_ = UpdatePutSingleGroupPublicV2Cmd.MarkFlagRequired("groupId")
	UpdatePutSingleGroupPublicV2Cmd.Flags().String("namespace", "", "Namespace")
	_ = UpdatePutSingleGroupPublicV2Cmd.MarkFlagRequired("namespace")
}
