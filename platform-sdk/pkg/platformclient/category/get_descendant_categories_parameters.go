// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package category

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

// NewGetDescendantCategoriesParams creates a new GetDescendantCategoriesParams object
// with the default values initialized.
func NewGetDescendantCategoriesParams() *GetDescendantCategoriesParams {
	var ()
	return &GetDescendantCategoriesParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewGetDescendantCategoriesParamsWithTimeout creates a new GetDescendantCategoriesParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewGetDescendantCategoriesParamsWithTimeout(timeout time.Duration) *GetDescendantCategoriesParams {
	var ()
	return &GetDescendantCategoriesParams{

		timeout: timeout,
	}
}

// NewGetDescendantCategoriesParamsWithContext creates a new GetDescendantCategoriesParams object
// with the default values initialized, and the ability to set a context for a request
func NewGetDescendantCategoriesParamsWithContext(ctx context.Context) *GetDescendantCategoriesParams {
	var ()
	return &GetDescendantCategoriesParams{

		Context: ctx,
	}
}

// NewGetDescendantCategoriesParamsWithHTTPClient creates a new GetDescendantCategoriesParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewGetDescendantCategoriesParamsWithHTTPClient(client *http.Client) *GetDescendantCategoriesParams {
	var ()
	return &GetDescendantCategoriesParams{
		HTTPClient: client,
	}
}

/*GetDescendantCategoriesParams contains all the parameters to send to the API endpoint
for the get descendant categories operation typically these are written to a http.Request
*/
type GetDescendantCategoriesParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*CategoryPath*/
	CategoryPath string
	/*Namespace
	  Namespace

	*/
	Namespace string
	/*StoreID
	  default is published store id

	*/
	StoreID *string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the get descendant categories params
func (o *GetDescendantCategoriesParams) WithTimeout(timeout time.Duration) *GetDescendantCategoriesParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the get descendant categories params
func (o *GetDescendantCategoriesParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the get descendant categories params
func (o *GetDescendantCategoriesParams) WithContext(ctx context.Context) *GetDescendantCategoriesParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the get descendant categories params
func (o *GetDescendantCategoriesParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the get descendant categories params
func (o *GetDescendantCategoriesParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the get descendant categories params
func (o *GetDescendantCategoriesParams) WithHTTPClient(client *http.Client) *GetDescendantCategoriesParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the get descendant categories params
func (o *GetDescendantCategoriesParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the get descendant categories params
func (o *GetDescendantCategoriesParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithCategoryPath adds the categoryPath to the get descendant categories params
func (o *GetDescendantCategoriesParams) WithCategoryPath(categoryPath string) *GetDescendantCategoriesParams {
	o.SetCategoryPath(categoryPath)
	return o
}

// SetCategoryPath adds the categoryPath to the get descendant categories params
func (o *GetDescendantCategoriesParams) SetCategoryPath(categoryPath string) {
	o.CategoryPath = categoryPath
}

// WithNamespace adds the namespace to the get descendant categories params
func (o *GetDescendantCategoriesParams) WithNamespace(namespace string) *GetDescendantCategoriesParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the get descendant categories params
func (o *GetDescendantCategoriesParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithStoreID adds the storeID to the get descendant categories params
func (o *GetDescendantCategoriesParams) WithStoreID(storeID *string) *GetDescendantCategoriesParams {
	o.SetStoreID(storeID)
	return o
}

// SetStoreID adds the storeId to the get descendant categories params
func (o *GetDescendantCategoriesParams) SetStoreID(storeID *string) {
	o.StoreID = storeID
}

// WriteToRequest writes these params to a swagger request
func (o *GetDescendantCategoriesParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param categoryPath
	if err := r.SetPathParam("categoryPath", o.CategoryPath); err != nil {
		return err
	}

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	if o.StoreID != nil {

		// query param storeId
		var qrStoreID string
		if o.StoreID != nil {
			qrStoreID = *o.StoreID
		}
		qStoreID := qrStoreID
		if qStoreID != "" {
			if err := r.SetQueryParam("storeId", qStoreID); err != nil {
				return err
			}
		}

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
