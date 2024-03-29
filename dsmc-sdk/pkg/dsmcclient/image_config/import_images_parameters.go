// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package image_config

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

// NewImportImagesParams creates a new ImportImagesParams object
// with the default values initialized.
func NewImportImagesParams() *ImportImagesParams {
	var ()
	return &ImportImagesParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewImportImagesParamsWithTimeout creates a new ImportImagesParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewImportImagesParamsWithTimeout(timeout time.Duration) *ImportImagesParams {
	var ()
	return &ImportImagesParams{

		timeout: timeout,
	}
}

// NewImportImagesParamsWithContext creates a new ImportImagesParams object
// with the default values initialized, and the ability to set a context for a request
func NewImportImagesParamsWithContext(ctx context.Context) *ImportImagesParams {
	var ()
	return &ImportImagesParams{

		Context: ctx,
	}
}

// NewImportImagesParamsWithHTTPClient creates a new ImportImagesParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewImportImagesParamsWithHTTPClient(client *http.Client) *ImportImagesParams {
	var ()
	return &ImportImagesParams{
		HTTPClient: client,
	}
}

/*ImportImagesParams contains all the parameters to send to the API endpoint
for the import images operation typically these are written to a http.Request
*/
type ImportImagesParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*File
	  imported file

	*/
	File runtime.NamedReadCloser

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the import images params
func (o *ImportImagesParams) WithTimeout(timeout time.Duration) *ImportImagesParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the import images params
func (o *ImportImagesParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the import images params
func (o *ImportImagesParams) WithContext(ctx context.Context) *ImportImagesParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the import images params
func (o *ImportImagesParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the import images params
func (o *ImportImagesParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the import images params
func (o *ImportImagesParams) WithHTTPClient(client *http.Client) *ImportImagesParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the import images params
func (o *ImportImagesParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the import images params
func (o *ImportImagesParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *ImportImagesParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithFile adds the file to the import images params
func (o *ImportImagesParams) WithFile(file runtime.NamedReadCloser) *ImportImagesParams {
	o.SetFile(file)
	return o
}

// SetFile adds the file to the import images params
func (o *ImportImagesParams) SetFile(file runtime.NamedReadCloser) {
	o.File = file
}

// WriteToRequest writes these params to a swagger request
func (o *ImportImagesParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// form file param file
	if err := r.SetFileParam("file", o.File); err != nil {
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
