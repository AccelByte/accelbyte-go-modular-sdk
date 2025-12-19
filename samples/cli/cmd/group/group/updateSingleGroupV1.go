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

// UpdateSingleGroupV1Cmd represents the UpdateSingleGroupV1 command
var UpdateSingleGroupV1Cmd = &cobra.Command{
	Use:   "updateSingleGroupV1",
	Short: "Update single group V1",
	Long:  `Update single group V1`,
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
		input := &group_.UpdateSingleGroupV1Params{
			Body:      body,
			GroupID:   groupId,
			Namespace: namespace,
		}
		ok, errOK := groupService.UpdateSingleGroupV1Short(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	UpdateSingleGroupV1Cmd.Flags().String("body", "", "Body")
	_ = UpdateSingleGroupV1Cmd.MarkFlagRequired("body")
	UpdateSingleGroupV1Cmd.Flags().String("groupId", "", "Group id")
	_ = UpdateSingleGroupV1Cmd.MarkFlagRequired("groupId")
	UpdateSingleGroupV1Cmd.Flags().String("namespace", "", "Namespace")
	_ = UpdateSingleGroupV1Cmd.MarkFlagRequired("namespace")
}
