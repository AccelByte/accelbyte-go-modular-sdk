// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package admin_group

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

// NewSingleAdminGetAllGroupsParams creates a new SingleAdminGetAllGroupsParams object
// with the default values initialized.
func NewSingleAdminGetAllGroupsParams() *SingleAdminGetAllGroupsParams {
	var (
		limitDefault  = int64(20)
		offsetDefault = int64(0)
	)
	return &SingleAdminGetAllGroupsParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		timeout: cr.DefaultTimeout,
	}
}

// NewSingleAdminGetAllGroupsParamsWithTimeout creates a new SingleAdminGetAllGroupsParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewSingleAdminGetAllGroupsParamsWithTimeout(timeout time.Duration) *SingleAdminGetAllGroupsParams {
	var (
		limitDefault  = int64(20)
		offsetDefault = int64(0)
	)
	return &SingleAdminGetAllGroupsParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		timeout: timeout,
	}
}

// NewSingleAdminGetAllGroupsParamsWithContext creates a new SingleAdminGetAllGroupsParams object
// with the default values initialized, and the ability to set a context for a request
func NewSingleAdminGetAllGroupsParamsWithContext(ctx context.Context) *SingleAdminGetAllGroupsParams {
	var (
		limitDefault  = int64(20)
		offsetDefault = int64(0)
	)
	return &SingleAdminGetAllGroupsParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		Context: ctx,
	}
}

// NewSingleAdminGetAllGroupsParamsWithHTTPClient creates a new SingleAdminGetAllGroupsParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewSingleAdminGetAllGroupsParamsWithHTTPClient(client *http.Client) *SingleAdminGetAllGroupsParams {
	var (
		limitDefault  = int64(20)
		offsetDefault = int64(0)
	)
	return &SingleAdminGetAllGroupsParams{
		Limit:      &limitDefault,
		Offset:     &offsetDefault,
		HTTPClient: client,
	}
}

/*SingleAdminGetAllGroupsParams contains all the parameters to send to the API endpoint
for the single admin get all groups operation typically these are written to a http.Request
*/
type SingleAdminGetAllGroupsParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  namespace of the game

	*/
	Namespace string
	/*Limit
	  number of content per page

	*/
	Limit *int64
	/*Offset
	  the offset number to retrieve

	*/
	Offset *int64

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the single admin get all groups params
func (o *SingleAdminGetAllGroupsParams) WithTimeout(timeout time.Duration) *SingleAdminGetAllGroupsParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the single admin get all groups params
func (o *SingleAdminGetAllGroupsParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the single admin get all groups params
func (o *SingleAdminGetAllGroupsParams) WithContext(ctx context.Context) *SingleAdminGetAllGroupsParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the single admin get all groups params
func (o *SingleAdminGetAllGroupsParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the single admin get all groups params
func (o *SingleAdminGetAllGroupsParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the single admin get all groups params
func (o *SingleAdminGetAllGroupsParams) WithHTTPClient(client *http.Client) *SingleAdminGetAllGroupsParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the single admin get all groups params
func (o *SingleAdminGetAllGroupsParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the single admin get all groups params
func (o *SingleAdminGetAllGroupsParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithNamespace adds the namespace to the single admin get all groups params
func (o *SingleAdminGetAllGroupsParams) WithNamespace(namespace string) *SingleAdminGetAllGroupsParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the single admin get all groups params
func (o *SingleAdminGetAllGroupsParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithLimit adds the limit to the single admin get all groups params
func (o *SingleAdminGetAllGroupsParams) WithLimit(limit *int64) *SingleAdminGetAllGroupsParams {
	o.SetLimit(limit)
	return o
}

// SetLimit adds the limit to the single admin get all groups params
func (o *SingleAdminGetAllGroupsParams) SetLimit(limit *int64) {
	o.Limit = limit
}

// WithOffset adds the offset to the single admin get all groups params
func (o *SingleAdminGetAllGroupsParams) WithOffset(offset *int64) *SingleAdminGetAllGroupsParams {
	o.SetOffset(offset)
	return o
}

// SetOffset adds the offset to the single admin get all groups params
func (o *SingleAdminGetAllGroupsParams) SetOffset(offset *int64) {
	o.Offset = offset
}

// WriteToRequest writes these params to a swagger request
func (o *SingleAdminGetAllGroupsParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
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

	if o.Offset != nil {

		// query param offset
		var qrOffset int64
		if o.Offset != nil {
			qrOffset = *o.Offset
		}
		qOffset := swag.FormatInt64(qrOffset)
		if qOffset != "" {
			if err := r.SetQueryParam("offset", qOffset); err != nil {
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
