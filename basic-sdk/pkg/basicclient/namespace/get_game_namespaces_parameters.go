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

// NewGetGameNamespacesParams creates a new GetGameNamespacesParams object
// with the default values initialized.
func NewGetGameNamespacesParams() *GetGameNamespacesParams {
	var (
		activeOnlyDefault = bool(false)
	)
	return &GetGameNamespacesParams{
		ActiveOnly: &activeOnlyDefault,

		timeout: cr.DefaultTimeout,
	}
}

// NewGetGameNamespacesParamsWithTimeout creates a new GetGameNamespacesParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewGetGameNamespacesParamsWithTimeout(timeout time.Duration) *GetGameNamespacesParams {
	var (
		activeOnlyDefault = bool(false)
	)
	return &GetGameNamespacesParams{
		ActiveOnly: &activeOnlyDefault,

		timeout: timeout,
	}
}

// NewGetGameNamespacesParamsWithContext creates a new GetGameNamespacesParams object
// with the default values initialized, and the ability to set a context for a request
func NewGetGameNamespacesParamsWithContext(ctx context.Context) *GetGameNamespacesParams {
	var (
		activeOnlyDefault = bool(false)
	)
	return &GetGameNamespacesParams{
		ActiveOnly: &activeOnlyDefault,

		Context: ctx,
	}
}

// NewGetGameNamespacesParamsWithHTTPClient creates a new GetGameNamespacesParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewGetGameNamespacesParamsWithHTTPClient(client *http.Client) *GetGameNamespacesParams {
	var (
		activeOnlyDefault = bool(false)
	)
	return &GetGameNamespacesParams{
		ActiveOnly: &activeOnlyDefault,
		HTTPClient: client,
	}
}

/*GetGameNamespacesParams contains all the parameters to send to the API endpoint
for the get game namespaces operation typically these are written to a http.Request
*/
type GetGameNamespacesParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace*/
	Namespace string
	/*ActiveOnly
	  only retrieves active namespaces

	*/
	ActiveOnly *bool

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the get game namespaces params
func (o *GetGameNamespacesParams) WithTimeout(timeout time.Duration) *GetGameNamespacesParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the get game namespaces params
func (o *GetGameNamespacesParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the get game namespaces params
func (o *GetGameNamespacesParams) WithContext(ctx context.Context) *GetGameNamespacesParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the get game namespaces params
func (o *GetGameNamespacesParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the get game namespaces params
func (o *GetGameNamespacesParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the get game namespaces params
func (o *GetGameNamespacesParams) WithHTTPClient(client *http.Client) *GetGameNamespacesParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the get game namespaces params
func (o *GetGameNamespacesParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the get game namespaces params
func (o *GetGameNamespacesParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *GetGameNamespacesParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the get game namespaces params
func (o *GetGameNamespacesParams) WithNamespace(namespace string) *GetGameNamespacesParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the get game namespaces params
func (o *GetGameNamespacesParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithActiveOnly adds the activeOnly to the get game namespaces params
func (o *GetGameNamespacesParams) WithActiveOnly(activeOnly *bool) *GetGameNamespacesParams {
	o.SetActiveOnly(activeOnly)
	return o
}

// SetActiveOnly adds the activeOnly to the get game namespaces params
func (o *GetGameNamespacesParams) SetActiveOnly(activeOnly *bool) {
	o.ActiveOnly = activeOnly
}

// WriteToRequest writes these params to a swagger request
func (o *GetGameNamespacesParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	if o.ActiveOnly != nil {

		// query param activeOnly
		var qrActiveOnly bool
		if o.ActiveOnly != nil {
			qrActiveOnly = *o.ActiveOnly
		}
		qActiveOnly := swag.FormatBool(qrActiveOnly)
		if qActiveOnly != "" {
			if err := r.SetQueryParam("activeOnly", qActiveOnly); err != nil {
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
