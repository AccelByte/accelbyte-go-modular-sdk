// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package admin_channel

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

// NewAdminUpdateChannelParams creates a new AdminUpdateChannelParams object
// with the default values initialized.
func NewAdminUpdateChannelParams() *AdminUpdateChannelParams {
	var ()
	return &AdminUpdateChannelParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminUpdateChannelParamsWithTimeout creates a new AdminUpdateChannelParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminUpdateChannelParamsWithTimeout(timeout time.Duration) *AdminUpdateChannelParams {
	var ()
	return &AdminUpdateChannelParams{

		timeout: timeout,
	}
}

// NewAdminUpdateChannelParamsWithContext creates a new AdminUpdateChannelParams object
// with the default values initialized, and the ability to set a context for a request
func NewAdminUpdateChannelParamsWithContext(ctx context.Context) *AdminUpdateChannelParams {
	var ()
	return &AdminUpdateChannelParams{

		Context: ctx,
	}
}

// NewAdminUpdateChannelParamsWithHTTPClient creates a new AdminUpdateChannelParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminUpdateChannelParamsWithHTTPClient(client *http.Client) *AdminUpdateChannelParams {
	var ()
	return &AdminUpdateChannelParams{
		HTTPClient: client,
	}
}

/*AdminUpdateChannelParams contains all the parameters to send to the API endpoint
for the admin update channel operation typically these are written to a http.Request
*/
type AdminUpdateChannelParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *ugcclientmodels.ModelsChannelRequest
	/*ChannelID
	  channelID

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

// WithTimeout adds the timeout to the admin update channel params
func (o *AdminUpdateChannelParams) WithTimeout(timeout time.Duration) *AdminUpdateChannelParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin update channel params
func (o *AdminUpdateChannelParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin update channel params
func (o *AdminUpdateChannelParams) WithContext(ctx context.Context) *AdminUpdateChannelParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin update channel params
func (o *AdminUpdateChannelParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin update channel params
func (o *AdminUpdateChannelParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin update channel params
func (o *AdminUpdateChannelParams) WithHTTPClient(client *http.Client) *AdminUpdateChannelParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin update channel params
func (o *AdminUpdateChannelParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin update channel params
func (o *AdminUpdateChannelParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithBody adds the body to the admin update channel params
func (o *AdminUpdateChannelParams) WithBody(body *ugcclientmodels.ModelsChannelRequest) *AdminUpdateChannelParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the admin update channel params
func (o *AdminUpdateChannelParams) SetBody(body *ugcclientmodels.ModelsChannelRequest) {
	o.Body = body
}

// WithChannelID adds the channelID to the admin update channel params
func (o *AdminUpdateChannelParams) WithChannelID(channelID string) *AdminUpdateChannelParams {
	o.SetChannelID(channelID)
	return o
}

// SetChannelID adds the channelId to the admin update channel params
func (o *AdminUpdateChannelParams) SetChannelID(channelID string) {
	o.ChannelID = channelID
}

// WithNamespace adds the namespace to the admin update channel params
func (o *AdminUpdateChannelParams) WithNamespace(namespace string) *AdminUpdateChannelParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin update channel params
func (o *AdminUpdateChannelParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the admin update channel params
func (o *AdminUpdateChannelParams) WithUserID(userID string) *AdminUpdateChannelParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the admin update channel params
func (o *AdminUpdateChannelParams) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *AdminUpdateChannelParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
