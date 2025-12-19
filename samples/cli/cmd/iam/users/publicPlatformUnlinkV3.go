// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package users

import (
	"encoding/json"
	"log/slog"

	iam "github.com/AccelByte/accelbyte-go-modular-sdk/iam-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/iam-sdk/pkg/iamclient/users"
	"github.com/AccelByte/accelbyte-go-modular-sdk/iam-sdk/pkg/iamclientmodels"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// PublicPlatformUnlinkV3Cmd represents the PublicPlatformUnlinkV3 command
var PublicPlatformUnlinkV3Cmd = &cobra.Command{
	Use:   "publicPlatformUnlinkV3",
	Short: "Public platform unlink V3",
	Long:  `Public platform unlink V3`,
	RunE: func(cmd *cobra.Command, args []string) error {
		usersService := &iam.UsersService{
			Client:          iam.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *iamclientmodels.ModelUnlinkUserPlatformRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		platformId, _ := cmd.Flags().GetString("platformId")
		input := &users.PublicPlatformUnlinkV3Params{
			Body:       body,
			Namespace:  namespace,
			PlatformID: platformId,
		}
		errNoContent := usersService.PublicPlatformUnlinkV3Short(input)
		if errNoContent != nil {
			slog.Error("operation failed", "error", errNoContent)

			return errNoContent
		}

		slog.Info("Response CLI success.")

		return nil
	},
}

func init() {
	PublicPlatformUnlinkV3Cmd.Flags().String("body", "", "Body")
	_ = PublicPlatformUnlinkV3Cmd.MarkFlagRequired("body")
	PublicPlatformUnlinkV3Cmd.Flags().String("namespace", "", "Namespace")
	_ = PublicPlatformUnlinkV3Cmd.MarkFlagRequired("namespace")
	PublicPlatformUnlinkV3Cmd.Flags().String("platformId", "", "Platform id")
	_ = PublicPlatformUnlinkV3Cmd.MarkFlagRequired("platformId")
}
