// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package anonymization

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

// NewAnonymizeWalletParams creates a new AnonymizeWalletParams object
// with the default values initialized.
func NewAnonymizeWalletParams() *AnonymizeWalletParams {
	var ()
	return &AnonymizeWalletParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewAnonymizeWalletParamsWithTimeout creates a new AnonymizeWalletParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewAnonymizeWalletParamsWithTimeout(timeout time.Duration) *AnonymizeWalletParams {
	var ()
	return &AnonymizeWalletParams{

		timeout: timeout,
	}
}

// NewAnonymizeWalletParamsWithContext creates a new AnonymizeWalletParams object
// with the default values initialized, and the ability to set a context for a request
func NewAnonymizeWalletParamsWithContext(ctx context.Context) *AnonymizeWalletParams {
	var ()
	return &AnonymizeWalletParams{

		Context: ctx,
	}
}

// NewAnonymizeWalletParamsWithHTTPClient creates a new AnonymizeWalletParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAnonymizeWalletParamsWithHTTPClient(client *http.Client) *AnonymizeWalletParams {
	var ()
	return &AnonymizeWalletParams{
		HTTPClient: client,
	}
}

/*AnonymizeWalletParams contains all the parameters to send to the API endpoint
for the anonymize wallet operation typically these are written to a http.Request
*/
type AnonymizeWalletParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace*/
	Namespace string
	/*UserID*/
	UserID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the anonymize wallet params
func (o *AnonymizeWalletParams) WithTimeout(timeout time.Duration) *AnonymizeWalletParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the anonymize wallet params
func (o *AnonymizeWalletParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the anonymize wallet params
func (o *AnonymizeWalletParams) WithContext(ctx context.Context) *AnonymizeWalletParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the anonymize wallet params
func (o *AnonymizeWalletParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the anonymize wallet params
func (o *AnonymizeWalletParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the anonymize wallet params
func (o *AnonymizeWalletParams) WithHTTPClient(client *http.Client) *AnonymizeWalletParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the anonymize wallet params
func (o *AnonymizeWalletParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the anonymize wallet params
func (o *AnonymizeWalletParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithNamespace adds the namespace to the anonymize wallet params
func (o *AnonymizeWalletParams) WithNamespace(namespace string) *AnonymizeWalletParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the anonymize wallet params
func (o *AnonymizeWalletParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the anonymize wallet params
func (o *AnonymizeWalletParams) WithUserID(userID string) *AnonymizeWalletParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the anonymize wallet params
func (o *AnonymizeWalletParams) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *AnonymizeWalletParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
