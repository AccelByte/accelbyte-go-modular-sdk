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

// NewPublicPartialUpdateUserV3Params creates a new PublicPartialUpdateUserV3Params object
// with the default values initialized.
func NewPublicPartialUpdateUserV3Params() *PublicPartialUpdateUserV3Params {
	var ()
	return &PublicPartialUpdateUserV3Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewPublicPartialUpdateUserV3ParamsWithTimeout creates a new PublicPartialUpdateUserV3Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewPublicPartialUpdateUserV3ParamsWithTimeout(timeout time.Duration) *PublicPartialUpdateUserV3Params {
	var ()
	return &PublicPartialUpdateUserV3Params{

		timeout: timeout,
	}
}

// NewPublicPartialUpdateUserV3ParamsWithContext creates a new PublicPartialUpdateUserV3Params object
// with the default values initialized, and the ability to set a context for a request
func NewPublicPartialUpdateUserV3ParamsWithContext(ctx context.Context) *PublicPartialUpdateUserV3Params {
	var ()
	return &PublicPartialUpdateUserV3Params{

		Context: ctx,
	}
}

// NewPublicPartialUpdateUserV3ParamsWithHTTPClient creates a new PublicPartialUpdateUserV3Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPublicPartialUpdateUserV3ParamsWithHTTPClient(client *http.Client) *PublicPartialUpdateUserV3Params {
	var ()
	return &PublicPartialUpdateUserV3Params{
		HTTPClient: client,
	}
}

/*
PublicPartialUpdateUserV3Params contains all the parameters to send to the API endpoint
for the public partial update user v3 operation typically these are written to a http.Request
*/
type PublicPartialUpdateUserV3Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *iamclientmodels.ModelUserUpdateRequestV3
	/*Namespace
	  Namespace, only accept alphabet and numeric

	*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the public partial update user v3 params
func (o *PublicPartialUpdateUserV3Params) WithTimeout(timeout time.Duration) *PublicPartialUpdateUserV3Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the public partial update user v3 params
func (o *PublicPartialUpdateUserV3Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the public partial update user v3 params
func (o *PublicPartialUpdateUserV3Params) WithContext(ctx context.Context) *PublicPartialUpdateUserV3Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the public partial update user v3 params
func (o *PublicPartialUpdateUserV3Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the public partial update user v3 params
func (o *PublicPartialUpdateUserV3Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the public partial update user v3 params
func (o *PublicPartialUpdateUserV3Params) WithHTTPClient(client *http.Client) *PublicPartialUpdateUserV3Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the public partial update user v3 params
func (o *PublicPartialUpdateUserV3Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the public partial update user v3 params
func (o *PublicPartialUpdateUserV3Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithBody adds the body to the public partial update user v3 params
func (o *PublicPartialUpdateUserV3Params) WithBody(body *iamclientmodels.ModelUserUpdateRequestV3) *PublicPartialUpdateUserV3Params {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the public partial update user v3 params
func (o *PublicPartialUpdateUserV3Params) SetBody(body *iamclientmodels.ModelUserUpdateRequestV3) {
	o.Body = body
}

// WithNamespace adds the namespace to the public partial update user v3 params
func (o *PublicPartialUpdateUserV3Params) WithNamespace(namespace string) *PublicPartialUpdateUserV3Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the public partial update user v3 params
func (o *PublicPartialUpdateUserV3Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *PublicPartialUpdateUserV3Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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

	// setting the default header value
	if err := r.SetHeaderParam("X-Amzn-Trace-Id", utils.AmazonTraceIDGen()); err != nil {
		return err
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}

	return nil
}
