// Copyright (c) 2023 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package main

import (
	"encoding/json"
	"log/slog"
	"os"

	custom_sdk "custom-operation/custom-sdk"
	"custom-operation/services-api/pkg/service/custom"
)

func main() {
	// Arrange - call custom service client (wrapper)
	CustomService := &custom.CustomService{
		Client: custom_sdk.NewClientWithBasePath("www.googleapis.com", ""),
	}

	// Execute - call the custom search endpoint
	limit := int64(1)
	ok, err := CustomService.CustomSearch(&custom_sdk.CustomSearchParams{
		Cx:   os.Getenv("CX"),
		Num:  &limit,
		Q:    "query",
		Safe: "off",
		Key:  os.Getenv("KEY"),
	})
	if err != nil {
		slog.Error("unable to call the custom service", "error", err.Error())

		return
	}

	// Result
	val, err := json.MarshalIndent(ok, "", "    ")
	if err != nil {
		slog.Error("unable to marshal the response", "error", err.Error())

		return
	}

	slog.Info("successfully invoke the custom service", "response", string(val))
}
