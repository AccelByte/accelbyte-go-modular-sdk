// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package user_profile

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

// NewGetPrivateCustomAttributesInfoParams creates a new GetPrivateCustomAttributesInfoParams object
// with the default values initialized.
func NewGetPrivateCustomAttributesInfoParams() *GetPrivateCustomAttributesInfoParams {
	var ()
	return &GetPrivateCustomAttributesInfoParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewGetPrivateCustomAttributesInfoParamsWithTimeout creates a new GetPrivateCustomAttributesInfoParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewGetPrivateCustomAttributesInfoParamsWithTimeout(timeout time.Duration) *GetPrivateCustomAttributesInfoParams {
	var ()
	return &GetPrivateCustomAttributesInfoParams{

		timeout: timeout,
	}
}

// NewGetPrivateCustomAttributesInfoParamsWithContext creates a new GetPrivateCustomAttributesInfoParams object
// with the default values initialized, and the ability to set a context for a request
func NewGetPrivateCustomAttributesInfoParamsWithContext(ctx context.Context) *GetPrivateCustomAttributesInfoParams {
	var ()
	return &GetPrivateCustomAttributesInfoParams{

		Context: ctx,
	}
}

// NewGetPrivateCustomAttributesInfoParamsWithHTTPClient creates a new GetPrivateCustomAttributesInfoParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewGetPrivateCustomAttributesInfoParamsWithHTTPClient(client *http.Client) *GetPrivateCustomAttributesInfoParams {
	var ()
	return &GetPrivateCustomAttributesInfoParams{
		HTTPClient: client,
	}
}

/*GetPrivateCustomAttributesInfoParams contains all the parameters to send to the API endpoint
for the get private custom attributes info operation typically these are written to a http.Request
*/
type GetPrivateCustomAttributesInfoParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  namespace, only accept alphabet and numeric

	*/
	Namespace string
	/*UserID
	  user's id, should follow UUID version 4 without hyphen

	*/
	UserID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the get private custom attributes info params
func (o *GetPrivateCustomAttributesInfoParams) WithTimeout(timeout time.Duration) *GetPrivateCustomAttributesInfoParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the get private custom attributes info params
func (o *GetPrivateCustomAttributesInfoParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the get private custom attributes info params
func (o *GetPrivateCustomAttributesInfoParams) WithContext(ctx context.Context) *GetPrivateCustomAttributesInfoParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the get private custom attributes info params
func (o *GetPrivateCustomAttributesInfoParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the get private custom attributes info params
func (o *GetPrivateCustomAttributesInfoParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the get private custom attributes info params
func (o *GetPrivateCustomAttributesInfoParams) WithHTTPClient(client *http.Client) *GetPrivateCustomAttributesInfoParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the get private custom attributes info params
func (o *GetPrivateCustomAttributesInfoParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the get private custom attributes info params
func (o *GetPrivateCustomAttributesInfoParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithNamespace adds the namespace to the get private custom attributes info params
func (o *GetPrivateCustomAttributesInfoParams) WithNamespace(namespace string) *GetPrivateCustomAttributesInfoParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the get private custom attributes info params
func (o *GetPrivateCustomAttributesInfoParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the get private custom attributes info params
func (o *GetPrivateCustomAttributesInfoParams) WithUserID(userID string) *GetPrivateCustomAttributesInfoParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the get private custom attributes info params
func (o *GetPrivateCustomAttributesInfoParams) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *GetPrivateCustomAttributesInfoParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	// path param userId
	if err := r.SetPathParam("userId", o.UserID); err != nil {
		return err
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
