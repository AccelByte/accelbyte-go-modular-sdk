// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package dsmcclient

import (
	"net/http"
	"strings"
	"time"

	"github.com/go-openapi/runtime"
	httptransport "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-modular-sdk/dsmc-sdk/pkg/dsmcclient/admin"
	"github.com/AccelByte/accelbyte-go-modular-sdk/dsmc-sdk/pkg/dsmcclient/config"
	"github.com/AccelByte/accelbyte-go-modular-sdk/dsmc-sdk/pkg/dsmcclient/deployment_config"
	"github.com/AccelByte/accelbyte-go-modular-sdk/dsmc-sdk/pkg/dsmcclient/dsmc_operations"
	"github.com/AccelByte/accelbyte-go-modular-sdk/dsmc-sdk/pkg/dsmcclient/image_config"
	"github.com/AccelByte/accelbyte-go-modular-sdk/dsmc-sdk/pkg/dsmcclient/pod_config"
	"github.com/AccelByte/accelbyte-go-modular-sdk/dsmc-sdk/pkg/dsmcclient/public"
	"github.com/AccelByte/accelbyte-go-modular-sdk/dsmc-sdk/pkg/dsmcclient/server"
	"github.com/AccelByte/accelbyte-go-modular-sdk/dsmc-sdk/pkg/dsmcclient/session"
	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/utils"
)

// Default justice dsmc service HTTP client.
var Default = NewHTTPClient(nil)

const (
	// DefaultHost is the default Host
	// found in Meta (info) section of spec file
	DefaultHost string = "demo.accelbyte.io"
	// DefaultBasePath is the default BasePath
	// found in Meta (info) section of spec file
	DefaultBasePath string = "/"
)

type userAgentRoundTripper struct {
	userAgentFunc func() string
}

func (r *userAgentRoundTripper) RoundTrip(req *http.Request) (*http.Response, error) {
	req.Header.Set("User-Agent", r.userAgentFunc())
	return http.DefaultTransport.RoundTrip(req)
}

// DefaultSchemes are the default schemes found in Meta (info) section of spec file
var DefaultSchemes = []string{"https"}

// NewHTTPClient creates a new justice dsmc service HTTP client.
func NewHTTPClient(formats strfmt.Registry) *JusticeDsmcService {
	return NewHTTPClientWithConfig(formats, nil)
}

// NewHTTPClientWithConfig creates a new justice dsmc service HTTP client,
// using a customizable transport config.
func NewHTTPClientWithConfig(formats strfmt.Registry, cfg *TransportConfig) *JusticeDsmcService {
	// ensure nullable parameters have default
	if cfg == nil {
		cfg = DefaultTransportConfig()
	}

	// create transport and client
	transport := httptransport.New(cfg.Host, cfg.BasePath, cfg.Schemes)
	if cfg.UserAgentFunc != nil {
		transport.Transport = &userAgentRoundTripper{
			userAgentFunc: cfg.UserAgentFunc,
		}
	}

	// custom transport runtime
	utils.CustomTransportRuntime(transport)

	return New(transport, transport, formats)
}

// New creates a new justice dsmc service client
func New(transport runtime.ClientTransport, runtime *httptransport.Runtime, formats strfmt.Registry) *JusticeDsmcService {
	// ensure nullable parameters have default
	if formats == nil {
		formats = strfmt.Default
	}

	cli := new(JusticeDsmcService)
	cli.Transport = transport
	cli.Runtime = runtime
	cli.Admin = admin.New(transport, formats)
	cli.Config = config.New(transport, formats)
	cli.DeploymentConfig = deployment_config.New(transport, formats)
	cli.DsmcOperations = dsmc_operations.New(transport, formats)
	cli.ImageConfig = image_config.New(transport, formats)
	cli.PodConfig = pod_config.New(transport, formats)
	cli.Public = public.New(transport, formats)
	cli.Server = server.New(transport, formats)
	cli.Session = session.New(transport, formats)

	return cli
}

func NewDateTime(t time.Time) strfmt.DateTime {
	return strfmt.DateTime(t)
}

func NewClientWithBasePath(url string, endpoint string) *JusticeDsmcService {
	schemes := []string{"http"}
	if strings.HasSuffix(url, ":443") {
		schemes = []string{"https"}
	}

	transport := httptransport.New(url, endpoint, schemes)

	return New(transport, transport, strfmt.Default)
}

// DefaultTransportConfig creates a TransportConfig with the
// default settings taken from the meta section of the spec file.
func DefaultTransportConfig() *TransportConfig {
	return &TransportConfig{
		Host:     DefaultHost,
		BasePath: DefaultBasePath,
		Schemes:  DefaultSchemes,
	}
}

// TransportConfig contains the transport related info,
// found in the meta section of the spec file.
type TransportConfig struct {
	Host          string
	BasePath      string
	Schemes       []string
	UserAgentFunc func() string
}

// WithHost overrides the default host,
// provided by the meta section of the spec file.
func (cfg *TransportConfig) WithHost(host string) *TransportConfig {
	cfg.Host = host
	return cfg
}

// WithBasePath overrides the default basePath,
// provided by the meta section of the spec file.
func (cfg *TransportConfig) WithBasePath(basePath string) *TransportConfig {
	cfg.BasePath = basePath
	return cfg
}

// WithSchemes overrides the default schemes,
// provided by the meta section of the spec file.
func (cfg *TransportConfig) WithSchemes(schemes []string) *TransportConfig {
	cfg.Schemes = schemes
	return cfg
}

// JusticeDsmcService is a client for justice dsmc service
type JusticeDsmcService struct {
	Admin admin.ClientService

	Config config.ClientService

	DeploymentConfig deployment_config.ClientService

	DsmcOperations dsmc_operations.ClientService

	ImageConfig image_config.ClientService

	PodConfig pod_config.ClientService

	Public public.ClientService

	Server server.ClientService

	Session session.ClientService

	Runtime   *httptransport.Runtime
	Transport runtime.ClientTransport
}

// SetTransport changes the transport on the client and all its subresources
func (c *JusticeDsmcService) SetTransport(transport runtime.ClientTransport) {
	c.Transport = transport
	c.Admin.SetTransport(transport)
	c.Config.SetTransport(transport)
	c.DeploymentConfig.SetTransport(transport)
	c.DsmcOperations.SetTransport(transport)
	c.ImageConfig.SetTransport(transport)
	c.PodConfig.SetTransport(transport)
	c.Public.SetTransport(transport)
	c.Server.SetTransport(transport)
	c.Session.SetTransport(transport)
}
