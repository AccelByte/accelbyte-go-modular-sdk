// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package data_retrieval

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

// NewPublicRequestDataRetrievalParams creates a new PublicRequestDataRetrievalParams object
// with the default values initialized.
func NewPublicRequestDataRetrievalParams() *PublicRequestDataRetrievalParams {
	var ()
	return &PublicRequestDataRetrievalParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewPublicRequestDataRetrievalParamsWithTimeout creates a new PublicRequestDataRetrievalParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewPublicRequestDataRetrievalParamsWithTimeout(timeout time.Duration) *PublicRequestDataRetrievalParams {
	var ()
	return &PublicRequestDataRetrievalParams{

		timeout: timeout,
	}
}

// NewPublicRequestDataRetrievalParamsWithContext creates a new PublicRequestDataRetrievalParams object
// with the default values initialized, and the ability to set a context for a request
func NewPublicRequestDataRetrievalParamsWithContext(ctx context.Context) *PublicRequestDataRetrievalParams {
	var ()
	return &PublicRequestDataRetrievalParams{

		Context: ctx,
	}
}

// NewPublicRequestDataRetrievalParamsWithHTTPClient creates a new PublicRequestDataRetrievalParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPublicRequestDataRetrievalParamsWithHTTPClient(client *http.Client) *PublicRequestDataRetrievalParams {
	var ()
	return &PublicRequestDataRetrievalParams{
		HTTPClient: client,
	}
}

/*PublicRequestDataRetrievalParams contains all the parameters to send to the API endpoint
for the public request data retrieval operation typically these are written to a http.Request
*/
type PublicRequestDataRetrievalParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Password
	  IAM password of the user

	*/
	Password string
	/*Namespace
	  namespace of the user

	*/
	Namespace string
	/*UserID
	  IAM id of the user

	*/
	UserID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the public request data retrieval params
func (o *PublicRequestDataRetrievalParams) WithTimeout(timeout time.Duration) *PublicRequestDataRetrievalParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the public request data retrieval params
func (o *PublicRequestDataRetrievalParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the public request data retrieval params
func (o *PublicRequestDataRetrievalParams) WithContext(ctx context.Context) *PublicRequestDataRetrievalParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the public request data retrieval params
func (o *PublicRequestDataRetrievalParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the public request data retrieval params
func (o *PublicRequestDataRetrievalParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the public request data retrieval params
func (o *PublicRequestDataRetrievalParams) WithHTTPClient(client *http.Client) *PublicRequestDataRetrievalParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the public request data retrieval params
func (o *PublicRequestDataRetrievalParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the public request data retrieval params
func (o *PublicRequestDataRetrievalParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithPassword adds the password to the public request data retrieval params
func (o *PublicRequestDataRetrievalParams) WithPassword(password string) *PublicRequestDataRetrievalParams {
	o.SetPassword(password)
	return o
}

// SetPassword adds the password to the public request data retrieval params
func (o *PublicRequestDataRetrievalParams) SetPassword(password string) {
	o.Password = password
}

// WithNamespace adds the namespace to the public request data retrieval params
func (o *PublicRequestDataRetrievalParams) WithNamespace(namespace string) *PublicRequestDataRetrievalParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the public request data retrieval params
func (o *PublicRequestDataRetrievalParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the public request data retrieval params
func (o *PublicRequestDataRetrievalParams) WithUserID(userID string) *PublicRequestDataRetrievalParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the public request data retrieval params
func (o *PublicRequestDataRetrievalParams) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *PublicRequestDataRetrievalParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// form param password
	frPassword := o.Password
	fPassword := frPassword
	if fPassword != "" {
		if err := r.SetFormParam("password", fPassword); err != nil {
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
