// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package admin_content

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-modular-sdk/ugc-sdk/pkg/ugcclientmodels"
)

// NewAdminUploadContentDirectParams creates a new AdminUploadContentDirectParams object
// with the default values initialized.
func NewAdminUploadContentDirectParams() *AdminUploadContentDirectParams {
	var ()
	return &AdminUploadContentDirectParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminUploadContentDirectParamsWithTimeout creates a new AdminUploadContentDirectParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminUploadContentDirectParamsWithTimeout(timeout time.Duration) *AdminUploadContentDirectParams {
	var ()
	return &AdminUploadContentDirectParams{

		timeout: timeout,
	}
}

// NewAdminUploadContentDirectParamsWithContext creates a new AdminUploadContentDirectParams object
// with the default values initialized, and the ability to set a context for a request
func NewAdminUploadContentDirectParamsWithContext(ctx context.Context) *AdminUploadContentDirectParams {
	var ()
	return &AdminUploadContentDirectParams{

		Context: ctx,
	}
}

// NewAdminUploadContentDirectParamsWithHTTPClient creates a new AdminUploadContentDirectParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminUploadContentDirectParamsWithHTTPClient(client *http.Client) *AdminUploadContentDirectParams {
	var ()
	return &AdminUploadContentDirectParams{
		HTTPClient: client,
	}
}

/*AdminUploadContentDirectParams contains all the parameters to send to the API endpoint
for the admin upload content direct operation typically these are written to a http.Request
*/
type AdminUploadContentDirectParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *ugcclientmodels.ModelsCreateContentRequest
	/*ChannelID
	  channel ID

	*/
	ChannelID string
	/*Namespace
	  namespace of the game

	*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the admin upload content direct params
func (o *AdminUploadContentDirectParams) WithTimeout(timeout time.Duration) *AdminUploadContentDirectParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin upload content direct params
func (o *AdminUploadContentDirectParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin upload content direct params
func (o *AdminUploadContentDirectParams) WithContext(ctx context.Context) *AdminUploadContentDirectParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin upload content direct params
func (o *AdminUploadContentDirectParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin upload content direct params
func (o *AdminUploadContentDirectParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin upload content direct params
func (o *AdminUploadContentDirectParams) WithHTTPClient(client *http.Client) *AdminUploadContentDirectParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin upload content direct params
func (o *AdminUploadContentDirectParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin upload content direct params
func (o *AdminUploadContentDirectParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithBody adds the body to the admin upload content direct params
func (o *AdminUploadContentDirectParams) WithBody(body *ugcclientmodels.ModelsCreateContentRequest) *AdminUploadContentDirectParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the admin upload content direct params
func (o *AdminUploadContentDirectParams) SetBody(body *ugcclientmodels.ModelsCreateContentRequest) {
	o.Body = body
}

// WithChannelID adds the channelID to the admin upload content direct params
func (o *AdminUploadContentDirectParams) WithChannelID(channelID string) *AdminUploadContentDirectParams {
	o.SetChannelID(channelID)
	return o
}

// SetChannelID adds the channelId to the admin upload content direct params
func (o *AdminUploadContentDirectParams) SetChannelID(channelID string) {
	o.ChannelID = channelID
}

// WithNamespace adds the namespace to the admin upload content direct params
func (o *AdminUploadContentDirectParams) WithNamespace(namespace string) *AdminUploadContentDirectParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin upload content direct params
func (o *AdminUploadContentDirectParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *AdminUploadContentDirectParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	if o.Body != nil {
		if err := r.SetBodyParam(o.Body); err != nil {
			return err
		}
	}

	// path param channelId
	if err := r.SetPathParam("channelId", o.ChannelID); err != nil {
		return err
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
