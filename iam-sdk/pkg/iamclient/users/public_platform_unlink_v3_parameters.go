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

// NewPublicPlatformUnlinkV3Params creates a new PublicPlatformUnlinkV3Params object
// with the default values initialized.
func NewPublicPlatformUnlinkV3Params() *PublicPlatformUnlinkV3Params {
	var ()
	return &PublicPlatformUnlinkV3Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewPublicPlatformUnlinkV3ParamsWithTimeout creates a new PublicPlatformUnlinkV3Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewPublicPlatformUnlinkV3ParamsWithTimeout(timeout time.Duration) *PublicPlatformUnlinkV3Params {
	var ()
	return &PublicPlatformUnlinkV3Params{

		timeout: timeout,
	}
}

// NewPublicPlatformUnlinkV3ParamsWithContext creates a new PublicPlatformUnlinkV3Params object
// with the default values initialized, and the ability to set a context for a request
func NewPublicPlatformUnlinkV3ParamsWithContext(ctx context.Context) *PublicPlatformUnlinkV3Params {
	var ()
	return &PublicPlatformUnlinkV3Params{

		Context: ctx,
	}
}

// NewPublicPlatformUnlinkV3ParamsWithHTTPClient creates a new PublicPlatformUnlinkV3Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPublicPlatformUnlinkV3ParamsWithHTTPClient(client *http.Client) *PublicPlatformUnlinkV3Params {
	var ()
	return &PublicPlatformUnlinkV3Params{
		HTTPClient: client,
	}
}

/*PublicPlatformUnlinkV3Params contains all the parameters to send to the API endpoint
for the public platform unlink v3 operation typically these are written to a http.Request
*/
type PublicPlatformUnlinkV3Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *iamclientmodels.ModelUnlinkUserPlatformRequest
	/*Namespace
	  Namespace, only accept alphabet and numeric

	*/
	Namespace string
	/*PlatformID
	  Platform ID

	*/
	PlatformID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the public platform unlink v3 params
func (o *PublicPlatformUnlinkV3Params) WithTimeout(timeout time.Duration) *PublicPlatformUnlinkV3Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the public platform unlink v3 params
func (o *PublicPlatformUnlinkV3Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the public platform unlink v3 params
func (o *PublicPlatformUnlinkV3Params) WithContext(ctx context.Context) *PublicPlatformUnlinkV3Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the public platform unlink v3 params
func (o *PublicPlatformUnlinkV3Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the public platform unlink v3 params
func (o *PublicPlatformUnlinkV3Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the public platform unlink v3 params
func (o *PublicPlatformUnlinkV3Params) WithHTTPClient(client *http.Client) *PublicPlatformUnlinkV3Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the public platform unlink v3 params
func (o *PublicPlatformUnlinkV3Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the public platform unlink v3 params
func (o *PublicPlatformUnlinkV3Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithBody adds the body to the public platform unlink v3 params
func (o *PublicPlatformUnlinkV3Params) WithBody(body *iamclientmodels.ModelUnlinkUserPlatformRequest) *PublicPlatformUnlinkV3Params {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the public platform unlink v3 params
func (o *PublicPlatformUnlinkV3Params) SetBody(body *iamclientmodels.ModelUnlinkUserPlatformRequest) {
	o.Body = body
}

// WithNamespace adds the namespace to the public platform unlink v3 params
func (o *PublicPlatformUnlinkV3Params) WithNamespace(namespace string) *PublicPlatformUnlinkV3Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the public platform unlink v3 params
func (o *PublicPlatformUnlinkV3Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithPlatformID adds the platformID to the public platform unlink v3 params
func (o *PublicPlatformUnlinkV3Params) WithPlatformID(platformID string) *PublicPlatformUnlinkV3Params {
	o.SetPlatformID(platformID)
	return o
}

// SetPlatformID adds the platformId to the public platform unlink v3 params
func (o *PublicPlatformUnlinkV3Params) SetPlatformID(platformID string) {
	o.PlatformID = platformID
}

// WriteToRequest writes these params to a swagger request
func (o *PublicPlatformUnlinkV3Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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

	// path param platformId
	if err := r.SetPathParam("platformId", o.PlatformID); err != nil {
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
