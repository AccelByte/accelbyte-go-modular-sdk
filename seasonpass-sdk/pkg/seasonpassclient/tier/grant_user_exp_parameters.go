// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package tier

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-modular-sdk/seasonpass-sdk/pkg/seasonpassclientmodels"
)

// NewGrantUserExpParams creates a new GrantUserExpParams object
// with the default values initialized.
func NewGrantUserExpParams() *GrantUserExpParams {
	var ()
	return &GrantUserExpParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewGrantUserExpParamsWithTimeout creates a new GrantUserExpParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewGrantUserExpParamsWithTimeout(timeout time.Duration) *GrantUserExpParams {
	var ()
	return &GrantUserExpParams{

		timeout: timeout,
	}
}

// NewGrantUserExpParamsWithContext creates a new GrantUserExpParams object
// with the default values initialized, and the ability to set a context for a request
func NewGrantUserExpParamsWithContext(ctx context.Context) *GrantUserExpParams {
	var ()
	return &GrantUserExpParams{

		Context: ctx,
	}
}

// NewGrantUserExpParamsWithHTTPClient creates a new GrantUserExpParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewGrantUserExpParamsWithHTTPClient(client *http.Client) *GrantUserExpParams {
	var ()
	return &GrantUserExpParams{
		HTTPClient: client,
	}
}

/*GrantUserExpParams contains all the parameters to send to the API endpoint
for the grant user exp operation typically these are written to a http.Request
*/
type GrantUserExpParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *seasonpassclientmodels.UserExpGrant
	/*Namespace
	  Namespace

	*/
	Namespace string
	/*UserID*/
	UserID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the grant user exp params
func (o *GrantUserExpParams) WithTimeout(timeout time.Duration) *GrantUserExpParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the grant user exp params
func (o *GrantUserExpParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the grant user exp params
func (o *GrantUserExpParams) WithContext(ctx context.Context) *GrantUserExpParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the grant user exp params
func (o *GrantUserExpParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the grant user exp params
func (o *GrantUserExpParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the grant user exp params
func (o *GrantUserExpParams) WithHTTPClient(client *http.Client) *GrantUserExpParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the grant user exp params
func (o *GrantUserExpParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the grant user exp params
func (o *GrantUserExpParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithBody adds the body to the grant user exp params
func (o *GrantUserExpParams) WithBody(body *seasonpassclientmodels.UserExpGrant) *GrantUserExpParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the grant user exp params
func (o *GrantUserExpParams) SetBody(body *seasonpassclientmodels.UserExpGrant) {
	o.Body = body
}

// WithNamespace adds the namespace to the grant user exp params
func (o *GrantUserExpParams) WithNamespace(namespace string) *GrantUserExpParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the grant user exp params
func (o *GrantUserExpParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the grant user exp params
func (o *GrantUserExpParams) WithUserID(userID string) *GrantUserExpParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the grant user exp params
func (o *GrantUserExpParams) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *GrantUserExpParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
