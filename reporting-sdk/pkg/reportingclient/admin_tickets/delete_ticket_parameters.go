// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package admin_tickets

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"
)

// NewDeleteTicketParams creates a new DeleteTicketParams object
// with the default values initialized.
func NewDeleteTicketParams() *DeleteTicketParams {
	var ()
	return &DeleteTicketParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewDeleteTicketParamsWithTimeout creates a new DeleteTicketParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewDeleteTicketParamsWithTimeout(timeout time.Duration) *DeleteTicketParams {
	var ()
	return &DeleteTicketParams{

		timeout: timeout,
	}
}

// NewDeleteTicketParamsWithContext creates a new DeleteTicketParams object
// with the default values initialized, and the ability to set a context for a request
func NewDeleteTicketParamsWithContext(ctx context.Context) *DeleteTicketParams {
	var ()
	return &DeleteTicketParams{

		Context: ctx,
	}
}

// NewDeleteTicketParamsWithHTTPClient creates a new DeleteTicketParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewDeleteTicketParamsWithHTTPClient(client *http.Client) *DeleteTicketParams {
	var ()
	return &DeleteTicketParams{
		HTTPClient: client,
	}
}

/*DeleteTicketParams contains all the parameters to send to the API endpoint
for the delete ticket operation typically these are written to a http.Request
*/
type DeleteTicketParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace*/
	Namespace string
	/*TicketID*/
	TicketID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the delete ticket params
func (o *DeleteTicketParams) WithTimeout(timeout time.Duration) *DeleteTicketParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the delete ticket params
func (o *DeleteTicketParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the delete ticket params
func (o *DeleteTicketParams) WithContext(ctx context.Context) *DeleteTicketParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the delete ticket params
func (o *DeleteTicketParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the delete ticket params
func (o *DeleteTicketParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the delete ticket params
func (o *DeleteTicketParams) WithHTTPClient(client *http.Client) *DeleteTicketParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the delete ticket params
func (o *DeleteTicketParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the delete ticket params
func (o *DeleteTicketParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithNamespace adds the namespace to the delete ticket params
func (o *DeleteTicketParams) WithNamespace(namespace string) *DeleteTicketParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the delete ticket params
func (o *DeleteTicketParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithTicketID adds the ticketID to the delete ticket params
func (o *DeleteTicketParams) WithTicketID(ticketID string) *DeleteTicketParams {
	o.SetTicketID(ticketID)
	return o
}

// SetTicketID adds the ticketId to the delete ticket params
func (o *DeleteTicketParams) SetTicketID(ticketID string) {
	o.TicketID = ticketID
}

// WriteToRequest writes these params to a swagger request
func (o *DeleteTicketParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	// path param ticketId
	if err := r.SetPathParam("ticketId", o.TicketID); err != nil {
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
