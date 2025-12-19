// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package oAuth20Extension

import (
	"log/slog"

	iam "github.com/AccelByte/accelbyte-go-modular-sdk/iam-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/iam-sdk/pkg/iamclient/o_auth2_0_extension"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// GenerateTokenByNewHeadlessAccountV3Cmd represents the GenerateTokenByNewHeadlessAccountV3 command
var GenerateTokenByNewHeadlessAccountV3Cmd = &cobra.Command{
	Use:   "generateTokenByNewHeadlessAccountV3",
	Short: "Generate token by new headless account V3",
	Long:  `Generate token by new headless account V3`,
	RunE: func(cmd *cobra.Command, args []string) error {
		oAuth20ExtensionService := &iam.OAuth20ExtensionService{
			Client:           iam.NewIamClient(&repository.ConfigRepositoryImpl{}),
			ConfigRepository: &repository.ConfigRepositoryImpl{},
			TokenRepository:  &repository.TokenRepositoryImpl{},
		}
		linkingToken, _ := cmd.Flags().GetString("linkingToken")
		additionalData, _ := cmd.Flags().GetString("additionalData")
		extendExp, _ := cmd.Flags().GetBool("extendExp")
		input := &o_auth2_0_extension.GenerateTokenByNewHeadlessAccountV3Params{
			AdditionalData: &additionalData,
			ExtendExp:      &extendExp,
			LinkingToken:   linkingToken,
		}
		ok, errOK := oAuth20ExtensionService.GenerateTokenByNewHeadlessAccountV3Short(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	GenerateTokenByNewHeadlessAccountV3Cmd.Flags().String("additionalData", "", "Additional data")
	GenerateTokenByNewHeadlessAccountV3Cmd.Flags().Bool("extendExp", false, "Extend exp")
	GenerateTokenByNewHeadlessAccountV3Cmd.Flags().String("linkingToken", "", "Linking token")
	_ = GenerateTokenByNewHeadlessAccountV3Cmd.MarkFlagRequired("linkingToken")
}
