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
)

// Deprecated: 2025-07-16 - Use AdminGetRoleOverrideConfigV3Identity<EnumValue>Constant instead.
// Get the enum in AdminGetRoleOverrideConfigV3Params
const (
	AdminGetRoleOverrideConfigV3GAMEADMINConstant = "GAME_ADMIN"
	AdminGetRoleOverrideConfigV3USERConstant      = "USER"
	AdminGetRoleOverrideConfigV3VIEWONLYConstant  = "VIEW_ONLY"
)

// Get the enum in AdminGetRoleOverrideConfigV3Params
const (
	AdminGetRoleOverrideConfigV3IdentityGAMEADMINConstant = "GAME_ADMIN"
	AdminGetRoleOverrideConfigV3IdentityUSERConstant      = "USER"
	AdminGetRoleOverrideConfigV3IdentityVIEWONLYConstant  = "VIEW_ONLY"
)

// NewAdminGetRoleOverrideConfigV3Params creates a new AdminGetRoleOverrideConfigV3Params object
// with the default values initialized.
func NewAdminGetRoleOverrideConfigV3Params() *AdminGetRoleOverrideConfigV3Params {
	var (
		identityDefault = string("USER")
	)
	return &AdminGetRoleOverrideConfigV3Params{
		Identity: identityDefault,

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminGetRoleOverrideConfigV3ParamsWithTimeout creates a new AdminGetRoleOverrideConfigV3Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminGetRoleOverrideConfigV3ParamsWithTimeout(timeout time.Duration) *AdminGetRoleOverrideConfigV3Params {
	var (
		identityDefault = string("USER")
	)
	return &AdminGetRoleOverrideConfigV3Params{
		Identity: identityDefault,

		timeout: timeout,
	}
}

// NewAdminGetRoleOverrideConfigV3ParamsWithContext creates a new AdminGetRoleOverrideConfigV3Params object
// with the default values initialized, and the ability to set a context for a request
func NewAdminGetRoleOverrideConfigV3ParamsWithContext(ctx context.Context) *AdminGetRoleOverrideConfigV3Params {
	var (
		identityDefault = string("USER")
	)
	return &AdminGetRoleOverrideConfigV3Params{
		Identity: identityDefault,

		Context: ctx,
	}
}

// NewAdminGetRoleOverrideConfigV3ParamsWithHTTPClient creates a new AdminGetRoleOverrideConfigV3Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminGetRoleOverrideConfigV3ParamsWithHTTPClient(client *http.Client) *AdminGetRoleOverrideConfigV3Params {
	var (
		identityDefault = string("USER")
	)
	return &AdminGetRoleOverrideConfigV3Params{
		Identity:   identityDefault,
		HTTPClient: client,
	}
}

/*AdminGetRoleOverrideConfigV3Params contains all the parameters to send to the API endpoint
for the admin get role override config v3 operation typically these are written to a http.Request
*/
type AdminGetRoleOverrideConfigV3Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
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

// WithTimeout adds the timeout to the admin get role override config v3 params
func (o *AdminGetRoleOverrideConfigV3Params) WithTimeout(timeout time.Duration) *AdminGetRoleOverrideConfigV3Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin get role override config v3 params
func (o *AdminGetRoleOverrideConfigV3Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin get role override config v3 params
func (o *AdminGetRoleOverrideConfigV3Params) WithContext(ctx context.Context) *AdminGetRoleOverrideConfigV3Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin get role override config v3 params
func (o *AdminGetRoleOverrideConfigV3Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin get role override config v3 params
func (o *AdminGetRoleOverrideConfigV3Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin get role override config v3 params
func (o *AdminGetRoleOverrideConfigV3Params) WithHTTPClient(client *http.Client) *AdminGetRoleOverrideConfigV3Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin get role override config v3 params
func (o *AdminGetRoleOverrideConfigV3Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin get role override config v3 params
func (o *AdminGetRoleOverrideConfigV3Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *AdminGetRoleOverrideConfigV3Params) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the admin get role override config v3 params
func (o *AdminGetRoleOverrideConfigV3Params) WithNamespace(namespace string) *AdminGetRoleOverrideConfigV3Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin get role override config v3 params
func (o *AdminGetRoleOverrideConfigV3Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithIdentity adds the identity to the admin get role override config v3 params
func (o *AdminGetRoleOverrideConfigV3Params) WithIdentity(identity string) *AdminGetRoleOverrideConfigV3Params {
	o.SetIdentity(identity)
	return o
}

// SetIdentity adds the identity to the admin get role override config v3 params
func (o *AdminGetRoleOverrideConfigV3Params) SetIdentity(identity string) {
	o.Identity = identity
}

// WriteToRequest writes these params to a swagger request
func (o *AdminGetRoleOverrideConfigV3Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

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
