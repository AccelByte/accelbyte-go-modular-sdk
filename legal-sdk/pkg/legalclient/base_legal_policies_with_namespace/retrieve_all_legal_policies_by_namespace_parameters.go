// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package base_legal_policies_with_namespace

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

// NewRetrieveAllLegalPoliciesByNamespaceParams creates a new RetrieveAllLegalPoliciesByNamespaceParams object
// with the default values initialized.
func NewRetrieveAllLegalPoliciesByNamespaceParams() *RetrieveAllLegalPoliciesByNamespaceParams {
	var (
		visibleOnlyDefault = bool(false)
	)
	return &RetrieveAllLegalPoliciesByNamespaceParams{
		VisibleOnly: &visibleOnlyDefault,

		timeout: cr.DefaultTimeout,
	}
}

// NewRetrieveAllLegalPoliciesByNamespaceParamsWithTimeout creates a new RetrieveAllLegalPoliciesByNamespaceParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewRetrieveAllLegalPoliciesByNamespaceParamsWithTimeout(timeout time.Duration) *RetrieveAllLegalPoliciesByNamespaceParams {
	var (
		visibleOnlyDefault = bool(false)
	)
	return &RetrieveAllLegalPoliciesByNamespaceParams{
		VisibleOnly: &visibleOnlyDefault,

		timeout: timeout,
	}
}

// NewRetrieveAllLegalPoliciesByNamespaceParamsWithContext creates a new RetrieveAllLegalPoliciesByNamespaceParams object
// with the default values initialized, and the ability to set a context for a request
func NewRetrieveAllLegalPoliciesByNamespaceParamsWithContext(ctx context.Context) *RetrieveAllLegalPoliciesByNamespaceParams {
	var (
		visibleOnlyDefault = bool(false)
	)
	return &RetrieveAllLegalPoliciesByNamespaceParams{
		VisibleOnly: &visibleOnlyDefault,

		Context: ctx,
	}
}

// NewRetrieveAllLegalPoliciesByNamespaceParamsWithHTTPClient creates a new RetrieveAllLegalPoliciesByNamespaceParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewRetrieveAllLegalPoliciesByNamespaceParamsWithHTTPClient(client *http.Client) *RetrieveAllLegalPoliciesByNamespaceParams {
	var (
		visibleOnlyDefault = bool(false)
	)
	return &RetrieveAllLegalPoliciesByNamespaceParams{
		VisibleOnly: &visibleOnlyDefault,
		HTTPClient:  client,
	}
}

/*RetrieveAllLegalPoliciesByNamespaceParams contains all the parameters to send to the API endpoint
for the retrieve all legal policies by namespace operation typically these are written to a http.Request
*/
type RetrieveAllLegalPoliciesByNamespaceParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  Namespace

	*/
	Namespace string
	/*VisibleOnly*/
	VisibleOnly *bool

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the retrieve all legal policies by namespace params
func (o *RetrieveAllLegalPoliciesByNamespaceParams) WithTimeout(timeout time.Duration) *RetrieveAllLegalPoliciesByNamespaceParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the retrieve all legal policies by namespace params
func (o *RetrieveAllLegalPoliciesByNamespaceParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the retrieve all legal policies by namespace params
func (o *RetrieveAllLegalPoliciesByNamespaceParams) WithContext(ctx context.Context) *RetrieveAllLegalPoliciesByNamespaceParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the retrieve all legal policies by namespace params
func (o *RetrieveAllLegalPoliciesByNamespaceParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the retrieve all legal policies by namespace params
func (o *RetrieveAllLegalPoliciesByNamespaceParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the retrieve all legal policies by namespace params
func (o *RetrieveAllLegalPoliciesByNamespaceParams) WithHTTPClient(client *http.Client) *RetrieveAllLegalPoliciesByNamespaceParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the retrieve all legal policies by namespace params
func (o *RetrieveAllLegalPoliciesByNamespaceParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the retrieve all legal policies by namespace params
func (o *RetrieveAllLegalPoliciesByNamespaceParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *RetrieveAllLegalPoliciesByNamespaceParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the retrieve all legal policies by namespace params
func (o *RetrieveAllLegalPoliciesByNamespaceParams) WithNamespace(namespace string) *RetrieveAllLegalPoliciesByNamespaceParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the retrieve all legal policies by namespace params
func (o *RetrieveAllLegalPoliciesByNamespaceParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithVisibleOnly adds the visibleOnly to the retrieve all legal policies by namespace params
func (o *RetrieveAllLegalPoliciesByNamespaceParams) WithVisibleOnly(visibleOnly *bool) *RetrieveAllLegalPoliciesByNamespaceParams {
	o.SetVisibleOnly(visibleOnly)
	return o
}

// SetVisibleOnly adds the visibleOnly to the retrieve all legal policies by namespace params
func (o *RetrieveAllLegalPoliciesByNamespaceParams) SetVisibleOnly(visibleOnly *bool) {
	o.VisibleOnly = visibleOnly
}

// WriteToRequest writes these params to a swagger request
func (o *RetrieveAllLegalPoliciesByNamespaceParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	if o.VisibleOnly != nil {

		// query param visibleOnly
		var qrVisibleOnly bool
		if o.VisibleOnly != nil {
			qrVisibleOnly = *o.VisibleOnly
		}
		qVisibleOnly := swag.FormatBool(qrVisibleOnly)
		if qVisibleOnly != "" {
			if err := r.SetQueryParam("visibleOnly", qVisibleOnly); err != nil {
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
