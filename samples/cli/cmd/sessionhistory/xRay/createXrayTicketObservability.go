// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package xRay

import (
	"encoding/json"
	"log/slog"

	sessionhistory "github.com/AccelByte/accelbyte-go-modular-sdk/sessionhistory-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/sessionhistory-sdk/pkg/sessionhistoryclient/x_ray"
	"github.com/AccelByte/accelbyte-go-modular-sdk/sessionhistory-sdk/pkg/sessionhistoryclientmodels"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// CreateXrayTicketObservabilityCmd represents the CreateXrayTicketObservability command
var CreateXrayTicketObservabilityCmd = &cobra.Command{
	Use:   "createXrayTicketObservability",
	Short: "Create xray ticket observability",
	Long:  `Create xray ticket observability`,
	RunE: func(cmd *cobra.Command, args []string) error {
		xRayService := &sessionhistory.XRayService{
			Client:          sessionhistory.NewSessionhistoryClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *sessionhistoryclientmodels.ApimodelsXRayTicketObservabilityRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &x_ray.CreateXrayTicketObservabilityParams{
			Body:      body,
			Namespace: namespace,
		}
		ok, errOK := xRayService.CreateXrayTicketObservabilityShort(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	CreateXrayTicketObservabilityCmd.Flags().String("body", "", "Body")
	_ = CreateXrayTicketObservabilityCmd.MarkFlagRequired("body")
	CreateXrayTicketObservabilityCmd.Flags().String("namespace", "", "Namespace")
	_ = CreateXrayTicketObservabilityCmd.MarkFlagRequired("namespace")
}
