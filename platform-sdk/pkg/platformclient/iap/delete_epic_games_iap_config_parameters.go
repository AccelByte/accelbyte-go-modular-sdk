// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package iap

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

// NewDeleteEpicGamesIAPConfigParams creates a new DeleteEpicGamesIAPConfigParams object
// with the default values initialized.
func NewDeleteEpicGamesIAPConfigParams() *DeleteEpicGamesIAPConfigParams {
	var ()
	return &DeleteEpicGamesIAPConfigParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewDeleteEpicGamesIAPConfigParamsWithTimeout creates a new DeleteEpicGamesIAPConfigParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewDeleteEpicGamesIAPConfigParamsWithTimeout(timeout time.Duration) *DeleteEpicGamesIAPConfigParams {
	var ()
	return &DeleteEpicGamesIAPConfigParams{

		timeout: timeout,
	}
}

// NewDeleteEpicGamesIAPConfigParamsWithContext creates a new DeleteEpicGamesIAPConfigParams object
// with the default values initialized, and the ability to set a context for a request
func NewDeleteEpicGamesIAPConfigParamsWithContext(ctx context.Context) *DeleteEpicGamesIAPConfigParams {
	var ()
	return &DeleteEpicGamesIAPConfigParams{

		Context: ctx,
	}
}

// NewDeleteEpicGamesIAPConfigParamsWithHTTPClient creates a new DeleteEpicGamesIAPConfigParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewDeleteEpicGamesIAPConfigParamsWithHTTPClient(client *http.Client) *DeleteEpicGamesIAPConfigParams {
	var ()
	return &DeleteEpicGamesIAPConfigParams{
		HTTPClient: client,
	}
}

/*DeleteEpicGamesIAPConfigParams contains all the parameters to send to the API endpoint
for the delete epic games iap config operation typically these are written to a http.Request
*/
type DeleteEpicGamesIAPConfigParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the delete epic games iap config params
func (o *DeleteEpicGamesIAPConfigParams) WithTimeout(timeout time.Duration) *DeleteEpicGamesIAPConfigParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the delete epic games iap config params
func (o *DeleteEpicGamesIAPConfigParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the delete epic games iap config params
func (o *DeleteEpicGamesIAPConfigParams) WithContext(ctx context.Context) *DeleteEpicGamesIAPConfigParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the delete epic games iap config params
func (o *DeleteEpicGamesIAPConfigParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the delete epic games iap config params
func (o *DeleteEpicGamesIAPConfigParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the delete epic games iap config params
func (o *DeleteEpicGamesIAPConfigParams) WithHTTPClient(client *http.Client) *DeleteEpicGamesIAPConfigParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the delete epic games iap config params
func (o *DeleteEpicGamesIAPConfigParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the delete epic games iap config params
func (o *DeleteEpicGamesIAPConfigParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithNamespace adds the namespace to the delete epic games iap config params
func (o *DeleteEpicGamesIAPConfigParams) WithNamespace(namespace string) *DeleteEpicGamesIAPConfigParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the delete epic games iap config params
func (o *DeleteEpicGamesIAPConfigParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *DeleteEpicGamesIAPConfigParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
