// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package users

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

// NewPublicWebLinkPlatformEstablishParams creates a new PublicWebLinkPlatformEstablishParams object
// with the default values initialized.
func NewPublicWebLinkPlatformEstablishParams() *PublicWebLinkPlatformEstablishParams {
	var ()
	return &PublicWebLinkPlatformEstablishParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewPublicWebLinkPlatformEstablishParamsWithTimeout creates a new PublicWebLinkPlatformEstablishParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewPublicWebLinkPlatformEstablishParamsWithTimeout(timeout time.Duration) *PublicWebLinkPlatformEstablishParams {
	var ()
	return &PublicWebLinkPlatformEstablishParams{

		timeout: timeout,
	}
}

// NewPublicWebLinkPlatformEstablishParamsWithContext creates a new PublicWebLinkPlatformEstablishParams object
// with the default values initialized, and the ability to set a context for a request
func NewPublicWebLinkPlatformEstablishParamsWithContext(ctx context.Context) *PublicWebLinkPlatformEstablishParams {
	var ()
	return &PublicWebLinkPlatformEstablishParams{

		Context: ctx,
	}
}

// NewPublicWebLinkPlatformEstablishParamsWithHTTPClient creates a new PublicWebLinkPlatformEstablishParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPublicWebLinkPlatformEstablishParamsWithHTTPClient(client *http.Client) *PublicWebLinkPlatformEstablishParams {
	var ()
	return &PublicWebLinkPlatformEstablishParams{
		HTTPClient: client,
	}
}

/*PublicWebLinkPlatformEstablishParams contains all the parameters to send to the API endpoint
for the public web link platform establish operation typically these are written to a http.Request
*/
type PublicWebLinkPlatformEstablishParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  Namespace, only accept alphabet and numeric

	*/
	Namespace string
	/*PlatformID
	  Platform Id to be linked

	*/
	PlatformID string
	/*State
	  state from third party redirect

	*/
	State string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the public web link platform establish params
func (o *PublicWebLinkPlatformEstablishParams) WithTimeout(timeout time.Duration) *PublicWebLinkPlatformEstablishParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the public web link platform establish params
func (o *PublicWebLinkPlatformEstablishParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the public web link platform establish params
func (o *PublicWebLinkPlatformEstablishParams) WithContext(ctx context.Context) *PublicWebLinkPlatformEstablishParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the public web link platform establish params
func (o *PublicWebLinkPlatformEstablishParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the public web link platform establish params
func (o *PublicWebLinkPlatformEstablishParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the public web link platform establish params
func (o *PublicWebLinkPlatformEstablishParams) WithHTTPClient(client *http.Client) *PublicWebLinkPlatformEstablishParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the public web link platform establish params
func (o *PublicWebLinkPlatformEstablishParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the public web link platform establish params
func (o *PublicWebLinkPlatformEstablishParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithNamespace adds the namespace to the public web link platform establish params
func (o *PublicWebLinkPlatformEstablishParams) WithNamespace(namespace string) *PublicWebLinkPlatformEstablishParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the public web link platform establish params
func (o *PublicWebLinkPlatformEstablishParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithPlatformID adds the platformID to the public web link platform establish params
func (o *PublicWebLinkPlatformEstablishParams) WithPlatformID(platformID string) *PublicWebLinkPlatformEstablishParams {
	o.SetPlatformID(platformID)
	return o
}

// SetPlatformID adds the platformId to the public web link platform establish params
func (o *PublicWebLinkPlatformEstablishParams) SetPlatformID(platformID string) {
	o.PlatformID = platformID
}

// WithState adds the state to the public web link platform establish params
func (o *PublicWebLinkPlatformEstablishParams) WithState(state string) *PublicWebLinkPlatformEstablishParams {
	o.SetState(state)
	return o
}

// SetState adds the state to the public web link platform establish params
func (o *PublicWebLinkPlatformEstablishParams) SetState(state string) {
	o.State = state
}

// WriteToRequest writes these params to a swagger request
func (o *PublicWebLinkPlatformEstablishParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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

	// query param state
	qrState := o.State
	qState := qrState
	if qState != "" {
		if err := r.SetQueryParam("state", qState); err != nil {
			return err
		}
	}

	// setting the default header value
	if err := r.SetHeaderParam("X-Amzn-Trace-Id", utils.AmazonTraceIDGen()); err != nil {
		return err
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}

	return nil
}
