// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package match_tickets

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

// NewCreateMatchTicketParams creates a new CreateMatchTicketParams object
// with the default values initialized.
func NewCreateMatchTicketParams() *CreateMatchTicketParams {
	var ()
	return &CreateMatchTicketParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewCreateMatchTicketParamsWithTimeout creates a new CreateMatchTicketParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewCreateMatchTicketParamsWithTimeout(timeout time.Duration) *CreateMatchTicketParams {
	var ()
	return &CreateMatchTicketParams{

		timeout: timeout,
	}
}

// NewCreateMatchTicketParamsWithContext creates a new CreateMatchTicketParams object
// with the default values initialized, and the ability to set a context for a request
func NewCreateMatchTicketParamsWithContext(ctx context.Context) *CreateMatchTicketParams {
	var ()
	return &CreateMatchTicketParams{

		Context: ctx,
	}
}

// NewCreateMatchTicketParamsWithHTTPClient creates a new CreateMatchTicketParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewCreateMatchTicketParamsWithHTTPClient(client *http.Client) *CreateMatchTicketParams {
	var ()
	return &CreateMatchTicketParams{
		HTTPClient: client,
	}
}

/*CreateMatchTicketParams contains all the parameters to send to the API endpoint
for the create match ticket operation typically these are written to a http.Request
*/
type CreateMatchTicketParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *match2clientmodels.APIMatchTicketRequest
	/*Namespace
	  namespace of the game

	*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the create match ticket params
func (o *CreateMatchTicketParams) WithTimeout(timeout time.Duration) *CreateMatchTicketParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the create match ticket params
func (o *CreateMatchTicketParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the create match ticket params
func (o *CreateMatchTicketParams) WithContext(ctx context.Context) *CreateMatchTicketParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the create match ticket params
func (o *CreateMatchTicketParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the create match ticket params
func (o *CreateMatchTicketParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the create match ticket params
func (o *CreateMatchTicketParams) WithHTTPClient(client *http.Client) *CreateMatchTicketParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the create match ticket params
func (o *CreateMatchTicketParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the create match ticket params
func (o *CreateMatchTicketParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithBody adds the body to the create match ticket params
func (o *CreateMatchTicketParams) WithBody(body *match2clientmodels.APIMatchTicketRequest) *CreateMatchTicketParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the create match ticket params
func (o *CreateMatchTicketParams) SetBody(body *match2clientmodels.APIMatchTicketRequest) {
	o.Body = body
}

// WithNamespace adds the namespace to the create match ticket params
func (o *CreateMatchTicketParams) WithNamespace(namespace string) *CreateMatchTicketParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the create match ticket params
func (o *CreateMatchTicketParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *CreateMatchTicketParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}

	return nil
}
