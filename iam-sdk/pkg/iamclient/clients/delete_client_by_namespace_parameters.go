// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package clients

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

// NewDeleteClientByNamespaceParams creates a new DeleteClientByNamespaceParams object
// with the default values initialized.
func NewDeleteClientByNamespaceParams() *DeleteClientByNamespaceParams {
	var ()
	return &DeleteClientByNamespaceParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewDeleteClientByNamespaceParamsWithTimeout creates a new DeleteClientByNamespaceParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewDeleteClientByNamespaceParamsWithTimeout(timeout time.Duration) *DeleteClientByNamespaceParams {
	var ()
	return &DeleteClientByNamespaceParams{

		timeout: timeout,
	}
}

// NewDeleteClientByNamespaceParamsWithContext creates a new DeleteClientByNamespaceParams object
// with the default values initialized, and the ability to set a context for a request
func NewDeleteClientByNamespaceParamsWithContext(ctx context.Context) *DeleteClientByNamespaceParams {
	var ()
	return &DeleteClientByNamespaceParams{

		Context: ctx,
	}
}

// NewDeleteClientByNamespaceParamsWithHTTPClient creates a new DeleteClientByNamespaceParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewDeleteClientByNamespaceParamsWithHTTPClient(client *http.Client) *DeleteClientByNamespaceParams {
	var ()
	return &DeleteClientByNamespaceParams{
		HTTPClient: client,
	}
}

/*DeleteClientByNamespaceParams contains all the parameters to send to the API endpoint
for the delete client by namespace operation typically these are written to a http.Request
*/
type DeleteClientByNamespaceParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*ClientID
	  Client ID

	*/
	ClientID string
	/*Namespace
	  Namespace, only accept alphabet and numeric

	*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the delete client by namespace params
func (o *DeleteClientByNamespaceParams) WithTimeout(timeout time.Duration) *DeleteClientByNamespaceParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the delete client by namespace params
func (o *DeleteClientByNamespaceParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the delete client by namespace params
func (o *DeleteClientByNamespaceParams) WithContext(ctx context.Context) *DeleteClientByNamespaceParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the delete client by namespace params
func (o *DeleteClientByNamespaceParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the delete client by namespace params
func (o *DeleteClientByNamespaceParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the delete client by namespace params
func (o *DeleteClientByNamespaceParams) WithHTTPClient(client *http.Client) *DeleteClientByNamespaceParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the delete client by namespace params
func (o *DeleteClientByNamespaceParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the delete client by namespace params
func (o *DeleteClientByNamespaceParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *DeleteClientByNamespaceParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithClientID adds the clientID to the delete client by namespace params
func (o *DeleteClientByNamespaceParams) WithClientID(clientID string) *DeleteClientByNamespaceParams {
	o.SetClientID(clientID)
	return o
}

// SetClientID adds the clientId to the delete client by namespace params
func (o *DeleteClientByNamespaceParams) SetClientID(clientID string) {
	o.ClientID = clientID
}

// WithNamespace adds the namespace to the delete client by namespace params
func (o *DeleteClientByNamespaceParams) WithNamespace(namespace string) *DeleteClientByNamespaceParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the delete client by namespace params
func (o *DeleteClientByNamespaceParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *DeleteClientByNamespaceParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param clientId
	if err := r.SetPathParam("clientId", o.ClientID); err != nil {
		return err
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
