// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package sessionclient

import (
	"net/http"
	"strings"
	"time"

	"github.com/go-openapi/runtime"
	httptransport "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/utils"
	"github.com/AccelByte/accelbyte-go-modular-sdk/session-sdk/pkg/sessionclient/certificate"
	"github.com/AccelByte/accelbyte-go-modular-sdk/session-sdk/pkg/sessionclient/config"
	"github.com/AccelByte/accelbyte-go-modular-sdk/session-sdk/pkg/sessionclient/configuration_template"
	"github.com/AccelByte/accelbyte-go-modular-sdk/session-sdk/pkg/sessionclient/d_s_m_c_default_configuration"
	"github.com/AccelByte/accelbyte-go-modular-sdk/session-sdk/pkg/sessionclient/environment_variable"
	"github.com/AccelByte/accelbyte-go-modular-sdk/session-sdk/pkg/sessionclient/game_session"
	"github.com/AccelByte/accelbyte-go-modular-sdk/session-sdk/pkg/sessionclient/global_configuration"
	"github.com/AccelByte/accelbyte-go-modular-sdk/session-sdk/pkg/sessionclient/max_active"
	"github.com/AccelByte/accelbyte-go-modular-sdk/session-sdk/pkg/sessionclient/native_session"
	"github.com/AccelByte/accelbyte-go-modular-sdk/session-sdk/pkg/sessionclient/operations"
	"github.com/AccelByte/accelbyte-go-modular-sdk/session-sdk/pkg/sessionclient/party"
	"github.com/AccelByte/accelbyte-go-modular-sdk/session-sdk/pkg/sessionclient/platform_credential"
	"github.com/AccelByte/accelbyte-go-modular-sdk/session-sdk/pkg/sessionclient/player"
	"github.com/AccelByte/accelbyte-go-modular-sdk/session-sdk/pkg/sessionclient/recent_player"
	"github.com/AccelByte/accelbyte-go-modular-sdk/session-sdk/pkg/sessionclient/session_storage"
)

// Default justice session service HTTP client.
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

// NewHTTPClient creates a new justice session service HTTP client.
func NewHTTPClient(formats strfmt.Registry) *JusticeSessionService {
	return NewHTTPClientWithConfig(formats, nil)
}

// NewHTTPClientWithConfig creates a new justice session service HTTP client,
// using a customizable transport config.
func NewHTTPClientWithConfig(formats strfmt.Registry, cfg *TransportConfig) *JusticeSessionService {
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

// New creates a new justice session service client
func New(transport runtime.ClientTransport, runtime *httptransport.Runtime, formats strfmt.Registry) *JusticeSessionService {
	// ensure nullable parameters have default
	if formats == nil {
		formats = strfmt.Default
	}

	cli := new(JusticeSessionService)
	cli.Transport = transport
	cli.Runtime = runtime
	cli.Certificate = certificate.New(transport, formats)
	cli.Config = config.New(transport, formats)
	cli.ConfigurationTemplate = configuration_template.New(transport, formats)
	cli.DsmcDefaultConfiguration = d_s_m_c_default_configuration.New(transport, formats)
	cli.EnvironmentVariable = environment_variable.New(transport, formats)
	cli.GameSession = game_session.New(transport, formats)
	cli.GlobalConfiguration = global_configuration.New(transport, formats)
	cli.MaxActive = max_active.New(transport, formats)
	cli.NativeSession = native_session.New(transport, formats)
	cli.Party = party.New(transport, formats)
	cli.PlatformCredential = platform_credential.New(transport, formats)
	cli.Player = player.New(transport, formats)
	cli.RecentPlayer = recent_player.New(transport, formats)
	cli.SessionStorage = session_storage.New(transport, formats)
	cli.Operations = operations.New(transport, formats)

	return cli
}

func NewDateTime(t time.Time) strfmt.DateTime {
	return strfmt.DateTime(t)
}

func NewClientWithBasePath(url string, endpoint string) *JusticeSessionService {
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

// JusticeSessionService is a client for justice session service
type JusticeSessionService struct {
	Certificate certificate.ClientService

	Config config.ClientService

	ConfigurationTemplate configuration_template.ClientService

	DsmcDefaultConfiguration d_s_m_c_default_configuration.ClientService

	EnvironmentVariable environment_variable.ClientService

	GameSession game_session.ClientService

	GlobalConfiguration global_configuration.ClientService

	MaxActive max_active.ClientService

	NativeSession native_session.ClientService

	Party party.ClientService

	PlatformCredential platform_credential.ClientService

	Player player.ClientService

	RecentPlayer recent_player.ClientService

	SessionStorage session_storage.ClientService

	Operations operations.ClientService

	Runtime   *httptransport.Runtime
	Transport runtime.ClientTransport
}

// SetTransport changes the transport on the client and all its subresources
func (c *JusticeSessionService) SetTransport(transport runtime.ClientTransport) {
	c.Transport = transport
	c.Certificate.SetTransport(transport)
	c.Config.SetTransport(transport)
	c.ConfigurationTemplate.SetTransport(transport)
	c.DsmcDefaultConfiguration.SetTransport(transport)
	c.EnvironmentVariable.SetTransport(transport)
	c.GameSession.SetTransport(transport)
	c.GlobalConfiguration.SetTransport(transport)
	c.MaxActive.SetTransport(transport)
	c.NativeSession.SetTransport(transport)
	c.Party.SetTransport(transport)
	c.PlatformCredential.SetTransport(transport)
	c.Player.SetTransport(transport)
	c.RecentPlayer.SetTransport(transport)
	c.SessionStorage.SetTransport(transport)
	c.Operations.SetTransport(transport)
}
