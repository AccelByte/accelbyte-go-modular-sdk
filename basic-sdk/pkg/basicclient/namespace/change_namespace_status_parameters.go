// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package namespace

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-modular-sdk/basic-sdk/pkg/basicclientmodels"
)

// NewChangeNamespaceStatusParams creates a new ChangeNamespaceStatusParams object
// with the default values initialized.
func NewChangeNamespaceStatusParams() *ChangeNamespaceStatusParams {
	var ()
	return &ChangeNamespaceStatusParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewChangeNamespaceStatusParamsWithTimeout creates a new ChangeNamespaceStatusParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewChangeNamespaceStatusParamsWithTimeout(timeout time.Duration) *ChangeNamespaceStatusParams {
	var ()
	return &ChangeNamespaceStatusParams{

		timeout: timeout,
	}
}

// NewChangeNamespaceStatusParamsWithContext creates a new ChangeNamespaceStatusParams object
// with the default values initialized, and the ability to set a context for a request
func NewChangeNamespaceStatusParamsWithContext(ctx context.Context) *ChangeNamespaceStatusParams {
	var ()
	return &ChangeNamespaceStatusParams{

		Context: ctx,
	}
}

// NewChangeNamespaceStatusParamsWithHTTPClient creates a new ChangeNamespaceStatusParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewChangeNamespaceStatusParamsWithHTTPClient(client *http.Client) *ChangeNamespaceStatusParams {
	var ()
	return &ChangeNamespaceStatusParams{
		HTTPClient: client,
	}
}

/*ChangeNamespaceStatusParams contains all the parameters to send to the API endpoint
for the change namespace status operation typically these are written to a http.Request
*/
type ChangeNamespaceStatusParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *basicclientmodels.NamespaceStatusUpdate
	/*Namespace
	  namespace, only accept alphabet and numeric

	*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the change namespace status params
func (o *ChangeNamespaceStatusParams) WithTimeout(timeout time.Duration) *ChangeNamespaceStatusParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the change namespace status params
func (o *ChangeNamespaceStatusParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the change namespace status params
func (o *ChangeNamespaceStatusParams) WithContext(ctx context.Context) *ChangeNamespaceStatusParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the change namespace status params
func (o *ChangeNamespaceStatusParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the change namespace status params
func (o *ChangeNamespaceStatusParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the change namespace status params
func (o *ChangeNamespaceStatusParams) WithHTTPClient(client *http.Client) *ChangeNamespaceStatusParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the change namespace status params
func (o *ChangeNamespaceStatusParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the change namespace status params
func (o *ChangeNamespaceStatusParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *ChangeNamespaceStatusParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the change namespace status params
func (o *ChangeNamespaceStatusParams) WithBody(body *basicclientmodels.NamespaceStatusUpdate) *ChangeNamespaceStatusParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the change namespace status params
func (o *ChangeNamespaceStatusParams) SetBody(body *basicclientmodels.NamespaceStatusUpdate) {
	o.Body = body
}

// WithNamespace adds the namespace to the change namespace status params
func (o *ChangeNamespaceStatusParams) WithNamespace(namespace string) *ChangeNamespaceStatusParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the change namespace status params
func (o *ChangeNamespaceStatusParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *ChangeNamespaceStatusParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
