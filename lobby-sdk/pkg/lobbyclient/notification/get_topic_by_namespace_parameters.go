// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package notification

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

// NewGetTopicByNamespaceParams creates a new GetTopicByNamespaceParams object
// with the default values initialized.
func NewGetTopicByNamespaceParams() *GetTopicByNamespaceParams {
	var ()
	return &GetTopicByNamespaceParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewGetTopicByNamespaceParamsWithTimeout creates a new GetTopicByNamespaceParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewGetTopicByNamespaceParamsWithTimeout(timeout time.Duration) *GetTopicByNamespaceParams {
	var ()
	return &GetTopicByNamespaceParams{

		timeout: timeout,
	}
}

// NewGetTopicByNamespaceParamsWithContext creates a new GetTopicByNamespaceParams object
// with the default values initialized, and the ability to set a context for a request
func NewGetTopicByNamespaceParamsWithContext(ctx context.Context) *GetTopicByNamespaceParams {
	var ()
	return &GetTopicByNamespaceParams{

		Context: ctx,
	}
}

// NewGetTopicByNamespaceParamsWithHTTPClient creates a new GetTopicByNamespaceParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewGetTopicByNamespaceParamsWithHTTPClient(client *http.Client) *GetTopicByNamespaceParams {
	var ()
	return &GetTopicByNamespaceParams{
		HTTPClient: client,
	}
}

/*GetTopicByNamespaceParams contains all the parameters to send to the API endpoint
for the get topic by namespace operation typically these are written to a http.Request
*/
type GetTopicByNamespaceParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  namespace

	*/
	Namespace string
	/*After
	  last topic name of previous page

	*/
	After *string
	/*Before
	  first topic name of next page

	*/
	Before *string
	/*Limit
	  size of displayed data

	*/
	Limit *int64

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the get topic by namespace params
func (o *GetTopicByNamespaceParams) WithTimeout(timeout time.Duration) *GetTopicByNamespaceParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the get topic by namespace params
func (o *GetTopicByNamespaceParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the get topic by namespace params
func (o *GetTopicByNamespaceParams) WithContext(ctx context.Context) *GetTopicByNamespaceParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the get topic by namespace params
func (o *GetTopicByNamespaceParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the get topic by namespace params
func (o *GetTopicByNamespaceParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the get topic by namespace params
func (o *GetTopicByNamespaceParams) WithHTTPClient(client *http.Client) *GetTopicByNamespaceParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the get topic by namespace params
func (o *GetTopicByNamespaceParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the get topic by namespace params
func (o *GetTopicByNamespaceParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithNamespace adds the namespace to the get topic by namespace params
func (o *GetTopicByNamespaceParams) WithNamespace(namespace string) *GetTopicByNamespaceParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the get topic by namespace params
func (o *GetTopicByNamespaceParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithAfter adds the after to the get topic by namespace params
func (o *GetTopicByNamespaceParams) WithAfter(after *string) *GetTopicByNamespaceParams {
	o.SetAfter(after)
	return o
}

// SetAfter adds the after to the get topic by namespace params
func (o *GetTopicByNamespaceParams) SetAfter(after *string) {
	o.After = after
}

// WithBefore adds the before to the get topic by namespace params
func (o *GetTopicByNamespaceParams) WithBefore(before *string) *GetTopicByNamespaceParams {
	o.SetBefore(before)
	return o
}

// SetBefore adds the before to the get topic by namespace params
func (o *GetTopicByNamespaceParams) SetBefore(before *string) {
	o.Before = before
}

// WithLimit adds the limit to the get topic by namespace params
func (o *GetTopicByNamespaceParams) WithLimit(limit *int64) *GetTopicByNamespaceParams {
	o.SetLimit(limit)
	return o
}

// SetLimit adds the limit to the get topic by namespace params
func (o *GetTopicByNamespaceParams) SetLimit(limit *int64) {
	o.Limit = limit
}

// WriteToRequest writes these params to a swagger request
func (o *GetTopicByNamespaceParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	if o.After != nil {

		// query param after
		var qrAfter string
		if o.After != nil {
			qrAfter = *o.After
		}
		qAfter := qrAfter
		if qAfter != "" {
			if err := r.SetQueryParam("after", qAfter); err != nil {
				return err
			}
		}

	}

	if o.Before != nil {

		// query param before
		var qrBefore string
		if o.Before != nil {
			qrBefore = *o.Before
		}
		qBefore := qrBefore
		if qBefore != "" {
			if err := r.SetQueryParam("before", qBefore); err != nil {
				return err
			}
		}

	}

	if o.Limit != nil {

		// query param limit
		var qrLimit int64
		if o.Limit != nil {
			qrLimit = *o.Limit
		}
		qLimit := swag.FormatInt64(qrLimit)
		if qLimit != "" {
			if err := r.SetQueryParam("limit", qLimit); err != nil {
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
