// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package namespace

import (
	"encoding/json"
	"log/slog"

	basic "github.com/AccelByte/accelbyte-go-modular-sdk/basic-sdk/pkg"
	namespace_ "github.com/AccelByte/accelbyte-go-modular-sdk/basic-sdk/pkg/basicclient/namespace"
	"github.com/AccelByte/accelbyte-go-modular-sdk/basic-sdk/pkg/basicclientmodels"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// UpdateTestingFlagCmd represents the UpdateTestingFlag command
var UpdateTestingFlagCmd = &cobra.Command{
	Use:   "updateTestingFlag",
	Short: "Update testing flag",
	Long:  `Update testing flag`,
	RunE: func(cmd *cobra.Command, args []string) error {
		namespaceService := &basic.NamespaceService{
			Client:          basic.NewBasicClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		bodyString := cmd.Flag("body").Value.String()
		var body *basicclientmodels.NamespaceTestingFlagUpdate
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		input := &namespace_.UpdateTestingFlagParams{
			Body:      body,
			Namespace: namespace,
		}
		ok, errOK := namespaceService.UpdateTestingFlagShort(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	UpdateTestingFlagCmd.Flags().String("body", "", "Body")
	UpdateTestingFlagCmd.Flags().String("namespace", "", "Namespace")
	_ = UpdateTestingFlagCmd.MarkFlagRequired("namespace")
}
