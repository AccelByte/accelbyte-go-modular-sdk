// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package roles

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

// NewAdminCreateRoleV4Params creates a new AdminCreateRoleV4Params object
// with the default values initialized.
func NewAdminCreateRoleV4Params() *AdminCreateRoleV4Params {
	var ()
	return &AdminCreateRoleV4Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminCreateRoleV4ParamsWithTimeout creates a new AdminCreateRoleV4Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminCreateRoleV4ParamsWithTimeout(timeout time.Duration) *AdminCreateRoleV4Params {
	var ()
	return &AdminCreateRoleV4Params{

		timeout: timeout,
	}
}

// NewAdminCreateRoleV4ParamsWithContext creates a new AdminCreateRoleV4Params object
// with the default values initialized, and the ability to set a context for a request
func NewAdminCreateRoleV4ParamsWithContext(ctx context.Context) *AdminCreateRoleV4Params {
	var ()
	return &AdminCreateRoleV4Params{

		Context: ctx,
	}
}

// NewAdminCreateRoleV4ParamsWithHTTPClient creates a new AdminCreateRoleV4Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminCreateRoleV4ParamsWithHTTPClient(client *http.Client) *AdminCreateRoleV4Params {
	var ()
	return &AdminCreateRoleV4Params{
		HTTPClient: client,
	}
}

/*AdminCreateRoleV4Params contains all the parameters to send to the API endpoint
for the admin create role v4 operation typically these are written to a http.Request
*/
type AdminCreateRoleV4Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *iamclientmodels.ModelRoleV4Request

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the admin create role v4 params
func (o *AdminCreateRoleV4Params) WithTimeout(timeout time.Duration) *AdminCreateRoleV4Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin create role v4 params
func (o *AdminCreateRoleV4Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin create role v4 params
func (o *AdminCreateRoleV4Params) WithContext(ctx context.Context) *AdminCreateRoleV4Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin create role v4 params
func (o *AdminCreateRoleV4Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin create role v4 params
func (o *AdminCreateRoleV4Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin create role v4 params
func (o *AdminCreateRoleV4Params) WithHTTPClient(client *http.Client) *AdminCreateRoleV4Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin create role v4 params
func (o *AdminCreateRoleV4Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin create role v4 params
func (o *AdminCreateRoleV4Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithBody adds the body to the admin create role v4 params
func (o *AdminCreateRoleV4Params) WithBody(body *iamclientmodels.ModelRoleV4Request) *AdminCreateRoleV4Params {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the admin create role v4 params
func (o *AdminCreateRoleV4Params) SetBody(body *iamclientmodels.ModelRoleV4Request) {
	o.Body = body
}

// WriteToRequest writes these params to a swagger request
func (o *AdminCreateRoleV4Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}

	return nil
}
