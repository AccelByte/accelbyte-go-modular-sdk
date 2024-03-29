// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package backfill

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-modular-sdk/match2-sdk/pkg/match2clientmodels"
)

// NewCreateBackfillParams creates a new CreateBackfillParams object
// with the default values initialized.
func NewCreateBackfillParams() *CreateBackfillParams {
	var ()
	return &CreateBackfillParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewCreateBackfillParamsWithTimeout creates a new CreateBackfillParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewCreateBackfillParamsWithTimeout(timeout time.Duration) *CreateBackfillParams {
	var ()
	return &CreateBackfillParams{

		timeout: timeout,
	}
}

// NewCreateBackfillParamsWithContext creates a new CreateBackfillParams object
// with the default values initialized, and the ability to set a context for a request
func NewCreateBackfillParamsWithContext(ctx context.Context) *CreateBackfillParams {
	var ()
	return &CreateBackfillParams{

		Context: ctx,
	}
}

// NewCreateBackfillParamsWithHTTPClient creates a new CreateBackfillParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewCreateBackfillParamsWithHTTPClient(client *http.Client) *CreateBackfillParams {
	var ()
	return &CreateBackfillParams{
		HTTPClient: client,
	}
}

/*CreateBackfillParams contains all the parameters to send to the API endpoint
for the create backfill operation typically these are written to a http.Request
*/
type CreateBackfillParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *match2clientmodels.APIBackFillCreateRequest
	/*Namespace
	  namespace of the game

	*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the create backfill params
func (o *CreateBackfillParams) WithTimeout(timeout time.Duration) *CreateBackfillParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the create backfill params
func (o *CreateBackfillParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the create backfill params
func (o *CreateBackfillParams) WithContext(ctx context.Context) *CreateBackfillParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the create backfill params
func (o *CreateBackfillParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the create backfill params
func (o *CreateBackfillParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the create backfill params
func (o *CreateBackfillParams) WithHTTPClient(client *http.Client) *CreateBackfillParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the create backfill params
func (o *CreateBackfillParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the create backfill params
func (o *CreateBackfillParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *CreateBackfillParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the create backfill params
func (o *CreateBackfillParams) WithBody(body *match2clientmodels.APIBackFillCreateRequest) *CreateBackfillParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the create backfill params
func (o *CreateBackfillParams) SetBody(body *match2clientmodels.APIBackFillCreateRequest) {
	o.Body = body
}

// WithNamespace adds the namespace to the create backfill params
func (o *CreateBackfillParams) WithNamespace(namespace string) *CreateBackfillParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the create backfill params
func (o *CreateBackfillParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *CreateBackfillParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
