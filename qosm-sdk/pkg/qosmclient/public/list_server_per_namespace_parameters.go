// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package public

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

// NewListServerPerNamespaceParams creates a new ListServerPerNamespaceParams object
// with the default values initialized.
func NewListServerPerNamespaceParams() *ListServerPerNamespaceParams {
	var ()
	return &ListServerPerNamespaceParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewListServerPerNamespaceParamsWithTimeout creates a new ListServerPerNamespaceParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewListServerPerNamespaceParamsWithTimeout(timeout time.Duration) *ListServerPerNamespaceParams {
	var ()
	return &ListServerPerNamespaceParams{

		timeout: timeout,
	}
}

// NewListServerPerNamespaceParamsWithContext creates a new ListServerPerNamespaceParams object
// with the default values initialized, and the ability to set a context for a request
func NewListServerPerNamespaceParamsWithContext(ctx context.Context) *ListServerPerNamespaceParams {
	var ()
	return &ListServerPerNamespaceParams{

		Context: ctx,
	}
}

// NewListServerPerNamespaceParamsWithHTTPClient creates a new ListServerPerNamespaceParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewListServerPerNamespaceParamsWithHTTPClient(client *http.Client) *ListServerPerNamespaceParams {
	var ()
	return &ListServerPerNamespaceParams{
		HTTPClient: client,
	}
}

/*ListServerPerNamespaceParams contains all the parameters to send to the API endpoint
for the list server per namespace operation typically these are written to a http.Request
*/
type ListServerPerNamespaceParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  namespace of the QoS

	*/
	Namespace string
	/*Status
	  QoS status, available value: ACTIVE, INACTIVE, UNREACHABLE

	*/
	Status *string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the list server per namespace params
func (o *ListServerPerNamespaceParams) WithTimeout(timeout time.Duration) *ListServerPerNamespaceParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the list server per namespace params
func (o *ListServerPerNamespaceParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the list server per namespace params
func (o *ListServerPerNamespaceParams) WithContext(ctx context.Context) *ListServerPerNamespaceParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the list server per namespace params
func (o *ListServerPerNamespaceParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the list server per namespace params
func (o *ListServerPerNamespaceParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the list server per namespace params
func (o *ListServerPerNamespaceParams) WithHTTPClient(client *http.Client) *ListServerPerNamespaceParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the list server per namespace params
func (o *ListServerPerNamespaceParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the list server per namespace params
func (o *ListServerPerNamespaceParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *ListServerPerNamespaceParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the list server per namespace params
func (o *ListServerPerNamespaceParams) WithNamespace(namespace string) *ListServerPerNamespaceParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the list server per namespace params
func (o *ListServerPerNamespaceParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithStatus adds the status to the list server per namespace params
func (o *ListServerPerNamespaceParams) WithStatus(status *string) *ListServerPerNamespaceParams {
	o.SetStatus(status)
	return o
}

// SetStatus adds the status to the list server per namespace params
func (o *ListServerPerNamespaceParams) SetStatus(status *string) {
	o.Status = status
}

// WriteToRequest writes these params to a swagger request
func (o *ListServerPerNamespaceParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	if o.Status != nil {

		// query param status
		var qrStatus string
		if o.Status != nil {
			qrStatus = *o.Status
		}
		qStatus := qrStatus
		if qStatus != "" {
			if err := r.SetQueryParam("status", qStatus); err != nil {
				return err
			}
		}

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
