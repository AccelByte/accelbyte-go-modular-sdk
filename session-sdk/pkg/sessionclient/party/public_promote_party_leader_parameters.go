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

// NewPublicPromotePartyLeaderParams creates a new PublicPromotePartyLeaderParams object
// with the default values initialized.
func NewPublicPromotePartyLeaderParams() *PublicPromotePartyLeaderParams {
	var ()
	return &PublicPromotePartyLeaderParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewPublicPromotePartyLeaderParamsWithTimeout creates a new PublicPromotePartyLeaderParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewPublicPromotePartyLeaderParamsWithTimeout(timeout time.Duration) *PublicPromotePartyLeaderParams {
	var ()
	return &PublicPromotePartyLeaderParams{

		timeout: timeout,
	}
}

// NewPublicPromotePartyLeaderParamsWithContext creates a new PublicPromotePartyLeaderParams object
// with the default values initialized, and the ability to set a context for a request
func NewPublicPromotePartyLeaderParamsWithContext(ctx context.Context) *PublicPromotePartyLeaderParams {
	var ()
	return &PublicPromotePartyLeaderParams{

		Context: ctx,
	}
}

// NewPublicPromotePartyLeaderParamsWithHTTPClient creates a new PublicPromotePartyLeaderParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPublicPromotePartyLeaderParamsWithHTTPClient(client *http.Client) *PublicPromotePartyLeaderParams {
	var ()
	return &PublicPromotePartyLeaderParams{
		HTTPClient: client,
	}
}

/*PublicPromotePartyLeaderParams contains all the parameters to send to the API endpoint
for the public promote party leader operation typically these are written to a http.Request
*/
type PublicPromotePartyLeaderParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *sessionclientmodels.ApimodelsPromoteLeaderRequest
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
}

// WithTimeout adds the timeout to the public promote party leader params
func (o *PublicPromotePartyLeaderParams) WithTimeout(timeout time.Duration) *PublicPromotePartyLeaderParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the public promote party leader params
func (o *PublicPromotePartyLeaderParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the public promote party leader params
func (o *PublicPromotePartyLeaderParams) WithContext(ctx context.Context) *PublicPromotePartyLeaderParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the public promote party leader params
func (o *PublicPromotePartyLeaderParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the public promote party leader params
func (o *PublicPromotePartyLeaderParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the public promote party leader params
func (o *PublicPromotePartyLeaderParams) WithHTTPClient(client *http.Client) *PublicPromotePartyLeaderParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the public promote party leader params
func (o *PublicPromotePartyLeaderParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the public promote party leader params
func (o *PublicPromotePartyLeaderParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithBody adds the body to the public promote party leader params
func (o *PublicPromotePartyLeaderParams) WithBody(body *sessionclientmodels.ApimodelsPromoteLeaderRequest) *PublicPromotePartyLeaderParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the public promote party leader params
func (o *PublicPromotePartyLeaderParams) SetBody(body *sessionclientmodels.ApimodelsPromoteLeaderRequest) {
	o.Body = body
}

// WithNamespace adds the namespace to the public promote party leader params
func (o *PublicPromotePartyLeaderParams) WithNamespace(namespace string) *PublicPromotePartyLeaderParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the public promote party leader params
func (o *PublicPromotePartyLeaderParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithPartyID adds the partyID to the public promote party leader params
func (o *PublicPromotePartyLeaderParams) WithPartyID(partyID string) *PublicPromotePartyLeaderParams {
	o.SetPartyID(partyID)
	return o
}

// SetPartyID adds the partyId to the public promote party leader params
func (o *PublicPromotePartyLeaderParams) SetPartyID(partyID string) {
	o.PartyID = partyID
}

// WriteToRequest writes these params to a swagger request
func (o *PublicPromotePartyLeaderParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}

	return nil
}
