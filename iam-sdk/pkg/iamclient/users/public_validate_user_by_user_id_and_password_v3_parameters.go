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
)

// NewPublicValidateUserByUserIDAndPasswordV3Params creates a new PublicValidateUserByUserIDAndPasswordV3Params object
// with the default values initialized.
func NewPublicValidateUserByUserIDAndPasswordV3Params() *PublicValidateUserByUserIDAndPasswordV3Params {
	var ()
	return &PublicValidateUserByUserIDAndPasswordV3Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewPublicValidateUserByUserIDAndPasswordV3ParamsWithTimeout creates a new PublicValidateUserByUserIDAndPasswordV3Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewPublicValidateUserByUserIDAndPasswordV3ParamsWithTimeout(timeout time.Duration) *PublicValidateUserByUserIDAndPasswordV3Params {
	var ()
	return &PublicValidateUserByUserIDAndPasswordV3Params{

		timeout: timeout,
	}
}

// NewPublicValidateUserByUserIDAndPasswordV3ParamsWithContext creates a new PublicValidateUserByUserIDAndPasswordV3Params object
// with the default values initialized, and the ability to set a context for a request
func NewPublicValidateUserByUserIDAndPasswordV3ParamsWithContext(ctx context.Context) *PublicValidateUserByUserIDAndPasswordV3Params {
	var ()
	return &PublicValidateUserByUserIDAndPasswordV3Params{

		Context: ctx,
	}
}

// NewPublicValidateUserByUserIDAndPasswordV3ParamsWithHTTPClient creates a new PublicValidateUserByUserIDAndPasswordV3Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPublicValidateUserByUserIDAndPasswordV3ParamsWithHTTPClient(client *http.Client) *PublicValidateUserByUserIDAndPasswordV3Params {
	var ()
	return &PublicValidateUserByUserIDAndPasswordV3Params{
		HTTPClient: client,
	}
}

/*
PublicValidateUserByUserIDAndPasswordV3Params contains all the parameters to send to the API endpoint
for the public validate user by user ID and password v3 operation typically these are written to a http.Request
*/
type PublicValidateUserByUserIDAndPasswordV3Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  Namespace, only accept alphabet and numeric

	*/
	Namespace string
	/*Password
	  User password

	*/
	Password string
	/*UserID
	  User ID

	*/
	UserID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the public validate user by user ID and password v3 params
func (o *PublicValidateUserByUserIDAndPasswordV3Params) WithTimeout(timeout time.Duration) *PublicValidateUserByUserIDAndPasswordV3Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the public validate user by user ID and password v3 params
func (o *PublicValidateUserByUserIDAndPasswordV3Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the public validate user by user ID and password v3 params
func (o *PublicValidateUserByUserIDAndPasswordV3Params) WithContext(ctx context.Context) *PublicValidateUserByUserIDAndPasswordV3Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the public validate user by user ID and password v3 params
func (o *PublicValidateUserByUserIDAndPasswordV3Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the public validate user by user ID and password v3 params
func (o *PublicValidateUserByUserIDAndPasswordV3Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the public validate user by user ID and password v3 params
func (o *PublicValidateUserByUserIDAndPasswordV3Params) WithHTTPClient(client *http.Client) *PublicValidateUserByUserIDAndPasswordV3Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the public validate user by user ID and password v3 params
func (o *PublicValidateUserByUserIDAndPasswordV3Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the public validate user by user ID and password v3 params
func (o *PublicValidateUserByUserIDAndPasswordV3Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithNamespace adds the namespace to the public validate user by user ID and password v3 params
func (o *PublicValidateUserByUserIDAndPasswordV3Params) WithNamespace(namespace string) *PublicValidateUserByUserIDAndPasswordV3Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the public validate user by user ID and password v3 params
func (o *PublicValidateUserByUserIDAndPasswordV3Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithPassword adds the password to the public validate user by user ID and password v3 params
func (o *PublicValidateUserByUserIDAndPasswordV3Params) WithPassword(password string) *PublicValidateUserByUserIDAndPasswordV3Params {
	o.SetPassword(password)
	return o
}

// SetPassword adds the password to the public validate user by user ID and password v3 params
func (o *PublicValidateUserByUserIDAndPasswordV3Params) SetPassword(password string) {
	o.Password = password
}

// WithUserID adds the userID to the public validate user by user ID and password v3 params
func (o *PublicValidateUserByUserIDAndPasswordV3Params) WithUserID(userID string) *PublicValidateUserByUserIDAndPasswordV3Params {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the public validate user by user ID and password v3 params
func (o *PublicValidateUserByUserIDAndPasswordV3Params) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *PublicValidateUserByUserIDAndPasswordV3Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	// form param password
	frPassword := o.Password
	fPassword := frPassword
	if fPassword != "" {
		if err := r.SetFormParam("password", fPassword); err != nil {
			return err
		}
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
