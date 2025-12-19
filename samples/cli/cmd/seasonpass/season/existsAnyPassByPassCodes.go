// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package season

import (
	"encoding/json"
	"log/slog"

	seasonpass "github.com/AccelByte/accelbyte-go-modular-sdk/seasonpass-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/seasonpass-sdk/pkg/seasonpassclient/season"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// ExistsAnyPassByPassCodesCmd represents the ExistsAnyPassByPassCodes command
var ExistsAnyPassByPassCodesCmd = &cobra.Command{
	Use:   "existsAnyPassByPassCodes",
	Short: "Exists any pass by pass codes",
	Long:  `Exists any pass by pass codes`,
	RunE: func(cmd *cobra.Command, args []string) error {
		seasonService := &seasonpass.SeasonService{
			Client:          seasonpass.NewSeasonpassClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		passCodesString := cmd.Flag("passCodes").Value.String()
		var passCodes []string
		errPassCodes := json.Unmarshal([]byte(passCodesString), &passCodes)
		if errPassCodes != nil {
			return errPassCodes
		}
		input := &season.ExistsAnyPassByPassCodesParams{
			Namespace: namespace,
			UserID:    userId,
			PassCodes: passCodes,
		}
		ok, errOK := seasonService.ExistsAnyPassByPassCodesShort(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	ExistsAnyPassByPassCodesCmd.Flags().String("namespace", "", "Namespace")
	_ = ExistsAnyPassByPassCodesCmd.MarkFlagRequired("namespace")
	ExistsAnyPassByPassCodesCmd.Flags().String("userId", "", "User id")
	_ = ExistsAnyPassByPassCodesCmd.MarkFlagRequired("userId")
	ExistsAnyPassByPassCodesCmd.Flags().String("passCodes", "", "Pass codes")
}
