// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated by go-swagger; DO NOT EDIT.

package users

// This file was generated by the swagger tool.
// Editing this file might prove futile when you re-run the swagger generate command

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-modular-sdk/iam-sdk/pkg/iamclientmodels"
)

// NewPublicLinkPlatformAccountParams creates a new PublicLinkPlatformAccountParams object
// with the default values initialized.
func NewPublicLinkPlatformAccountParams() *PublicLinkPlatformAccountParams {
	var ()
	return &PublicLinkPlatformAccountParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewPublicLinkPlatformAccountParamsWithTimeout creates a new PublicLinkPlatformAccountParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewPublicLinkPlatformAccountParamsWithTimeout(timeout time.Duration) *PublicLinkPlatformAccountParams {
	var ()
	return &PublicLinkPlatformAccountParams{

		timeout: timeout,
	}
}

// NewPublicLinkPlatformAccountParamsWithContext creates a new PublicLinkPlatformAccountParams object
// with the default values initialized, and the ability to set a context for a request
func NewPublicLinkPlatformAccountParamsWithContext(ctx context.Context) *PublicLinkPlatformAccountParams {
	var ()
	return &PublicLinkPlatformAccountParams{

		Context: ctx,
	}
}

// NewPublicLinkPlatformAccountParamsWithHTTPClient creates a new PublicLinkPlatformAccountParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPublicLinkPlatformAccountParamsWithHTTPClient(client *http.Client) *PublicLinkPlatformAccountParams {
	var ()
	return &PublicLinkPlatformAccountParams{
		HTTPClient: client,
	}
}

/*
PublicLinkPlatformAccountParams contains all the parameters to send to the API endpoint
for the public link platform account operation typically these are written to a http.Request
*/
type PublicLinkPlatformAccountParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *iamclientmodels.ModelLinkPlatformAccountRequest
	/*Namespace
	  Namespace, only accept alphabet and numeric

	*/
	Namespace string
	/*UserID
	  Current user ID

	*/
	UserID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the public link platform account params
func (o *PublicLinkPlatformAccountParams) WithTimeout(timeout time.Duration) *PublicLinkPlatformAccountParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the public link platform account params
func (o *PublicLinkPlatformAccountParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the public link platform account params
func (o *PublicLinkPlatformAccountParams) WithContext(ctx context.Context) *PublicLinkPlatformAccountParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the public link platform account params
func (o *PublicLinkPlatformAccountParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the public link platform account params
func (o *PublicLinkPlatformAccountParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the public link platform account params
func (o *PublicLinkPlatformAccountParams) WithHTTPClient(client *http.Client) *PublicLinkPlatformAccountParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the public link platform account params
func (o *PublicLinkPlatformAccountParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the public link platform account params
func (o *PublicLinkPlatformAccountParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithBody adds the body to the public link platform account params
func (o *PublicLinkPlatformAccountParams) WithBody(body *iamclientmodels.ModelLinkPlatformAccountRequest) *PublicLinkPlatformAccountParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the public link platform account params
func (o *PublicLinkPlatformAccountParams) SetBody(body *iamclientmodels.ModelLinkPlatformAccountRequest) {
	o.Body = body
}

// WithNamespace adds the namespace to the public link platform account params
func (o *PublicLinkPlatformAccountParams) WithNamespace(namespace string) *PublicLinkPlatformAccountParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the public link platform account params
func (o *PublicLinkPlatformAccountParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the public link platform account params
func (o *PublicLinkPlatformAccountParams) WithUserID(userID string) *PublicLinkPlatformAccountParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the public link platform account params
func (o *PublicLinkPlatformAccountParams) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *PublicLinkPlatformAccountParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
