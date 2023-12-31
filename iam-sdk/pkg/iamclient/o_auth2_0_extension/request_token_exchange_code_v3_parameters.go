// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package o_auth2_0_extension

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

// NewRequestTokenExchangeCodeV3Params creates a new RequestTokenExchangeCodeV3Params object
// with the default values initialized.
func NewRequestTokenExchangeCodeV3Params() *RequestTokenExchangeCodeV3Params {
	var ()
	return &RequestTokenExchangeCodeV3Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewRequestTokenExchangeCodeV3ParamsWithTimeout creates a new RequestTokenExchangeCodeV3Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewRequestTokenExchangeCodeV3ParamsWithTimeout(timeout time.Duration) *RequestTokenExchangeCodeV3Params {
	var ()
	return &RequestTokenExchangeCodeV3Params{

		timeout: timeout,
	}
}

// NewRequestTokenExchangeCodeV3ParamsWithContext creates a new RequestTokenExchangeCodeV3Params object
// with the default values initialized, and the ability to set a context for a request
func NewRequestTokenExchangeCodeV3ParamsWithContext(ctx context.Context) *RequestTokenExchangeCodeV3Params {
	var ()
	return &RequestTokenExchangeCodeV3Params{

		Context: ctx,
	}
}

// NewRequestTokenExchangeCodeV3ParamsWithHTTPClient creates a new RequestTokenExchangeCodeV3Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewRequestTokenExchangeCodeV3ParamsWithHTTPClient(client *http.Client) *RequestTokenExchangeCodeV3Params {
	var ()
	return &RequestTokenExchangeCodeV3Params{
		HTTPClient: client,
	}
}

/*RequestTokenExchangeCodeV3Params contains all the parameters to send to the API endpoint
for the request token exchange code v3 operation typically these are written to a http.Request
*/
type RequestTokenExchangeCodeV3Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*ClientID
	  Client ID for target namespace

	*/
	ClientID string
	/*Namespace
	  Namespace, only accept alphabet and numeric

	*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the request token exchange code v3 params
func (o *RequestTokenExchangeCodeV3Params) WithTimeout(timeout time.Duration) *RequestTokenExchangeCodeV3Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the request token exchange code v3 params
func (o *RequestTokenExchangeCodeV3Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the request token exchange code v3 params
func (o *RequestTokenExchangeCodeV3Params) WithContext(ctx context.Context) *RequestTokenExchangeCodeV3Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the request token exchange code v3 params
func (o *RequestTokenExchangeCodeV3Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the request token exchange code v3 params
func (o *RequestTokenExchangeCodeV3Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the request token exchange code v3 params
func (o *RequestTokenExchangeCodeV3Params) WithHTTPClient(client *http.Client) *RequestTokenExchangeCodeV3Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the request token exchange code v3 params
func (o *RequestTokenExchangeCodeV3Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the request token exchange code v3 params
func (o *RequestTokenExchangeCodeV3Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithClientID adds the clientID to the request token exchange code v3 params
func (o *RequestTokenExchangeCodeV3Params) WithClientID(clientID string) *RequestTokenExchangeCodeV3Params {
	o.SetClientID(clientID)
	return o
}

// SetClientID adds the clientId to the request token exchange code v3 params
func (o *RequestTokenExchangeCodeV3Params) SetClientID(clientID string) {
	o.ClientID = clientID
}

// WithNamespace adds the namespace to the request token exchange code v3 params
func (o *RequestTokenExchangeCodeV3Params) WithNamespace(namespace string) *RequestTokenExchangeCodeV3Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the request token exchange code v3 params
func (o *RequestTokenExchangeCodeV3Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *RequestTokenExchangeCodeV3Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// form param client_id
	frClientID := o.ClientID
	fClientID := frClientID
	if fClientID != "" {
		if err := r.SetFormParam("client_id", fClientID); err != nil {
			return err
		}
	}

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
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
