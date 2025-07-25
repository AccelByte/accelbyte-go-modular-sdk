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
	"github.com/go-openapi/swag"
)

// NewGetNamespaceContextParams creates a new GetNamespaceContextParams object
// with the default values initialized.
func NewGetNamespaceContextParams() *GetNamespaceContextParams {
	var ()
	return &GetNamespaceContextParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewGetNamespaceContextParamsWithTimeout creates a new GetNamespaceContextParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewGetNamespaceContextParamsWithTimeout(timeout time.Duration) *GetNamespaceContextParams {
	var ()
	return &GetNamespaceContextParams{

		timeout: timeout,
	}
}

// NewGetNamespaceContextParamsWithContext creates a new GetNamespaceContextParams object
// with the default values initialized, and the ability to set a context for a request
func NewGetNamespaceContextParamsWithContext(ctx context.Context) *GetNamespaceContextParams {
	var ()
	return &GetNamespaceContextParams{

		Context: ctx,
	}
}

// NewGetNamespaceContextParamsWithHTTPClient creates a new GetNamespaceContextParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewGetNamespaceContextParamsWithHTTPClient(client *http.Client) *GetNamespaceContextParams {
	var ()
	return &GetNamespaceContextParams{
		HTTPClient: client,
	}
}

/*GetNamespaceContextParams contains all the parameters to send to the API endpoint
for the get namespace context operation typically these are written to a http.Request
*/
type GetNamespaceContextParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace*/
	Namespace string
	/*RefreshOnCacheMiss*/
	RefreshOnCacheMiss *bool

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the get namespace context params
func (o *GetNamespaceContextParams) WithTimeout(timeout time.Duration) *GetNamespaceContextParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the get namespace context params
func (o *GetNamespaceContextParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the get namespace context params
func (o *GetNamespaceContextParams) WithContext(ctx context.Context) *GetNamespaceContextParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the get namespace context params
func (o *GetNamespaceContextParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the get namespace context params
func (o *GetNamespaceContextParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the get namespace context params
func (o *GetNamespaceContextParams) WithHTTPClient(client *http.Client) *GetNamespaceContextParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the get namespace context params
func (o *GetNamespaceContextParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the get namespace context params
func (o *GetNamespaceContextParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *GetNamespaceContextParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the get namespace context params
func (o *GetNamespaceContextParams) WithNamespace(namespace string) *GetNamespaceContextParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the get namespace context params
func (o *GetNamespaceContextParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithRefreshOnCacheMiss adds the refreshOnCacheMiss to the get namespace context params
func (o *GetNamespaceContextParams) WithRefreshOnCacheMiss(refreshOnCacheMiss *bool) *GetNamespaceContextParams {
	o.SetRefreshOnCacheMiss(refreshOnCacheMiss)
	return o
}

// SetRefreshOnCacheMiss adds the refreshOnCacheMiss to the get namespace context params
func (o *GetNamespaceContextParams) SetRefreshOnCacheMiss(refreshOnCacheMiss *bool) {
	o.RefreshOnCacheMiss = refreshOnCacheMiss
}

// WriteToRequest writes these params to a swagger request
func (o *GetNamespaceContextParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	if o.RefreshOnCacheMiss != nil {

		// query param refreshOnCacheMiss
		var qrRefreshOnCacheMiss bool
		if o.RefreshOnCacheMiss != nil {
			qrRefreshOnCacheMiss = *o.RefreshOnCacheMiss
		}
		qRefreshOnCacheMiss := swag.FormatBool(qrRefreshOnCacheMiss)
		if qRefreshOnCacheMiss != "" {
			if err := r.SetQueryParam("refreshOnCacheMiss", qRefreshOnCacheMiss); err != nil {
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
