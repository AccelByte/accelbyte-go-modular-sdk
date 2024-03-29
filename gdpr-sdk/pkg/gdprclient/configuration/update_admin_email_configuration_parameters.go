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

// NewUpdateAdminEmailConfigurationParams creates a new UpdateAdminEmailConfigurationParams object
// with the default values initialized.
func NewUpdateAdminEmailConfigurationParams() *UpdateAdminEmailConfigurationParams {
	var ()
	return &UpdateAdminEmailConfigurationParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewUpdateAdminEmailConfigurationParamsWithTimeout creates a new UpdateAdminEmailConfigurationParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewUpdateAdminEmailConfigurationParamsWithTimeout(timeout time.Duration) *UpdateAdminEmailConfigurationParams {
	var ()
	return &UpdateAdminEmailConfigurationParams{

		timeout: timeout,
	}
}

// NewUpdateAdminEmailConfigurationParamsWithContext creates a new UpdateAdminEmailConfigurationParams object
// with the default values initialized, and the ability to set a context for a request
func NewUpdateAdminEmailConfigurationParamsWithContext(ctx context.Context) *UpdateAdminEmailConfigurationParams {
	var ()
	return &UpdateAdminEmailConfigurationParams{

		Context: ctx,
	}
}

// NewUpdateAdminEmailConfigurationParamsWithHTTPClient creates a new UpdateAdminEmailConfigurationParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewUpdateAdminEmailConfigurationParamsWithHTTPClient(client *http.Client) *UpdateAdminEmailConfigurationParams {
	var ()
	return &UpdateAdminEmailConfigurationParams{
		HTTPClient: client,
	}
}

/*UpdateAdminEmailConfigurationParams contains all the parameters to send to the API endpoint
for the update admin email configuration operation typically these are written to a http.Request
*/
type UpdateAdminEmailConfigurationParams struct {

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

// WithTimeout adds the timeout to the update admin email configuration params
func (o *UpdateAdminEmailConfigurationParams) WithTimeout(timeout time.Duration) *UpdateAdminEmailConfigurationParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the update admin email configuration params
func (o *UpdateAdminEmailConfigurationParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the update admin email configuration params
func (o *UpdateAdminEmailConfigurationParams) WithContext(ctx context.Context) *UpdateAdminEmailConfigurationParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the update admin email configuration params
func (o *UpdateAdminEmailConfigurationParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the update admin email configuration params
func (o *UpdateAdminEmailConfigurationParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the update admin email configuration params
func (o *UpdateAdminEmailConfigurationParams) WithHTTPClient(client *http.Client) *UpdateAdminEmailConfigurationParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the update admin email configuration params
func (o *UpdateAdminEmailConfigurationParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the update admin email configuration params
func (o *UpdateAdminEmailConfigurationParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *UpdateAdminEmailConfigurationParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the update admin email configuration params
func (o *UpdateAdminEmailConfigurationParams) WithBody(body []string) *UpdateAdminEmailConfigurationParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the update admin email configuration params
func (o *UpdateAdminEmailConfigurationParams) SetBody(body []string) {
	o.Body = body
}

// WithNamespace adds the namespace to the update admin email configuration params
func (o *UpdateAdminEmailConfigurationParams) WithNamespace(namespace string) *UpdateAdminEmailConfigurationParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the update admin email configuration params
func (o *UpdateAdminEmailConfigurationParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *UpdateAdminEmailConfigurationParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
