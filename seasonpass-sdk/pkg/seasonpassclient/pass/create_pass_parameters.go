// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package pass

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-modular-sdk/seasonpass-sdk/pkg/seasonpassclientmodels"
)

// NewCreatePassParams creates a new CreatePassParams object
// with the default values initialized.
func NewCreatePassParams() *CreatePassParams {
	var ()
	return &CreatePassParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewCreatePassParamsWithTimeout creates a new CreatePassParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewCreatePassParamsWithTimeout(timeout time.Duration) *CreatePassParams {
	var ()
	return &CreatePassParams{

		timeout: timeout,
	}
}

// NewCreatePassParamsWithContext creates a new CreatePassParams object
// with the default values initialized, and the ability to set a context for a request
func NewCreatePassParamsWithContext(ctx context.Context) *CreatePassParams {
	var ()
	return &CreatePassParams{

		Context: ctx,
	}
}

// NewCreatePassParamsWithHTTPClient creates a new CreatePassParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewCreatePassParamsWithHTTPClient(client *http.Client) *CreatePassParams {
	var ()
	return &CreatePassParams{
		HTTPClient: client,
	}
}

/*CreatePassParams contains all the parameters to send to the API endpoint
for the create pass operation typically these are written to a http.Request
*/
type CreatePassParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *seasonpassclientmodels.PassCreate
	/*Namespace
	  Namespace

	*/
	Namespace string
	/*SeasonID*/
	SeasonID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the create pass params
func (o *CreatePassParams) WithTimeout(timeout time.Duration) *CreatePassParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the create pass params
func (o *CreatePassParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the create pass params
func (o *CreatePassParams) WithContext(ctx context.Context) *CreatePassParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the create pass params
func (o *CreatePassParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the create pass params
func (o *CreatePassParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the create pass params
func (o *CreatePassParams) WithHTTPClient(client *http.Client) *CreatePassParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the create pass params
func (o *CreatePassParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the create pass params
func (o *CreatePassParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *CreatePassParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the create pass params
func (o *CreatePassParams) WithBody(body *seasonpassclientmodels.PassCreate) *CreatePassParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the create pass params
func (o *CreatePassParams) SetBody(body *seasonpassclientmodels.PassCreate) {
	o.Body = body
}

// WithNamespace adds the namespace to the create pass params
func (o *CreatePassParams) WithNamespace(namespace string) *CreatePassParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the create pass params
func (o *CreatePassParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithSeasonID adds the seasonID to the create pass params
func (o *CreatePassParams) WithSeasonID(seasonID string) *CreatePassParams {
	o.SetSeasonID(seasonID)
	return o
}

// SetSeasonID adds the seasonId to the create pass params
func (o *CreatePassParams) SetSeasonID(seasonID string) {
	o.SeasonID = seasonID
}

// WriteToRequest writes these params to a swagger request
func (o *CreatePassParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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

	// path param seasonId
	if err := r.SetPathParam("seasonId", o.SeasonID); err != nil {
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
