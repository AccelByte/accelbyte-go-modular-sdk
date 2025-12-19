// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package oAuth20V4

import (
	"log/slog"

	iam "github.com/AccelByte/accelbyte-go-modular-sdk/iam-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/iam-sdk/pkg/iamclient/o_auth2_0_v4"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// GenerateTokenByNewHeadlessAccountV4Cmd represents the GenerateTokenByNewHeadlessAccountV4 command
var GenerateTokenByNewHeadlessAccountV4Cmd = &cobra.Command{
	Use:   "generateTokenByNewHeadlessAccountV4",
	Short: "Generate token by new headless account V4",
	Long:  `Generate token by new headless account V4`,
	RunE: func(cmd *cobra.Command, args []string) error {
		oAuth20V4Service := &iam.OAuth20v4Service{
			Client:          iam.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		linkingToken, _ := cmd.Flags().GetString("linkingToken")
		additionalData, _ := cmd.Flags().GetString("additionalData")
		extendExp, _ := cmd.Flags().GetBool("extendExp")
		input := &o_auth2_0_v4.GenerateTokenByNewHeadlessAccountV4Params{
			AdditionalData: &additionalData,
			ExtendExp:      &extendExp,
			LinkingToken:   linkingToken,
		}
		ok, errOK := oAuth20V4Service.GenerateTokenByNewHeadlessAccountV4Short(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	GenerateTokenByNewHeadlessAccountV4Cmd.Flags().String("additionalData", "", "Additional data")
	GenerateTokenByNewHeadlessAccountV4Cmd.Flags().Bool("extendExp", false, "Extend exp")
	GenerateTokenByNewHeadlessAccountV4Cmd.Flags().String("linkingToken", "", "Linking token")
	_ = GenerateTokenByNewHeadlessAccountV4Cmd.MarkFlagRequired("linkingToken")
}
