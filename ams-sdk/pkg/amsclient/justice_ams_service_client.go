// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package amsclient

import (
	"net/http"
	"strings"
	"time"

	"github.com/go-openapi/runtime"
	httptransport "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-modular-sdk/ams-sdk/pkg/amsclient/a_m_s_info"
	"github.com/AccelByte/accelbyte-go-modular-sdk/ams-sdk/pkg/amsclient/a_m_s_qo_s"
	"github.com/AccelByte/accelbyte-go-modular-sdk/ams-sdk/pkg/amsclient/account"
	"github.com/AccelByte/accelbyte-go-modular-sdk/ams-sdk/pkg/amsclient/artifacts"
	"github.com/AccelByte/accelbyte-go-modular-sdk/ams-sdk/pkg/amsclient/auth"
	"github.com/AccelByte/accelbyte-go-modular-sdk/ams-sdk/pkg/amsclient/development"
	"github.com/AccelByte/accelbyte-go-modular-sdk/ams-sdk/pkg/amsclient/fleet_commander"
	"github.com/AccelByte/accelbyte-go-modular-sdk/ams-sdk/pkg/amsclient/fleets"
	"github.com/AccelByte/accelbyte-go-modular-sdk/ams-sdk/pkg/amsclient/images"
	"github.com/AccelByte/accelbyte-go-modular-sdk/ams-sdk/pkg/amsclient/servers"
	"github.com/AccelByte/accelbyte-go-modular-sdk/ams-sdk/pkg/amsclient/watchdogs"
	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/utils"
)

// Default justice ams service HTTP client.
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

// NewHTTPClient creates a new justice ams service HTTP client.
func NewHTTPClient(formats strfmt.Registry) *JusticeAmsService {
	return NewHTTPClientWithConfig(formats, nil)
}

// NewHTTPClientWithConfig creates a new justice ams service HTTP client,
// using a customizable transport config.
func NewHTTPClientWithConfig(formats strfmt.Registry, cfg *TransportConfig) *JusticeAmsService {
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

// New creates a new justice ams service client
func New(transport runtime.ClientTransport, runtime *httptransport.Runtime, formats strfmt.Registry) *JusticeAmsService {
	// ensure nullable parameters have default
	if formats == nil {
		formats = strfmt.Default
	}

	cli := new(JusticeAmsService)
	cli.Transport = transport
	cli.Runtime = runtime
	cli.AmsInfo = a_m_s_info.New(transport, formats)
	cli.AmsQos = a_m_s_qo_s.New(transport, formats)
	cli.Account = account.New(transport, formats)
	cli.Artifacts = artifacts.New(transport, formats)
	cli.Auth = auth.New(transport, formats)
	cli.Development = development.New(transport, formats)
	cli.FleetCommander = fleet_commander.New(transport, formats)
	cli.Fleets = fleets.New(transport, formats)
	cli.Images = images.New(transport, formats)
	cli.Servers = servers.New(transport, formats)
	cli.Watchdogs = watchdogs.New(transport, formats)

	return cli
}

func NewDateTime(t time.Time) strfmt.DateTime {
	return strfmt.DateTime(t)
}

func NewClientWithBasePath(url string, endpoint string) *JusticeAmsService {
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

// JusticeAmsService is a client for justice ams service
type JusticeAmsService struct {
	AmsInfo a_m_s_info.ClientService

	AmsQos a_m_s_qo_s.ClientService

	Account account.ClientService

	Artifacts artifacts.ClientService

	Auth auth.ClientService

	Development development.ClientService

	FleetCommander fleet_commander.ClientService

	Fleets fleets.ClientService

	Images images.ClientService

	Servers servers.ClientService

	Watchdogs watchdogs.ClientService

	Runtime   *httptransport.Runtime
	Transport runtime.ClientTransport
}

// SetTransport changes the transport on the client and all its subresources
func (c *JusticeAmsService) SetTransport(transport runtime.ClientTransport) {
	c.Transport = transport
	c.AmsInfo.SetTransport(transport)
	c.AmsQos.SetTransport(transport)
	c.Account.SetTransport(transport)
	c.Artifacts.SetTransport(transport)
	c.Auth.SetTransport(transport)
	c.Development.SetTransport(transport)
	c.FleetCommander.SetTransport(transport)
	c.Fleets.SetTransport(transport)
	c.Images.SetTransport(transport)
	c.Servers.SetTransport(transport)
	c.Watchdogs.SetTransport(transport)
}
