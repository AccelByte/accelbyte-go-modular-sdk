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

// NewUpdateXblBPCertFileParams creates a new UpdateXblBPCertFileParams object
// with the default values initialized.
func NewUpdateXblBPCertFileParams() *UpdateXblBPCertFileParams {
	var ()
	return &UpdateXblBPCertFileParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewUpdateXblBPCertFileParamsWithTimeout creates a new UpdateXblBPCertFileParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewUpdateXblBPCertFileParamsWithTimeout(timeout time.Duration) *UpdateXblBPCertFileParams {
	var ()
	return &UpdateXblBPCertFileParams{

		timeout: timeout,
	}
}

// NewUpdateXblBPCertFileParamsWithContext creates a new UpdateXblBPCertFileParams object
// with the default values initialized, and the ability to set a context for a request
func NewUpdateXblBPCertFileParamsWithContext(ctx context.Context) *UpdateXblBPCertFileParams {
	var ()
	return &UpdateXblBPCertFileParams{

		Context: ctx,
	}
}

// NewUpdateXblBPCertFileParamsWithHTTPClient creates a new UpdateXblBPCertFileParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewUpdateXblBPCertFileParamsWithHTTPClient(client *http.Client) *UpdateXblBPCertFileParams {
	var ()
	return &UpdateXblBPCertFileParams{
		HTTPClient: client,
	}
}

/*UpdateXblBPCertFileParams contains all the parameters to send to the API endpoint
for the update xbl bp cert file operation typically these are written to a http.Request
*/
type UpdateXblBPCertFileParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*File*/
	File runtime.NamedReadCloser
	/*Password*/
	Password *string
	/*Namespace*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the update xbl bp cert file params
func (o *UpdateXblBPCertFileParams) WithTimeout(timeout time.Duration) *UpdateXblBPCertFileParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the update xbl bp cert file params
func (o *UpdateXblBPCertFileParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the update xbl bp cert file params
func (o *UpdateXblBPCertFileParams) WithContext(ctx context.Context) *UpdateXblBPCertFileParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the update xbl bp cert file params
func (o *UpdateXblBPCertFileParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the update xbl bp cert file params
func (o *UpdateXblBPCertFileParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the update xbl bp cert file params
func (o *UpdateXblBPCertFileParams) WithHTTPClient(client *http.Client) *UpdateXblBPCertFileParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the update xbl bp cert file params
func (o *UpdateXblBPCertFileParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the update xbl bp cert file params
func (o *UpdateXblBPCertFileParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *UpdateXblBPCertFileParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithFile adds the file to the update xbl bp cert file params
func (o *UpdateXblBPCertFileParams) WithFile(file runtime.NamedReadCloser) *UpdateXblBPCertFileParams {
	o.SetFile(file)
	return o
}

// SetFile adds the file to the update xbl bp cert file params
func (o *UpdateXblBPCertFileParams) SetFile(file runtime.NamedReadCloser) {
	o.File = file
}

// WithPassword adds the password to the update xbl bp cert file params
func (o *UpdateXblBPCertFileParams) WithPassword(password *string) *UpdateXblBPCertFileParams {
	o.SetPassword(password)
	return o
}

// SetPassword adds the password to the update xbl bp cert file params
func (o *UpdateXblBPCertFileParams) SetPassword(password *string) {
	o.Password = password
}

// WithNamespace adds the namespace to the update xbl bp cert file params
func (o *UpdateXblBPCertFileParams) WithNamespace(namespace string) *UpdateXblBPCertFileParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the update xbl bp cert file params
func (o *UpdateXblBPCertFileParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *UpdateXblBPCertFileParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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

	if o.Password != nil {

		// form param password
		var frPassword string
		if o.Password != nil {
			frPassword = *o.Password
		}
		fPassword := frPassword
		if fPassword != "" {
			if err := r.SetFormParam("password", fPassword); err != nil {
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
