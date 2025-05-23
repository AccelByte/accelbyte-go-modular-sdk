// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package users

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

// NewPublicForgotPasswordWithoutNamespaceV3Params creates a new PublicForgotPasswordWithoutNamespaceV3Params object
// with the default values initialized.
func NewPublicForgotPasswordWithoutNamespaceV3Params() *PublicForgotPasswordWithoutNamespaceV3Params {
	var ()
	return &PublicForgotPasswordWithoutNamespaceV3Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewPublicForgotPasswordWithoutNamespaceV3ParamsWithTimeout creates a new PublicForgotPasswordWithoutNamespaceV3Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewPublicForgotPasswordWithoutNamespaceV3ParamsWithTimeout(timeout time.Duration) *PublicForgotPasswordWithoutNamespaceV3Params {
	var ()
	return &PublicForgotPasswordWithoutNamespaceV3Params{

		timeout: timeout,
	}
}

// NewPublicForgotPasswordWithoutNamespaceV3ParamsWithContext creates a new PublicForgotPasswordWithoutNamespaceV3Params object
// with the default values initialized, and the ability to set a context for a request
func NewPublicForgotPasswordWithoutNamespaceV3ParamsWithContext(ctx context.Context) *PublicForgotPasswordWithoutNamespaceV3Params {
	var ()
	return &PublicForgotPasswordWithoutNamespaceV3Params{

		Context: ctx,
	}
}

// NewPublicForgotPasswordWithoutNamespaceV3ParamsWithHTTPClient creates a new PublicForgotPasswordWithoutNamespaceV3Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPublicForgotPasswordWithoutNamespaceV3ParamsWithHTTPClient(client *http.Client) *PublicForgotPasswordWithoutNamespaceV3Params {
	var ()
	return &PublicForgotPasswordWithoutNamespaceV3Params{
		HTTPClient: client,
	}
}

/*PublicForgotPasswordWithoutNamespaceV3Params contains all the parameters to send to the API endpoint
for the public forgot password without namespace v3 operation typically these are written to a http.Request
*/
type PublicForgotPasswordWithoutNamespaceV3Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *iamclientmodels.ModelForgotPasswordWithoutNamespaceRequestV3

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the public forgot password without namespace v3 params
func (o *PublicForgotPasswordWithoutNamespaceV3Params) WithTimeout(timeout time.Duration) *PublicForgotPasswordWithoutNamespaceV3Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the public forgot password without namespace v3 params
func (o *PublicForgotPasswordWithoutNamespaceV3Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the public forgot password without namespace v3 params
func (o *PublicForgotPasswordWithoutNamespaceV3Params) WithContext(ctx context.Context) *PublicForgotPasswordWithoutNamespaceV3Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the public forgot password without namespace v3 params
func (o *PublicForgotPasswordWithoutNamespaceV3Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the public forgot password without namespace v3 params
func (o *PublicForgotPasswordWithoutNamespaceV3Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the public forgot password without namespace v3 params
func (o *PublicForgotPasswordWithoutNamespaceV3Params) WithHTTPClient(client *http.Client) *PublicForgotPasswordWithoutNamespaceV3Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the public forgot password without namespace v3 params
func (o *PublicForgotPasswordWithoutNamespaceV3Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the public forgot password without namespace v3 params
func (o *PublicForgotPasswordWithoutNamespaceV3Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *PublicForgotPasswordWithoutNamespaceV3Params) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the public forgot password without namespace v3 params
func (o *PublicForgotPasswordWithoutNamespaceV3Params) WithBody(body *iamclientmodels.ModelForgotPasswordWithoutNamespaceRequestV3) *PublicForgotPasswordWithoutNamespaceV3Params {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the public forgot password without namespace v3 params
func (o *PublicForgotPasswordWithoutNamespaceV3Params) SetBody(body *iamclientmodels.ModelForgotPasswordWithoutNamespaceRequestV3) {
	o.Body = body
}

// WriteToRequest writes these params to a swagger request
func (o *PublicForgotPasswordWithoutNamespaceV3Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	if o.Body != nil {
		if err := r.SetBodyParam(o.Body); err != nil {
			return err
		}
	}

	// setting the default header value
	if err := r.SetHeaderParam("X-Amzn-Trace-Id", utils.AmazonTraceIDGen()); err != nil {
		return err
	}

	if o.XFlightId == nil {
		if err := r.SetHeaderParam("X-Flight-Id", utils.GetDefaultFlightID().Value); err != nil {
			return err
		}
	} else {
		if err := r.SetHeaderParam("X-Flight-Id", *o.XFlightId); err != nil {
			return err
		}
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}

	return nil
}
