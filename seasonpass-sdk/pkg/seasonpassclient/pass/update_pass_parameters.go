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

// NewUpdatePassParams creates a new UpdatePassParams object
// with the default values initialized.
func NewUpdatePassParams() *UpdatePassParams {
	var ()
	return &UpdatePassParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewUpdatePassParamsWithTimeout creates a new UpdatePassParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewUpdatePassParamsWithTimeout(timeout time.Duration) *UpdatePassParams {
	var ()
	return &UpdatePassParams{

		timeout: timeout,
	}
}

// NewUpdatePassParamsWithContext creates a new UpdatePassParams object
// with the default values initialized, and the ability to set a context for a request
func NewUpdatePassParamsWithContext(ctx context.Context) *UpdatePassParams {
	var ()
	return &UpdatePassParams{

		Context: ctx,
	}
}

// NewUpdatePassParamsWithHTTPClient creates a new UpdatePassParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewUpdatePassParamsWithHTTPClient(client *http.Client) *UpdatePassParams {
	var ()
	return &UpdatePassParams{
		HTTPClient: client,
	}
}

/*UpdatePassParams contains all the parameters to send to the API endpoint
for the update pass operation typically these are written to a http.Request
*/
type UpdatePassParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *seasonpassclientmodels.PassUpdate
	/*Code*/
	Code string
	/*Namespace*/
	Namespace string
	/*SeasonID*/
	SeasonID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the update pass params
func (o *UpdatePassParams) WithTimeout(timeout time.Duration) *UpdatePassParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the update pass params
func (o *UpdatePassParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the update pass params
func (o *UpdatePassParams) WithContext(ctx context.Context) *UpdatePassParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the update pass params
func (o *UpdatePassParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the update pass params
func (o *UpdatePassParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the update pass params
func (o *UpdatePassParams) WithHTTPClient(client *http.Client) *UpdatePassParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the update pass params
func (o *UpdatePassParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the update pass params
func (o *UpdatePassParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithBody adds the body to the update pass params
func (o *UpdatePassParams) WithBody(body *seasonpassclientmodels.PassUpdate) *UpdatePassParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the update pass params
func (o *UpdatePassParams) SetBody(body *seasonpassclientmodels.PassUpdate) {
	o.Body = body
}

// WithCode adds the code to the update pass params
func (o *UpdatePassParams) WithCode(code string) *UpdatePassParams {
	o.SetCode(code)
	return o
}

// SetCode adds the code to the update pass params
func (o *UpdatePassParams) SetCode(code string) {
	o.Code = code
}

// WithNamespace adds the namespace to the update pass params
func (o *UpdatePassParams) WithNamespace(namespace string) *UpdatePassParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the update pass params
func (o *UpdatePassParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithSeasonID adds the seasonID to the update pass params
func (o *UpdatePassParams) WithSeasonID(seasonID string) *UpdatePassParams {
	o.SetSeasonID(seasonID)
	return o
}

// SetSeasonID adds the seasonId to the update pass params
func (o *UpdatePassParams) SetSeasonID(seasonID string) {
	o.SeasonID = seasonID
}

// WriteToRequest writes these params to a swagger request
func (o *UpdatePassParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	if o.Body != nil {
		if err := r.SetBodyParam(o.Body); err != nil {
			return err
		}
	}

	// path param code
	if err := r.SetPathParam("code", o.Code); err != nil {
		return err
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

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}

	return nil
}
