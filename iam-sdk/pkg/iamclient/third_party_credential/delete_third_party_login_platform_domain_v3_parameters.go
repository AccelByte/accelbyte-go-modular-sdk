// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package third_party_credential

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

// NewDeleteThirdPartyLoginPlatformDomainV3Params creates a new DeleteThirdPartyLoginPlatformDomainV3Params object
// with the default values initialized.
func NewDeleteThirdPartyLoginPlatformDomainV3Params() *DeleteThirdPartyLoginPlatformDomainV3Params {
	var ()
	return &DeleteThirdPartyLoginPlatformDomainV3Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewDeleteThirdPartyLoginPlatformDomainV3ParamsWithTimeout creates a new DeleteThirdPartyLoginPlatformDomainV3Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewDeleteThirdPartyLoginPlatformDomainV3ParamsWithTimeout(timeout time.Duration) *DeleteThirdPartyLoginPlatformDomainV3Params {
	var ()
	return &DeleteThirdPartyLoginPlatformDomainV3Params{

		timeout: timeout,
	}
}

// NewDeleteThirdPartyLoginPlatformDomainV3ParamsWithContext creates a new DeleteThirdPartyLoginPlatformDomainV3Params object
// with the default values initialized, and the ability to set a context for a request
func NewDeleteThirdPartyLoginPlatformDomainV3ParamsWithContext(ctx context.Context) *DeleteThirdPartyLoginPlatformDomainV3Params {
	var ()
	return &DeleteThirdPartyLoginPlatformDomainV3Params{

		Context: ctx,
	}
}

// NewDeleteThirdPartyLoginPlatformDomainV3ParamsWithHTTPClient creates a new DeleteThirdPartyLoginPlatformDomainV3Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewDeleteThirdPartyLoginPlatformDomainV3ParamsWithHTTPClient(client *http.Client) *DeleteThirdPartyLoginPlatformDomainV3Params {
	var ()
	return &DeleteThirdPartyLoginPlatformDomainV3Params{
		HTTPClient: client,
	}
}

/*DeleteThirdPartyLoginPlatformDomainV3Params contains all the parameters to send to the API endpoint
for the delete third party login platform domain v3 operation typically these are written to a http.Request
*/
type DeleteThirdPartyLoginPlatformDomainV3Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *iamclientmodels.ModelPlatformDomainDeleteRequest
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

// WithTimeout adds the timeout to the delete third party login platform domain v3 params
func (o *DeleteThirdPartyLoginPlatformDomainV3Params) WithTimeout(timeout time.Duration) *DeleteThirdPartyLoginPlatformDomainV3Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the delete third party login platform domain v3 params
func (o *DeleteThirdPartyLoginPlatformDomainV3Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the delete third party login platform domain v3 params
func (o *DeleteThirdPartyLoginPlatformDomainV3Params) WithContext(ctx context.Context) *DeleteThirdPartyLoginPlatformDomainV3Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the delete third party login platform domain v3 params
func (o *DeleteThirdPartyLoginPlatformDomainV3Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the delete third party login platform domain v3 params
func (o *DeleteThirdPartyLoginPlatformDomainV3Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the delete third party login platform domain v3 params
func (o *DeleteThirdPartyLoginPlatformDomainV3Params) WithHTTPClient(client *http.Client) *DeleteThirdPartyLoginPlatformDomainV3Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the delete third party login platform domain v3 params
func (o *DeleteThirdPartyLoginPlatformDomainV3Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the delete third party login platform domain v3 params
func (o *DeleteThirdPartyLoginPlatformDomainV3Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithBody adds the body to the delete third party login platform domain v3 params
func (o *DeleteThirdPartyLoginPlatformDomainV3Params) WithBody(body *iamclientmodels.ModelPlatformDomainDeleteRequest) *DeleteThirdPartyLoginPlatformDomainV3Params {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the delete third party login platform domain v3 params
func (o *DeleteThirdPartyLoginPlatformDomainV3Params) SetBody(body *iamclientmodels.ModelPlatformDomainDeleteRequest) {
	o.Body = body
}

// WithNamespace adds the namespace to the delete third party login platform domain v3 params
func (o *DeleteThirdPartyLoginPlatformDomainV3Params) WithNamespace(namespace string) *DeleteThirdPartyLoginPlatformDomainV3Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the delete third party login platform domain v3 params
func (o *DeleteThirdPartyLoginPlatformDomainV3Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithPlatformID adds the platformID to the delete third party login platform domain v3 params
func (o *DeleteThirdPartyLoginPlatformDomainV3Params) WithPlatformID(platformID string) *DeleteThirdPartyLoginPlatformDomainV3Params {
	o.SetPlatformID(platformID)
	return o
}

// SetPlatformID adds the platformId to the delete third party login platform domain v3 params
func (o *DeleteThirdPartyLoginPlatformDomainV3Params) SetPlatformID(platformID string) {
	o.PlatformID = platformID
}

// WriteToRequest writes these params to a swagger request
func (o *DeleteThirdPartyLoginPlatformDomainV3Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
