// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package users_v4

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

// NewPublicCreateUserV4Params creates a new PublicCreateUserV4Params object
// with the default values initialized.
func NewPublicCreateUserV4Params() *PublicCreateUserV4Params {
	var ()
	return &PublicCreateUserV4Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewPublicCreateUserV4ParamsWithTimeout creates a new PublicCreateUserV4Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewPublicCreateUserV4ParamsWithTimeout(timeout time.Duration) *PublicCreateUserV4Params {
	var ()
	return &PublicCreateUserV4Params{

		timeout: timeout,
	}
}

// NewPublicCreateUserV4ParamsWithContext creates a new PublicCreateUserV4Params object
// with the default values initialized, and the ability to set a context for a request
func NewPublicCreateUserV4ParamsWithContext(ctx context.Context) *PublicCreateUserV4Params {
	var ()
	return &PublicCreateUserV4Params{

		Context: ctx,
	}
}

// NewPublicCreateUserV4ParamsWithHTTPClient creates a new PublicCreateUserV4Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPublicCreateUserV4ParamsWithHTTPClient(client *http.Client) *PublicCreateUserV4Params {
	var ()
	return &PublicCreateUserV4Params{
		HTTPClient: client,
	}
}

/*PublicCreateUserV4Params contains all the parameters to send to the API endpoint
for the public create user v4 operation typically these are written to a http.Request
*/
type PublicCreateUserV4Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *iamclientmodels.AccountCreateUserRequestV4
	/*Namespace
	  Namespace, only accept alphabet and numeric

	*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the public create user v4 params
func (o *PublicCreateUserV4Params) WithTimeout(timeout time.Duration) *PublicCreateUserV4Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the public create user v4 params
func (o *PublicCreateUserV4Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the public create user v4 params
func (o *PublicCreateUserV4Params) WithContext(ctx context.Context) *PublicCreateUserV4Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the public create user v4 params
func (o *PublicCreateUserV4Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the public create user v4 params
func (o *PublicCreateUserV4Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the public create user v4 params
func (o *PublicCreateUserV4Params) WithHTTPClient(client *http.Client) *PublicCreateUserV4Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the public create user v4 params
func (o *PublicCreateUserV4Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the public create user v4 params
func (o *PublicCreateUserV4Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithBody adds the body to the public create user v4 params
func (o *PublicCreateUserV4Params) WithBody(body *iamclientmodels.AccountCreateUserRequestV4) *PublicCreateUserV4Params {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the public create user v4 params
func (o *PublicCreateUserV4Params) SetBody(body *iamclientmodels.AccountCreateUserRequestV4) {
	o.Body = body
}

// WithNamespace adds the namespace to the public create user v4 params
func (o *PublicCreateUserV4Params) WithNamespace(namespace string) *PublicCreateUserV4Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the public create user v4 params
func (o *PublicCreateUserV4Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *PublicCreateUserV4Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
