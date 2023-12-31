// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package public_content_legacy

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

// NewCreateContentDirectParams creates a new CreateContentDirectParams object
// with the default values initialized.
func NewCreateContentDirectParams() *CreateContentDirectParams {
	var ()
	return &CreateContentDirectParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewCreateContentDirectParamsWithTimeout creates a new CreateContentDirectParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewCreateContentDirectParamsWithTimeout(timeout time.Duration) *CreateContentDirectParams {
	var ()
	return &CreateContentDirectParams{

		timeout: timeout,
	}
}

// NewCreateContentDirectParamsWithContext creates a new CreateContentDirectParams object
// with the default values initialized, and the ability to set a context for a request
func NewCreateContentDirectParamsWithContext(ctx context.Context) *CreateContentDirectParams {
	var ()
	return &CreateContentDirectParams{

		Context: ctx,
	}
}

// NewCreateContentDirectParamsWithHTTPClient creates a new CreateContentDirectParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewCreateContentDirectParamsWithHTTPClient(client *http.Client) *CreateContentDirectParams {
	var ()
	return &CreateContentDirectParams{
		HTTPClient: client,
	}
}

/*CreateContentDirectParams contains all the parameters to send to the API endpoint
for the create content direct operation typically these are written to a http.Request
*/
type CreateContentDirectParams struct {

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
	/*UserID
	  user ID

	*/
	UserID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the create content direct params
func (o *CreateContentDirectParams) WithTimeout(timeout time.Duration) *CreateContentDirectParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the create content direct params
func (o *CreateContentDirectParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the create content direct params
func (o *CreateContentDirectParams) WithContext(ctx context.Context) *CreateContentDirectParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the create content direct params
func (o *CreateContentDirectParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the create content direct params
func (o *CreateContentDirectParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the create content direct params
func (o *CreateContentDirectParams) WithHTTPClient(client *http.Client) *CreateContentDirectParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the create content direct params
func (o *CreateContentDirectParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the create content direct params
func (o *CreateContentDirectParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithBody adds the body to the create content direct params
func (o *CreateContentDirectParams) WithBody(body *ugcclientmodels.ModelsCreateContentRequest) *CreateContentDirectParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the create content direct params
func (o *CreateContentDirectParams) SetBody(body *ugcclientmodels.ModelsCreateContentRequest) {
	o.Body = body
}

// WithChannelID adds the channelID to the create content direct params
func (o *CreateContentDirectParams) WithChannelID(channelID string) *CreateContentDirectParams {
	o.SetChannelID(channelID)
	return o
}

// SetChannelID adds the channelId to the create content direct params
func (o *CreateContentDirectParams) SetChannelID(channelID string) {
	o.ChannelID = channelID
}

// WithNamespace adds the namespace to the create content direct params
func (o *CreateContentDirectParams) WithNamespace(namespace string) *CreateContentDirectParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the create content direct params
func (o *CreateContentDirectParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the create content direct params
func (o *CreateContentDirectParams) WithUserID(userID string) *CreateContentDirectParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the create content direct params
func (o *CreateContentDirectParams) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *CreateContentDirectParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
