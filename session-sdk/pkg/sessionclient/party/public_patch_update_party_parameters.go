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

// NewPublicPatchUpdatePartyParams creates a new PublicPatchUpdatePartyParams object
// with the default values initialized.
func NewPublicPatchUpdatePartyParams() *PublicPatchUpdatePartyParams {
	var ()
	return &PublicPatchUpdatePartyParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewPublicPatchUpdatePartyParamsWithTimeout creates a new PublicPatchUpdatePartyParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewPublicPatchUpdatePartyParamsWithTimeout(timeout time.Duration) *PublicPatchUpdatePartyParams {
	var ()
	return &PublicPatchUpdatePartyParams{

		timeout: timeout,
	}
}

// NewPublicPatchUpdatePartyParamsWithContext creates a new PublicPatchUpdatePartyParams object
// with the default values initialized, and the ability to set a context for a request
func NewPublicPatchUpdatePartyParamsWithContext(ctx context.Context) *PublicPatchUpdatePartyParams {
	var ()
	return &PublicPatchUpdatePartyParams{

		Context: ctx,
	}
}

// NewPublicPatchUpdatePartyParamsWithHTTPClient creates a new PublicPatchUpdatePartyParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPublicPatchUpdatePartyParamsWithHTTPClient(client *http.Client) *PublicPatchUpdatePartyParams {
	var ()
	return &PublicPatchUpdatePartyParams{
		HTTPClient: client,
	}
}

/*
PublicPatchUpdatePartyParams contains all the parameters to send to the API endpoint
for the public patch update party operation typically these are written to a http.Request
*/
type PublicPatchUpdatePartyParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *sessionclientmodels.ApimodelsUpdatePartyRequest
	/*Namespace
	  Namespace

	*/
	Namespace string
	/*PartyID
	  Party ID

	*/
	PartyID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the public patch update party params
func (o *PublicPatchUpdatePartyParams) WithTimeout(timeout time.Duration) *PublicPatchUpdatePartyParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the public patch update party params
func (o *PublicPatchUpdatePartyParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the public patch update party params
func (o *PublicPatchUpdatePartyParams) WithContext(ctx context.Context) *PublicPatchUpdatePartyParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the public patch update party params
func (o *PublicPatchUpdatePartyParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the public patch update party params
func (o *PublicPatchUpdatePartyParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the public patch update party params
func (o *PublicPatchUpdatePartyParams) WithHTTPClient(client *http.Client) *PublicPatchUpdatePartyParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the public patch update party params
func (o *PublicPatchUpdatePartyParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the public patch update party params
func (o *PublicPatchUpdatePartyParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *PublicPatchUpdatePartyParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the public patch update party params
func (o *PublicPatchUpdatePartyParams) WithBody(body *sessionclientmodels.ApimodelsUpdatePartyRequest) *PublicPatchUpdatePartyParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the public patch update party params
func (o *PublicPatchUpdatePartyParams) SetBody(body *sessionclientmodels.ApimodelsUpdatePartyRequest) {
	o.Body = body
}

// WithNamespace adds the namespace to the public patch update party params
func (o *PublicPatchUpdatePartyParams) WithNamespace(namespace string) *PublicPatchUpdatePartyParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the public patch update party params
func (o *PublicPatchUpdatePartyParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithPartyID adds the partyID to the public patch update party params
func (o *PublicPatchUpdatePartyParams) WithPartyID(partyID string) *PublicPatchUpdatePartyParams {
	o.SetPartyID(partyID)
	return o
}

// SetPartyID adds the partyId to the public patch update party params
func (o *PublicPatchUpdatePartyParams) SetPartyID(partyID string) {
	o.PartyID = partyID
}

// WriteToRequest writes these params to a swagger request
func (o *PublicPatchUpdatePartyParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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

	// path param partyId
	if err := r.SetPathParam("partyId", o.PartyID); err != nil {
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
