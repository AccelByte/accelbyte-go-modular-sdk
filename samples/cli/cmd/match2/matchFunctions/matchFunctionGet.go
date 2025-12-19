// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package matchFunctions

import (
	"log/slog"

	match2 "github.com/AccelByte/accelbyte-go-modular-sdk/match2-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/match2-sdk/pkg/match2client/match_functions"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// MatchFunctionGetCmd represents the MatchFunctionGet command
var MatchFunctionGetCmd = &cobra.Command{
	Use:   "matchFunctionGet",
	Short: "Match function get",
	Long:  `Match function get`,
	RunE: func(cmd *cobra.Command, args []string) error {
		matchFunctionsService := &match2.MatchFunctionsService{
			Client:          match2.NewMatch2Client(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		name, _ := cmd.Flags().GetString("name")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &match_functions.MatchFunctionGetParams{
			Name:      name,
			Namespace: namespace,
		}
		ok, errOK := matchFunctionsService.MatchFunctionGetShort(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	MatchFunctionGetCmd.Flags().String("name", "", "Name")
	_ = MatchFunctionGetCmd.MarkFlagRequired("name")
	MatchFunctionGetCmd.Flags().String("namespace", "", "Namespace")
	_ = MatchFunctionGetCmd.MarkFlagRequired("namespace")
}
