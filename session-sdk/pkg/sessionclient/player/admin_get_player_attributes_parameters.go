// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated by go-swagger; DO NOT EDIT.

package player

// This file was generated by the swagger tool.
// Editing this file might prove futile when you re-run the swagger generate command

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"
)

// NewAdminGetPlayerAttributesParams creates a new AdminGetPlayerAttributesParams object
// with the default values initialized.
func NewAdminGetPlayerAttributesParams() *AdminGetPlayerAttributesParams {
	var ()
	return &AdminGetPlayerAttributesParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminGetPlayerAttributesParamsWithTimeout creates a new AdminGetPlayerAttributesParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminGetPlayerAttributesParamsWithTimeout(timeout time.Duration) *AdminGetPlayerAttributesParams {
	var ()
	return &AdminGetPlayerAttributesParams{

		timeout: timeout,
	}
}

// NewAdminGetPlayerAttributesParamsWithContext creates a new AdminGetPlayerAttributesParams object
// with the default values initialized, and the ability to set a context for a request
func NewAdminGetPlayerAttributesParamsWithContext(ctx context.Context) *AdminGetPlayerAttributesParams {
	var ()
	return &AdminGetPlayerAttributesParams{

		Context: ctx,
	}
}

// NewAdminGetPlayerAttributesParamsWithHTTPClient creates a new AdminGetPlayerAttributesParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminGetPlayerAttributesParamsWithHTTPClient(client *http.Client) *AdminGetPlayerAttributesParams {
	var ()
	return &AdminGetPlayerAttributesParams{
		HTTPClient: client,
	}
}

/*
AdminGetPlayerAttributesParams contains all the parameters to send to the API endpoint
for the admin get player attributes operation typically these are written to a http.Request
*/
type AdminGetPlayerAttributesParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  namespace of the game

	*/
	Namespace string
	/*UserID
	  User ID

	*/
	UserID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the admin get player attributes params
func (o *AdminGetPlayerAttributesParams) WithTimeout(timeout time.Duration) *AdminGetPlayerAttributesParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin get player attributes params
func (o *AdminGetPlayerAttributesParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin get player attributes params
func (o *AdminGetPlayerAttributesParams) WithContext(ctx context.Context) *AdminGetPlayerAttributesParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin get player attributes params
func (o *AdminGetPlayerAttributesParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin get player attributes params
func (o *AdminGetPlayerAttributesParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin get player attributes params
func (o *AdminGetPlayerAttributesParams) WithHTTPClient(client *http.Client) *AdminGetPlayerAttributesParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin get player attributes params
func (o *AdminGetPlayerAttributesParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin get player attributes params
func (o *AdminGetPlayerAttributesParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithNamespace adds the namespace to the admin get player attributes params
func (o *AdminGetPlayerAttributesParams) WithNamespace(namespace string) *AdminGetPlayerAttributesParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin get player attributes params
func (o *AdminGetPlayerAttributesParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the admin get player attributes params
func (o *AdminGetPlayerAttributesParams) WithUserID(userID string) *AdminGetPlayerAttributesParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the admin get player attributes params
func (o *AdminGetPlayerAttributesParams) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *AdminGetPlayerAttributesParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
