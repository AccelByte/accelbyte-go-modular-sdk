// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package inbox

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

// NewAdminDeleteInboxCategoryParams creates a new AdminDeleteInboxCategoryParams object
// with the default values initialized.
func NewAdminDeleteInboxCategoryParams() *AdminDeleteInboxCategoryParams {
	var ()
	return &AdminDeleteInboxCategoryParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminDeleteInboxCategoryParamsWithTimeout creates a new AdminDeleteInboxCategoryParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminDeleteInboxCategoryParamsWithTimeout(timeout time.Duration) *AdminDeleteInboxCategoryParams {
	var ()
	return &AdminDeleteInboxCategoryParams{

		timeout: timeout,
	}
}

// NewAdminDeleteInboxCategoryParamsWithContext creates a new AdminDeleteInboxCategoryParams object
// with the default values initialized, and the ability to set a context for a request
func NewAdminDeleteInboxCategoryParamsWithContext(ctx context.Context) *AdminDeleteInboxCategoryParams {
	var ()
	return &AdminDeleteInboxCategoryParams{

		Context: ctx,
	}
}

// NewAdminDeleteInboxCategoryParamsWithHTTPClient creates a new AdminDeleteInboxCategoryParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminDeleteInboxCategoryParamsWithHTTPClient(client *http.Client) *AdminDeleteInboxCategoryParams {
	var ()
	return &AdminDeleteInboxCategoryParams{
		HTTPClient: client,
	}
}

/*AdminDeleteInboxCategoryParams contains all the parameters to send to the API endpoint
for the admin delete inbox category operation typically these are written to a http.Request
*/
type AdminDeleteInboxCategoryParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Category
	  category

	*/
	Category string
	/*Namespace
	  namespace

	*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the admin delete inbox category params
func (o *AdminDeleteInboxCategoryParams) WithTimeout(timeout time.Duration) *AdminDeleteInboxCategoryParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin delete inbox category params
func (o *AdminDeleteInboxCategoryParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin delete inbox category params
func (o *AdminDeleteInboxCategoryParams) WithContext(ctx context.Context) *AdminDeleteInboxCategoryParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin delete inbox category params
func (o *AdminDeleteInboxCategoryParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin delete inbox category params
func (o *AdminDeleteInboxCategoryParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin delete inbox category params
func (o *AdminDeleteInboxCategoryParams) WithHTTPClient(client *http.Client) *AdminDeleteInboxCategoryParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin delete inbox category params
func (o *AdminDeleteInboxCategoryParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin delete inbox category params
func (o *AdminDeleteInboxCategoryParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *AdminDeleteInboxCategoryParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithCategory adds the category to the admin delete inbox category params
func (o *AdminDeleteInboxCategoryParams) WithCategory(category string) *AdminDeleteInboxCategoryParams {
	o.SetCategory(category)
	return o
}

// SetCategory adds the category to the admin delete inbox category params
func (o *AdminDeleteInboxCategoryParams) SetCategory(category string) {
	o.Category = category
}

// WithNamespace adds the namespace to the admin delete inbox category params
func (o *AdminDeleteInboxCategoryParams) WithNamespace(namespace string) *AdminDeleteInboxCategoryParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin delete inbox category params
func (o *AdminDeleteInboxCategoryParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *AdminDeleteInboxCategoryParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param category
	if err := r.SetPathParam("category", o.Category); err != nil {
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
