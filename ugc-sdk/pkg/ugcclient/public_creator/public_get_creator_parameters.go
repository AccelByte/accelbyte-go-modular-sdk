// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package public_creator

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

// NewPublicGetCreatorParams creates a new PublicGetCreatorParams object
// with the default values initialized.
func NewPublicGetCreatorParams() *PublicGetCreatorParams {
	var ()
	return &PublicGetCreatorParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewPublicGetCreatorParamsWithTimeout creates a new PublicGetCreatorParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewPublicGetCreatorParamsWithTimeout(timeout time.Duration) *PublicGetCreatorParams {
	var ()
	return &PublicGetCreatorParams{

		timeout: timeout,
	}
}

// NewPublicGetCreatorParamsWithContext creates a new PublicGetCreatorParams object
// with the default values initialized, and the ability to set a context for a request
func NewPublicGetCreatorParamsWithContext(ctx context.Context) *PublicGetCreatorParams {
	var ()
	return &PublicGetCreatorParams{

		Context: ctx,
	}
}

// NewPublicGetCreatorParamsWithHTTPClient creates a new PublicGetCreatorParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPublicGetCreatorParamsWithHTTPClient(client *http.Client) *PublicGetCreatorParams {
	var ()
	return &PublicGetCreatorParams{
		HTTPClient: client,
	}
}

/*PublicGetCreatorParams contains all the parameters to send to the API endpoint
for the public get creator operation typically these are written to a http.Request
*/
type PublicGetCreatorParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  namespace of the game

	*/
	Namespace string
	/*UserID
	  user ID

	*/
	UserID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the public get creator params
func (o *PublicGetCreatorParams) WithTimeout(timeout time.Duration) *PublicGetCreatorParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the public get creator params
func (o *PublicGetCreatorParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the public get creator params
func (o *PublicGetCreatorParams) WithContext(ctx context.Context) *PublicGetCreatorParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the public get creator params
func (o *PublicGetCreatorParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the public get creator params
func (o *PublicGetCreatorParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the public get creator params
func (o *PublicGetCreatorParams) WithHTTPClient(client *http.Client) *PublicGetCreatorParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the public get creator params
func (o *PublicGetCreatorParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the public get creator params
func (o *PublicGetCreatorParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithNamespace adds the namespace to the public get creator params
func (o *PublicGetCreatorParams) WithNamespace(namespace string) *PublicGetCreatorParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the public get creator params
func (o *PublicGetCreatorParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the public get creator params
func (o *PublicGetCreatorParams) WithUserID(userID string) *PublicGetCreatorParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the public get creator params
func (o *PublicGetCreatorParams) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *PublicGetCreatorParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
