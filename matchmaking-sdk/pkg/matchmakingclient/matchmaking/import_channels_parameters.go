// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

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

// NewImportChannelsParams creates a new ImportChannelsParams object
// with the default values initialized.
func NewImportChannelsParams() *ImportChannelsParams {
	var ()
	return &ImportChannelsParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewImportChannelsParamsWithTimeout creates a new ImportChannelsParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewImportChannelsParamsWithTimeout(timeout time.Duration) *ImportChannelsParams {
	var ()
	return &ImportChannelsParams{

		timeout: timeout,
	}
}

// NewImportChannelsParamsWithContext creates a new ImportChannelsParams object
// with the default values initialized, and the ability to set a context for a request
func NewImportChannelsParamsWithContext(ctx context.Context) *ImportChannelsParams {
	var ()
	return &ImportChannelsParams{

		Context: ctx,
	}
}

// NewImportChannelsParamsWithHTTPClient creates a new ImportChannelsParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewImportChannelsParamsWithHTTPClient(client *http.Client) *ImportChannelsParams {
	var ()
	return &ImportChannelsParams{
		HTTPClient: client,
	}
}

/*ImportChannelsParams contains all the parameters to send to the API endpoint
for the import channels operation typically these are written to a http.Request
*/
type ImportChannelsParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*File
	  file to be imported

	*/
	File runtime.NamedReadCloser
	/*Strategy
	  strategy for import

	*/
	Strategy *string
	/*Namespace
	  namespace of the game, only accept alphabet and numeric

	*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the import channels params
func (o *ImportChannelsParams) WithTimeout(timeout time.Duration) *ImportChannelsParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the import channels params
func (o *ImportChannelsParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the import channels params
func (o *ImportChannelsParams) WithContext(ctx context.Context) *ImportChannelsParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the import channels params
func (o *ImportChannelsParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the import channels params
func (o *ImportChannelsParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the import channels params
func (o *ImportChannelsParams) WithHTTPClient(client *http.Client) *ImportChannelsParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the import channels params
func (o *ImportChannelsParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the import channels params
func (o *ImportChannelsParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *ImportChannelsParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithFile adds the file to the import channels params
func (o *ImportChannelsParams) WithFile(file runtime.NamedReadCloser) *ImportChannelsParams {
	o.SetFile(file)
	return o
}

// SetFile adds the file to the import channels params
func (o *ImportChannelsParams) SetFile(file runtime.NamedReadCloser) {
	o.File = file
}

// WithStrategy adds the strategy to the import channels params
func (o *ImportChannelsParams) WithStrategy(strategy *string) *ImportChannelsParams {
	o.SetStrategy(strategy)
	return o
}

// SetStrategy adds the strategy to the import channels params
func (o *ImportChannelsParams) SetStrategy(strategy *string) {
	o.Strategy = strategy
}

// WithNamespace adds the namespace to the import channels params
func (o *ImportChannelsParams) WithNamespace(namespace string) *ImportChannelsParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the import channels params
func (o *ImportChannelsParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *ImportChannelsParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	if o.File != nil {

		if o.File != nil {

			// form file param file
			if err := r.SetFileParam("file", o.File); err != nil {
				return err
			}

		}

	}

	if o.Strategy != nil {

		// form param strategy
		var frStrategy string
		if o.Strategy != nil {
			frStrategy = *o.Strategy
		}
		fStrategy := frStrategy
		if fStrategy != "" {
			if err := r.SetFormParam("strategy", fStrategy); err != nil {
				return err
			}
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
