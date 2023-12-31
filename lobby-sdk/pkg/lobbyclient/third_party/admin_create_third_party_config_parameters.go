// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package third_party

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-modular-sdk/lobby-sdk/pkg/lobbyclientmodels"
)

// NewAdminCreateThirdPartyConfigParams creates a new AdminCreateThirdPartyConfigParams object
// with the default values initialized.
func NewAdminCreateThirdPartyConfigParams() *AdminCreateThirdPartyConfigParams {
	var ()
	return &AdminCreateThirdPartyConfigParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminCreateThirdPartyConfigParamsWithTimeout creates a new AdminCreateThirdPartyConfigParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminCreateThirdPartyConfigParamsWithTimeout(timeout time.Duration) *AdminCreateThirdPartyConfigParams {
	var ()
	return &AdminCreateThirdPartyConfigParams{

		timeout: timeout,
	}
}

// NewAdminCreateThirdPartyConfigParamsWithContext creates a new AdminCreateThirdPartyConfigParams object
// with the default values initialized, and the ability to set a context for a request
func NewAdminCreateThirdPartyConfigParamsWithContext(ctx context.Context) *AdminCreateThirdPartyConfigParams {
	var ()
	return &AdminCreateThirdPartyConfigParams{

		Context: ctx,
	}
}

// NewAdminCreateThirdPartyConfigParamsWithHTTPClient creates a new AdminCreateThirdPartyConfigParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminCreateThirdPartyConfigParamsWithHTTPClient(client *http.Client) *AdminCreateThirdPartyConfigParams {
	var ()
	return &AdminCreateThirdPartyConfigParams{
		HTTPClient: client,
	}
}

/*AdminCreateThirdPartyConfigParams contains all the parameters to send to the API endpoint
for the admin create third party config operation typically these are written to a http.Request
*/
type AdminCreateThirdPartyConfigParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *lobbyclientmodels.ModelsCreateConfigRequest
	/*Namespace
	  namespace

	*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the admin create third party config params
func (o *AdminCreateThirdPartyConfigParams) WithTimeout(timeout time.Duration) *AdminCreateThirdPartyConfigParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin create third party config params
func (o *AdminCreateThirdPartyConfigParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin create third party config params
func (o *AdminCreateThirdPartyConfigParams) WithContext(ctx context.Context) *AdminCreateThirdPartyConfigParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin create third party config params
func (o *AdminCreateThirdPartyConfigParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin create third party config params
func (o *AdminCreateThirdPartyConfigParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin create third party config params
func (o *AdminCreateThirdPartyConfigParams) WithHTTPClient(client *http.Client) *AdminCreateThirdPartyConfigParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin create third party config params
func (o *AdminCreateThirdPartyConfigParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin create third party config params
func (o *AdminCreateThirdPartyConfigParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithBody adds the body to the admin create third party config params
func (o *AdminCreateThirdPartyConfigParams) WithBody(body *lobbyclientmodels.ModelsCreateConfigRequest) *AdminCreateThirdPartyConfigParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the admin create third party config params
func (o *AdminCreateThirdPartyConfigParams) SetBody(body *lobbyclientmodels.ModelsCreateConfigRequest) {
	o.Body = body
}

// WithNamespace adds the namespace to the admin create third party config params
func (o *AdminCreateThirdPartyConfigParams) WithNamespace(namespace string) *AdminCreateThirdPartyConfigParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin create third party config params
func (o *AdminCreateThirdPartyConfigParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *AdminCreateThirdPartyConfigParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
