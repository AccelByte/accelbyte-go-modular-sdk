// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package party

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-modular-sdk/session-sdk/pkg/sessionclientmodels"
)

// NewPublicPartyJoinCodeParams creates a new PublicPartyJoinCodeParams object
// with the default values initialized.
func NewPublicPartyJoinCodeParams() *PublicPartyJoinCodeParams {
	var ()
	return &PublicPartyJoinCodeParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewPublicPartyJoinCodeParamsWithTimeout creates a new PublicPartyJoinCodeParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewPublicPartyJoinCodeParamsWithTimeout(timeout time.Duration) *PublicPartyJoinCodeParams {
	var ()
	return &PublicPartyJoinCodeParams{

		timeout: timeout,
	}
}

// NewPublicPartyJoinCodeParamsWithContext creates a new PublicPartyJoinCodeParams object
// with the default values initialized, and the ability to set a context for a request
func NewPublicPartyJoinCodeParamsWithContext(ctx context.Context) *PublicPartyJoinCodeParams {
	var ()
	return &PublicPartyJoinCodeParams{

		Context: ctx,
	}
}

// NewPublicPartyJoinCodeParamsWithHTTPClient creates a new PublicPartyJoinCodeParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPublicPartyJoinCodeParamsWithHTTPClient(client *http.Client) *PublicPartyJoinCodeParams {
	var ()
	return &PublicPartyJoinCodeParams{
		HTTPClient: client,
	}
}

/*PublicPartyJoinCodeParams contains all the parameters to send to the API endpoint
for the public party join code operation typically these are written to a http.Request
*/
type PublicPartyJoinCodeParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *sessionclientmodels.ApimodelsJoinByCodeRequest
	/*Namespace
	  Namespace

	*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the public party join code params
func (o *PublicPartyJoinCodeParams) WithTimeout(timeout time.Duration) *PublicPartyJoinCodeParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the public party join code params
func (o *PublicPartyJoinCodeParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the public party join code params
func (o *PublicPartyJoinCodeParams) WithContext(ctx context.Context) *PublicPartyJoinCodeParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the public party join code params
func (o *PublicPartyJoinCodeParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the public party join code params
func (o *PublicPartyJoinCodeParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the public party join code params
func (o *PublicPartyJoinCodeParams) WithHTTPClient(client *http.Client) *PublicPartyJoinCodeParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the public party join code params
func (o *PublicPartyJoinCodeParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the public party join code params
func (o *PublicPartyJoinCodeParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *PublicPartyJoinCodeParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the public party join code params
func (o *PublicPartyJoinCodeParams) WithBody(body *sessionclientmodels.ApimodelsJoinByCodeRequest) *PublicPartyJoinCodeParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the public party join code params
func (o *PublicPartyJoinCodeParams) SetBody(body *sessionclientmodels.ApimodelsJoinByCodeRequest) {
	o.Body = body
}

// WithNamespace adds the namespace to the public party join code params
func (o *PublicPartyJoinCodeParams) WithNamespace(namespace string) *PublicPartyJoinCodeParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the public party join code params
func (o *PublicPartyJoinCodeParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *PublicPartyJoinCodeParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
