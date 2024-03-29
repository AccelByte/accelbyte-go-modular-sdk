// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package social_matchmaking

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-modular-sdk/matchmaking-sdk/pkg/matchmakingclientmodels"
)

// NewUpdatePlayTimeWeightParams creates a new UpdatePlayTimeWeightParams object
// with the default values initialized.
func NewUpdatePlayTimeWeightParams() *UpdatePlayTimeWeightParams {
	var ()
	return &UpdatePlayTimeWeightParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewUpdatePlayTimeWeightParamsWithTimeout creates a new UpdatePlayTimeWeightParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewUpdatePlayTimeWeightParamsWithTimeout(timeout time.Duration) *UpdatePlayTimeWeightParams {
	var ()
	return &UpdatePlayTimeWeightParams{

		timeout: timeout,
	}
}

// NewUpdatePlayTimeWeightParamsWithContext creates a new UpdatePlayTimeWeightParams object
// with the default values initialized, and the ability to set a context for a request
func NewUpdatePlayTimeWeightParamsWithContext(ctx context.Context) *UpdatePlayTimeWeightParams {
	var ()
	return &UpdatePlayTimeWeightParams{

		Context: ctx,
	}
}

// NewUpdatePlayTimeWeightParamsWithHTTPClient creates a new UpdatePlayTimeWeightParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewUpdatePlayTimeWeightParamsWithHTTPClient(client *http.Client) *UpdatePlayTimeWeightParams {
	var ()
	return &UpdatePlayTimeWeightParams{
		HTTPClient: client,
	}
}

/*UpdatePlayTimeWeightParams contains all the parameters to send to the API endpoint
for the update play time weight operation typically these are written to a http.Request
*/
type UpdatePlayTimeWeightParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *matchmakingclientmodels.ModelsUpdatePlayTimeWeightRequest
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

// WithTimeout adds the timeout to the update play time weight params
func (o *UpdatePlayTimeWeightParams) WithTimeout(timeout time.Duration) *UpdatePlayTimeWeightParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the update play time weight params
func (o *UpdatePlayTimeWeightParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the update play time weight params
func (o *UpdatePlayTimeWeightParams) WithContext(ctx context.Context) *UpdatePlayTimeWeightParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the update play time weight params
func (o *UpdatePlayTimeWeightParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the update play time weight params
func (o *UpdatePlayTimeWeightParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the update play time weight params
func (o *UpdatePlayTimeWeightParams) WithHTTPClient(client *http.Client) *UpdatePlayTimeWeightParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the update play time weight params
func (o *UpdatePlayTimeWeightParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the update play time weight params
func (o *UpdatePlayTimeWeightParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *UpdatePlayTimeWeightParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the update play time weight params
func (o *UpdatePlayTimeWeightParams) WithBody(body *matchmakingclientmodels.ModelsUpdatePlayTimeWeightRequest) *UpdatePlayTimeWeightParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the update play time weight params
func (o *UpdatePlayTimeWeightParams) SetBody(body *matchmakingclientmodels.ModelsUpdatePlayTimeWeightRequest) {
	o.Body = body
}

// WithNamespace adds the namespace to the update play time weight params
func (o *UpdatePlayTimeWeightParams) WithNamespace(namespace string) *UpdatePlayTimeWeightParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the update play time weight params
func (o *UpdatePlayTimeWeightParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *UpdatePlayTimeWeightParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
