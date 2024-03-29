// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package stat_cycle_configuration

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-modular-sdk/social-sdk/pkg/socialclientmodels"
)

// NewCreateStatCycleParams creates a new CreateStatCycleParams object
// with the default values initialized.
func NewCreateStatCycleParams() *CreateStatCycleParams {
	var ()
	return &CreateStatCycleParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewCreateStatCycleParamsWithTimeout creates a new CreateStatCycleParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewCreateStatCycleParamsWithTimeout(timeout time.Duration) *CreateStatCycleParams {
	var ()
	return &CreateStatCycleParams{

		timeout: timeout,
	}
}

// NewCreateStatCycleParamsWithContext creates a new CreateStatCycleParams object
// with the default values initialized, and the ability to set a context for a request
func NewCreateStatCycleParamsWithContext(ctx context.Context) *CreateStatCycleParams {
	var ()
	return &CreateStatCycleParams{

		Context: ctx,
	}
}

// NewCreateStatCycleParamsWithHTTPClient creates a new CreateStatCycleParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewCreateStatCycleParamsWithHTTPClient(client *http.Client) *CreateStatCycleParams {
	var ()
	return &CreateStatCycleParams{
		HTTPClient: client,
	}
}

/*CreateStatCycleParams contains all the parameters to send to the API endpoint
for the create stat cycle operation typically these are written to a http.Request
*/
type CreateStatCycleParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *socialclientmodels.StatCycleCreate
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

// WithTimeout adds the timeout to the create stat cycle params
func (o *CreateStatCycleParams) WithTimeout(timeout time.Duration) *CreateStatCycleParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the create stat cycle params
func (o *CreateStatCycleParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the create stat cycle params
func (o *CreateStatCycleParams) WithContext(ctx context.Context) *CreateStatCycleParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the create stat cycle params
func (o *CreateStatCycleParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the create stat cycle params
func (o *CreateStatCycleParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the create stat cycle params
func (o *CreateStatCycleParams) WithHTTPClient(client *http.Client) *CreateStatCycleParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the create stat cycle params
func (o *CreateStatCycleParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the create stat cycle params
func (o *CreateStatCycleParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *CreateStatCycleParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the create stat cycle params
func (o *CreateStatCycleParams) WithBody(body *socialclientmodels.StatCycleCreate) *CreateStatCycleParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the create stat cycle params
func (o *CreateStatCycleParams) SetBody(body *socialclientmodels.StatCycleCreate) {
	o.Body = body
}

// WithNamespace adds the namespace to the create stat cycle params
func (o *CreateStatCycleParams) WithNamespace(namespace string) *CreateStatCycleParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the create stat cycle params
func (o *CreateStatCycleParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *CreateStatCycleParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
