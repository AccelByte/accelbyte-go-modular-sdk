// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package matchmaking

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

// NewGetAllPartyInAllChannelParams creates a new GetAllPartyInAllChannelParams object
// with the default values initialized.
func NewGetAllPartyInAllChannelParams() *GetAllPartyInAllChannelParams {
	var ()
	return &GetAllPartyInAllChannelParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewGetAllPartyInAllChannelParamsWithTimeout creates a new GetAllPartyInAllChannelParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewGetAllPartyInAllChannelParamsWithTimeout(timeout time.Duration) *GetAllPartyInAllChannelParams {
	var ()
	return &GetAllPartyInAllChannelParams{

		timeout: timeout,
	}
}

// NewGetAllPartyInAllChannelParamsWithContext creates a new GetAllPartyInAllChannelParams object
// with the default values initialized, and the ability to set a context for a request
func NewGetAllPartyInAllChannelParamsWithContext(ctx context.Context) *GetAllPartyInAllChannelParams {
	var ()
	return &GetAllPartyInAllChannelParams{

		Context: ctx,
	}
}

// NewGetAllPartyInAllChannelParamsWithHTTPClient creates a new GetAllPartyInAllChannelParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewGetAllPartyInAllChannelParamsWithHTTPClient(client *http.Client) *GetAllPartyInAllChannelParams {
	var ()
	return &GetAllPartyInAllChannelParams{
		HTTPClient: client,
	}
}

/*GetAllPartyInAllChannelParams contains all the parameters to send to the API endpoint
for the get all party in all channel operation typically these are written to a http.Request
*/
type GetAllPartyInAllChannelParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  namespace of the game, only accept alphabet and numeric

	*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the get all party in all channel params
func (o *GetAllPartyInAllChannelParams) WithTimeout(timeout time.Duration) *GetAllPartyInAllChannelParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the get all party in all channel params
func (o *GetAllPartyInAllChannelParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the get all party in all channel params
func (o *GetAllPartyInAllChannelParams) WithContext(ctx context.Context) *GetAllPartyInAllChannelParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the get all party in all channel params
func (o *GetAllPartyInAllChannelParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the get all party in all channel params
func (o *GetAllPartyInAllChannelParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the get all party in all channel params
func (o *GetAllPartyInAllChannelParams) WithHTTPClient(client *http.Client) *GetAllPartyInAllChannelParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the get all party in all channel params
func (o *GetAllPartyInAllChannelParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the get all party in all channel params
func (o *GetAllPartyInAllChannelParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithNamespace adds the namespace to the get all party in all channel params
func (o *GetAllPartyInAllChannelParams) WithNamespace(namespace string) *GetAllPartyInAllChannelParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the get all party in all channel params
func (o *GetAllPartyInAllChannelParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *GetAllPartyInAllChannelParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

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
