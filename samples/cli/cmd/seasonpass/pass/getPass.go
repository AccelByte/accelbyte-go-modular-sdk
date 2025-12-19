// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package pass

import (
	"log/slog"

	seasonpass "github.com/AccelByte/accelbyte-go-modular-sdk/seasonpass-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/seasonpass-sdk/pkg/seasonpassclient/pass"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// GetPassCmd represents the GetPass command
var GetPassCmd = &cobra.Command{
	Use:   "getPass",
	Short: "Get pass",
	Long:  `Get pass`,
	RunE: func(cmd *cobra.Command, args []string) error {
		passService := &seasonpass.PassService{
			Client:          seasonpass.NewSeasonpassClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		code, _ := cmd.Flags().GetString("code")
		namespace, _ := cmd.Flags().GetString("namespace")
		seasonId, _ := cmd.Flags().GetString("seasonId")
		input := &pass.GetPassParams{
			Code:      code,
			Namespace: namespace,
			SeasonID:  seasonId,
		}
		ok, errOK := passService.GetPassShort(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	GetPassCmd.Flags().String("code", "", "Code")
	_ = GetPassCmd.MarkFlagRequired("code")
	GetPassCmd.Flags().String("namespace", "", "Namespace")
	_ = GetPassCmd.MarkFlagRequired("namespace")
	GetPassCmd.Flags().String("seasonId", "", "Season id")
	_ = GetPassCmd.MarkFlagRequired("seasonId")
}
