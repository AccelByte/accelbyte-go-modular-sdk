// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package override_role_config_v3

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-modular-sdk/iam-sdk/pkg/iamclientmodels"
)

// Deprecated: 2025-07-16 - Use AdminChangeRoleOverrideConfigStatusV3Identity<EnumValue>Constant instead.
// Get the enum in AdminChangeRoleOverrideConfigStatusV3Params
const (
	AdminChangeRoleOverrideConfigStatusV3GAMEADMINConstant = "GAME_ADMIN"
	AdminChangeRoleOverrideConfigStatusV3USERConstant      = "USER"
	AdminChangeRoleOverrideConfigStatusV3VIEWONLYConstant  = "VIEW_ONLY"
)

// Get the enum in AdminChangeRoleOverrideConfigStatusV3Params
const (
	AdminChangeRoleOverrideConfigStatusV3IdentityGAMEADMINConstant = "GAME_ADMIN"
	AdminChangeRoleOverrideConfigStatusV3IdentityUSERConstant      = "USER"
	AdminChangeRoleOverrideConfigStatusV3IdentityVIEWONLYConstant  = "VIEW_ONLY"
)

// NewAdminChangeRoleOverrideConfigStatusV3Params creates a new AdminChangeRoleOverrideConfigStatusV3Params object
// with the default values initialized.
func NewAdminChangeRoleOverrideConfigStatusV3Params() *AdminChangeRoleOverrideConfigStatusV3Params {
	var (
		identityDefault = string("USER")
	)
	return &AdminChangeRoleOverrideConfigStatusV3Params{
		Identity: identityDefault,

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminChangeRoleOverrideConfigStatusV3ParamsWithTimeout creates a new AdminChangeRoleOverrideConfigStatusV3Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminChangeRoleOverrideConfigStatusV3ParamsWithTimeout(timeout time.Duration) *AdminChangeRoleOverrideConfigStatusV3Params {
	var (
		identityDefault = string("USER")
	)
	return &AdminChangeRoleOverrideConfigStatusV3Params{
		Identity: identityDefault,

		timeout: timeout,
	}
}

// NewAdminChangeRoleOverrideConfigStatusV3ParamsWithContext creates a new AdminChangeRoleOverrideConfigStatusV3Params object
// with the default values initialized, and the ability to set a context for a request
func NewAdminChangeRoleOverrideConfigStatusV3ParamsWithContext(ctx context.Context) *AdminChangeRoleOverrideConfigStatusV3Params {
	var (
		identityDefault = string("USER")
	)
	return &AdminChangeRoleOverrideConfigStatusV3Params{
		Identity: identityDefault,

		Context: ctx,
	}
}

// NewAdminChangeRoleOverrideConfigStatusV3ParamsWithHTTPClient creates a new AdminChangeRoleOverrideConfigStatusV3Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminChangeRoleOverrideConfigStatusV3ParamsWithHTTPClient(client *http.Client) *AdminChangeRoleOverrideConfigStatusV3Params {
	var (
		identityDefault = string("USER")
	)
	return &AdminChangeRoleOverrideConfigStatusV3Params{
		Identity:   identityDefault,
		HTTPClient: client,
	}
}

/*AdminChangeRoleOverrideConfigStatusV3Params contains all the parameters to send to the API endpoint
for the admin change role override config status v3 operation typically these are written to a http.Request
*/
type AdminChangeRoleOverrideConfigStatusV3Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *iamclientmodels.ModelRoleOverrideStatsUpdateRequest
	/*Namespace
	  Namespace, only accept alphabet and numeric

	*/
	Namespace string
	/*Identity
	  Role identity

	*/
	Identity string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the admin change role override config status v3 params
func (o *AdminChangeRoleOverrideConfigStatusV3Params) WithTimeout(timeout time.Duration) *AdminChangeRoleOverrideConfigStatusV3Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin change role override config status v3 params
func (o *AdminChangeRoleOverrideConfigStatusV3Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin change role override config status v3 params
func (o *AdminChangeRoleOverrideConfigStatusV3Params) WithContext(ctx context.Context) *AdminChangeRoleOverrideConfigStatusV3Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin change role override config status v3 params
func (o *AdminChangeRoleOverrideConfigStatusV3Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin change role override config status v3 params
func (o *AdminChangeRoleOverrideConfigStatusV3Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin change role override config status v3 params
func (o *AdminChangeRoleOverrideConfigStatusV3Params) WithHTTPClient(client *http.Client) *AdminChangeRoleOverrideConfigStatusV3Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin change role override config status v3 params
func (o *AdminChangeRoleOverrideConfigStatusV3Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin change role override config status v3 params
func (o *AdminChangeRoleOverrideConfigStatusV3Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *AdminChangeRoleOverrideConfigStatusV3Params) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the admin change role override config status v3 params
func (o *AdminChangeRoleOverrideConfigStatusV3Params) WithBody(body *iamclientmodels.ModelRoleOverrideStatsUpdateRequest) *AdminChangeRoleOverrideConfigStatusV3Params {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the admin change role override config status v3 params
func (o *AdminChangeRoleOverrideConfigStatusV3Params) SetBody(body *iamclientmodels.ModelRoleOverrideStatsUpdateRequest) {
	o.Body = body
}

// WithNamespace adds the namespace to the admin change role override config status v3 params
func (o *AdminChangeRoleOverrideConfigStatusV3Params) WithNamespace(namespace string) *AdminChangeRoleOverrideConfigStatusV3Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin change role override config status v3 params
func (o *AdminChangeRoleOverrideConfigStatusV3Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithIdentity adds the identity to the admin change role override config status v3 params
func (o *AdminChangeRoleOverrideConfigStatusV3Params) WithIdentity(identity string) *AdminChangeRoleOverrideConfigStatusV3Params {
	o.SetIdentity(identity)
	return o
}

// SetIdentity adds the identity to the admin change role override config status v3 params
func (o *AdminChangeRoleOverrideConfigStatusV3Params) SetIdentity(identity string) {
	o.Identity = identity
}

// WriteToRequest writes these params to a swagger request
func (o *AdminChangeRoleOverrideConfigStatusV3Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	if o.Body != nil {
		if err := r.SetBodyParam(o.Body); err != nil {
			return err
		}
	}

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	// query param identity
	qrIdentity := o.Identity
	qIdentity := qrIdentity
	if qIdentity != "" {
		if err := r.SetQueryParam("identity", qIdentity); err != nil {
			return err
		}
	}

	// setting the default header value
	if err := r.SetHeaderParam("X-Amzn-Trace-Id", utils.AmazonTraceIDGen()); err != nil {
		return err
	}

	if o.XFlightId == nil {
		if err := r.SetHeaderParam("X-Flight-Id", utils.GetDefaultFlightID().Value); err != nil {
			return err
		}
	} else {
		if err := r.SetHeaderParam("X-Flight-Id", *o.XFlightId); err != nil {
			return err
		}
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}

	return nil
}
