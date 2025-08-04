// Copyright (c) 2025 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package main

import (
	"fmt"
	"github.com/AccelByte/accelbyte-go-modular-sdk/lobby-sdk/pkg/lobbyclientmodels/wsm"
)

func init() {
	for k, v := range wsm.NewMessageFromMapRegistry {
		if _, exists := unifiedMessageFromMapRegistry[k]; exists {
			panic(fmt.Errorf("message type collision: %s", k))
		}
		unifiedMessageFromMapRegistry[k] = v
	}
}
