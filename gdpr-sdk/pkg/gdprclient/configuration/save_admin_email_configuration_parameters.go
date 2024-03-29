// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package configuration

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

// NewSaveAdminEmailConfigurationParams creates a new SaveAdminEmailConfigurationParams object
// with the default values initialized.
func NewSaveAdminEmailConfigurationParams() *SaveAdminEmailConfigurationParams {
	var ()
	return &SaveAdminEmailConfigurationParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewSaveAdminEmailConfigurationParamsWithTimeout creates a new SaveAdminEmailConfigurationParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewSaveAdminEmailConfigurationParamsWithTimeout(timeout time.Duration) *SaveAdminEmailConfigurationParams {
	var ()
	return &SaveAdminEmailConfigurationParams{

		timeout: timeout,
	}
}

// NewSaveAdminEmailConfigurationParamsWithContext creates a new SaveAdminEmailConfigurationParams object
// with the default values initialized, and the ability to set a context for a request
func NewSaveAdminEmailConfigurationParamsWithContext(ctx context.Context) *SaveAdminEmailConfigurationParams {
	var ()
	return &SaveAdminEmailConfigurationParams{

		Context: ctx,
	}
}

// NewSaveAdminEmailConfigurationParamsWithHTTPClient creates a new SaveAdminEmailConfigurationParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewSaveAdminEmailConfigurationParamsWithHTTPClient(client *http.Client) *SaveAdminEmailConfigurationParams {
	var ()
	return &SaveAdminEmailConfigurationParams{
		HTTPClient: client,
	}
}

/*SaveAdminEmailConfigurationParams contains all the parameters to send to the API endpoint
for the save admin email configuration operation typically these are written to a http.Request
*/
type SaveAdminEmailConfigurationParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body []string
	/*Namespace
	  namespace

	*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the save admin email configuration params
func (o *SaveAdminEmailConfigurationParams) WithTimeout(timeout time.Duration) *SaveAdminEmailConfigurationParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the save admin email configuration params
func (o *SaveAdminEmailConfigurationParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the save admin email configuration params
func (o *SaveAdminEmailConfigurationParams) WithContext(ctx context.Context) *SaveAdminEmailConfigurationParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the save admin email configuration params
func (o *SaveAdminEmailConfigurationParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the save admin email configuration params
func (o *SaveAdminEmailConfigurationParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the save admin email configuration params
func (o *SaveAdminEmailConfigurationParams) WithHTTPClient(client *http.Client) *SaveAdminEmailConfigurationParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the save admin email configuration params
func (o *SaveAdminEmailConfigurationParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the save admin email configuration params
func (o *SaveAdminEmailConfigurationParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *SaveAdminEmailConfigurationParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the save admin email configuration params
func (o *SaveAdminEmailConfigurationParams) WithBody(body []string) *SaveAdminEmailConfigurationParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the save admin email configuration params
func (o *SaveAdminEmailConfigurationParams) SetBody(body []string) {
	o.Body = body
}

// WithNamespace adds the namespace to the save admin email configuration params
func (o *SaveAdminEmailConfigurationParams) WithNamespace(namespace string) *SaveAdminEmailConfigurationParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the save admin email configuration params
func (o *SaveAdminEmailConfigurationParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *SaveAdminEmailConfigurationParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
