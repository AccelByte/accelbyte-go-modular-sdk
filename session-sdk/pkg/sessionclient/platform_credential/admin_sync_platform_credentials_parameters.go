// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package platform_credential

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

// Deprecated: 2025-07-16 - Use AdminSyncPlatformCredentialsPlatformID<EnumValue>Constant instead.
// Get the enum in AdminSyncPlatformCredentialsParams
const (
	AdminSyncPlatformCredentialsXBOXConstant = "XBOX"
)

// Get the enum in AdminSyncPlatformCredentialsParams
const (
	AdminSyncPlatformCredentialsPlatformIDXBOXConstant = "XBOX"
)

// NewAdminSyncPlatformCredentialsParams creates a new AdminSyncPlatformCredentialsParams object
// with the default values initialized.
func NewAdminSyncPlatformCredentialsParams() *AdminSyncPlatformCredentialsParams {
	var ()
	return &AdminSyncPlatformCredentialsParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminSyncPlatformCredentialsParamsWithTimeout creates a new AdminSyncPlatformCredentialsParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminSyncPlatformCredentialsParamsWithTimeout(timeout time.Duration) *AdminSyncPlatformCredentialsParams {
	var ()
	return &AdminSyncPlatformCredentialsParams{

		timeout: timeout,
	}
}

// NewAdminSyncPlatformCredentialsParamsWithContext creates a new AdminSyncPlatformCredentialsParams object
// with the default values initialized, and the ability to set a context for a request
func NewAdminSyncPlatformCredentialsParamsWithContext(ctx context.Context) *AdminSyncPlatformCredentialsParams {
	var ()
	return &AdminSyncPlatformCredentialsParams{

		Context: ctx,
	}
}

// NewAdminSyncPlatformCredentialsParamsWithHTTPClient creates a new AdminSyncPlatformCredentialsParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminSyncPlatformCredentialsParamsWithHTTPClient(client *http.Client) *AdminSyncPlatformCredentialsParams {
	var ()
	return &AdminSyncPlatformCredentialsParams{
		HTTPClient: client,
	}
}

/*AdminSyncPlatformCredentialsParams contains all the parameters to send to the API endpoint
for the admin sync platform credentials operation typically these are written to a http.Request
*/
type AdminSyncPlatformCredentialsParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  namespace of the game

	*/
	Namespace string
	/*PlatformID
	  Platform ID

	*/
	PlatformID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the admin sync platform credentials params
func (o *AdminSyncPlatformCredentialsParams) WithTimeout(timeout time.Duration) *AdminSyncPlatformCredentialsParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin sync platform credentials params
func (o *AdminSyncPlatformCredentialsParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin sync platform credentials params
func (o *AdminSyncPlatformCredentialsParams) WithContext(ctx context.Context) *AdminSyncPlatformCredentialsParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin sync platform credentials params
func (o *AdminSyncPlatformCredentialsParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin sync platform credentials params
func (o *AdminSyncPlatformCredentialsParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin sync platform credentials params
func (o *AdminSyncPlatformCredentialsParams) WithHTTPClient(client *http.Client) *AdminSyncPlatformCredentialsParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin sync platform credentials params
func (o *AdminSyncPlatformCredentialsParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin sync platform credentials params
func (o *AdminSyncPlatformCredentialsParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *AdminSyncPlatformCredentialsParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the admin sync platform credentials params
func (o *AdminSyncPlatformCredentialsParams) WithNamespace(namespace string) *AdminSyncPlatformCredentialsParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin sync platform credentials params
func (o *AdminSyncPlatformCredentialsParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithPlatformID adds the platformID to the admin sync platform credentials params
func (o *AdminSyncPlatformCredentialsParams) WithPlatformID(platformID string) *AdminSyncPlatformCredentialsParams {
	o.SetPlatformID(platformID)
	return o
}

// SetPlatformID adds the platformId to the admin sync platform credentials params
func (o *AdminSyncPlatformCredentialsParams) SetPlatformID(platformID string) {
	o.PlatformID = platformID
}

// WriteToRequest writes these params to a swagger request
func (o *AdminSyncPlatformCredentialsParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	// path param platformId
	if err := r.SetPathParam("platformId", o.PlatformID); err != nil {
		return err
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
