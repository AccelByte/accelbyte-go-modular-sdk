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

// NewCreateRoleParams creates a new CreateRoleParams object
// with the default values initialized.
func NewCreateRoleParams() *CreateRoleParams {
	var ()
	return &CreateRoleParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewCreateRoleParamsWithTimeout creates a new CreateRoleParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewCreateRoleParamsWithTimeout(timeout time.Duration) *CreateRoleParams {
	var ()
	return &CreateRoleParams{

		timeout: timeout,
	}
}

// NewCreateRoleParamsWithContext creates a new CreateRoleParams object
// with the default values initialized, and the ability to set a context for a request
func NewCreateRoleParamsWithContext(ctx context.Context) *CreateRoleParams {
	var ()
	return &CreateRoleParams{

		Context: ctx,
	}
}

// NewCreateRoleParamsWithHTTPClient creates a new CreateRoleParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewCreateRoleParamsWithHTTPClient(client *http.Client) *CreateRoleParams {
	var ()
	return &CreateRoleParams{
		HTTPClient: client,
	}
}

/*CreateRoleParams contains all the parameters to send to the API endpoint
for the create role operation typically these are written to a http.Request
*/
type CreateRoleParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *iamclientmodels.ModelRoleCreateRequest

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the create role params
func (o *CreateRoleParams) WithTimeout(timeout time.Duration) *CreateRoleParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the create role params
func (o *CreateRoleParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the create role params
func (o *CreateRoleParams) WithContext(ctx context.Context) *CreateRoleParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the create role params
func (o *CreateRoleParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the create role params
func (o *CreateRoleParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the create role params
func (o *CreateRoleParams) WithHTTPClient(client *http.Client) *CreateRoleParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the create role params
func (o *CreateRoleParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the create role params
func (o *CreateRoleParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithBody adds the body to the create role params
func (o *CreateRoleParams) WithBody(body *iamclientmodels.ModelRoleCreateRequest) *CreateRoleParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the create role params
func (o *CreateRoleParams) SetBody(body *iamclientmodels.ModelRoleCreateRequest) {
	o.Body = body
}

// WriteToRequest writes these params to a swagger request
func (o *CreateRoleParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
