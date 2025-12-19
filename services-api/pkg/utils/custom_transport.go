// Copyright (c) 2022 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package utils

import (
	"log/slog"
	"net/http"
	"os"

	"github.com/go-openapi/runtime"
	httptransport "github.com/go-openapi/runtime/client"
)

type CustomTransport struct {
	inner http.RoundTripper
}

func SetLogger(inner http.RoundTripper) http.RoundTripper {
	return &CustomTransport{
		inner: inner,
	}
}

func (c *CustomTransport) RoundTrip(r *http.Request) (*http.Response, error) {
	// enabling log
	if os.Getenv("ENABLE_LOG") == "true" {
		// logger request
		slog.Info("LogRequest", "request", LogRequest(r))

		// logger response
		res, err := c.inner.RoundTrip(r)
		if err != nil {
			slog.Error("failed to use the RoundTrip method", "error", err)
		} else {
			slog.Info("Response", "response", LogResponse(res))
		}

		return res, err
	}

	return c.inner.RoundTrip(r)
}

func CustomTransportRuntime(transport *httptransport.Runtime) *httptransport.Runtime {
	transport.Producers["*/*"] = runtime.JSONProducer()
	transport.Consumers["text/x-log"] = runtime.JSONConsumer()
	transport.Consumers["text/plain"] = runtime.JSONConsumer()
	transport.Consumers["application/problem+json"] = runtime.JSONConsumer()
	transport.Consumers["application/x-www-form-urlencoded"] = runtime.JSONConsumer()
	transport.Consumers["image/png"] = runtime.ByteStreamConsumer()
	transport.Consumers["application/pdf"] = runtime.ByteStreamConsumer()
	transport.Consumers["application/zip"] = runtime.ByteStreamConsumer()
	transport.Consumers["application/x-zip-compressed"] = runtime.ByteStreamConsumer()

	// optional custom request header
	transport.Transport = SetLogger(transport.Transport)

	return transport
}
