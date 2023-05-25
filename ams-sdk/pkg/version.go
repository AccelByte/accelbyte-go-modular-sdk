// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package ams

import (
	_ "embed"
	"fmt"
	"os"
	"strings"

	common "github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg"
)

const ServiceVersion = "0.1.0:15cdf3b8fa6708f0bae13b6f59cfa59ce96ecd4c - 2023-04-27T02:15:42+00:00"

//go:embed version.txt
var SDKVersion string

var userAgent = fmt.Sprintf("AccelByteGoSDK ams-sdk/%s core/%s",
	strings.TrimSpace(SDKVersion), strings.TrimSpace(common.Version))

func GetUserAgent() string {
	appName := os.Getenv("APP_CLIENT_NAME")
	if len(appName) > 0 {
		return fmt.Sprintf("%s (%s)", userAgent, appName)
	}
	return userAgent
}
