// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package user_profile

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-modular-sdk/basic-sdk/pkg/basicclientmodels"
)

// NewCreateMyProfileParams creates a new CreateMyProfileParams object
// with the default values initialized.
func NewCreateMyProfileParams() *CreateMyProfileParams {
	var ()
	return &CreateMyProfileParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewCreateMyProfileParamsWithTimeout creates a new CreateMyProfileParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewCreateMyProfileParamsWithTimeout(timeout time.Duration) *CreateMyProfileParams {
	var ()
	return &CreateMyProfileParams{

		timeout: timeout,
	}
}

// NewCreateMyProfileParamsWithContext creates a new CreateMyProfileParams object
// with the default values initialized, and the ability to set a context for a request
func NewCreateMyProfileParamsWithContext(ctx context.Context) *CreateMyProfileParams {
	var ()
	return &CreateMyProfileParams{

		Context: ctx,
	}
}

// NewCreateMyProfileParamsWithHTTPClient creates a new CreateMyProfileParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewCreateMyProfileParamsWithHTTPClient(client *http.Client) *CreateMyProfileParams {
	var ()
	return &CreateMyProfileParams{
		HTTPClient: client,
	}
}

/*CreateMyProfileParams contains all the parameters to send to the API endpoint
for the create my profile operation typically these are written to a http.Request
*/
type CreateMyProfileParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *basicclientmodels.UserProfilePrivateCreate
	/*Namespace
	  namespace, only accept alphabet and numeric

	*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the create my profile params
func (o *CreateMyProfileParams) WithTimeout(timeout time.Duration) *CreateMyProfileParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the create my profile params
func (o *CreateMyProfileParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the create my profile params
func (o *CreateMyProfileParams) WithContext(ctx context.Context) *CreateMyProfileParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the create my profile params
func (o *CreateMyProfileParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the create my profile params
func (o *CreateMyProfileParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the create my profile params
func (o *CreateMyProfileParams) WithHTTPClient(client *http.Client) *CreateMyProfileParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the create my profile params
func (o *CreateMyProfileParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the create my profile params
func (o *CreateMyProfileParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *CreateMyProfileParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the create my profile params
func (o *CreateMyProfileParams) WithBody(body *basicclientmodels.UserProfilePrivateCreate) *CreateMyProfileParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the create my profile params
func (o *CreateMyProfileParams) SetBody(body *basicclientmodels.UserProfilePrivateCreate) {
	o.Body = body
}

// WithNamespace adds the namespace to the create my profile params
func (o *CreateMyProfileParams) WithNamespace(namespace string) *CreateMyProfileParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the create my profile params
func (o *CreateMyProfileParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *CreateMyProfileParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
