// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package public_content_v2

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

// NewPublicCreateContentV2Params creates a new PublicCreateContentV2Params object
// with the default values initialized.
func NewPublicCreateContentV2Params() *PublicCreateContentV2Params {
	var ()
	return &PublicCreateContentV2Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewPublicCreateContentV2ParamsWithTimeout creates a new PublicCreateContentV2Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewPublicCreateContentV2ParamsWithTimeout(timeout time.Duration) *PublicCreateContentV2Params {
	var ()
	return &PublicCreateContentV2Params{

		timeout: timeout,
	}
}

// NewPublicCreateContentV2ParamsWithContext creates a new PublicCreateContentV2Params object
// with the default values initialized, and the ability to set a context for a request
func NewPublicCreateContentV2ParamsWithContext(ctx context.Context) *PublicCreateContentV2Params {
	var ()
	return &PublicCreateContentV2Params{

		Context: ctx,
	}
}

// NewPublicCreateContentV2ParamsWithHTTPClient creates a new PublicCreateContentV2Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPublicCreateContentV2ParamsWithHTTPClient(client *http.Client) *PublicCreateContentV2Params {
	var ()
	return &PublicCreateContentV2Params{
		HTTPClient: client,
	}
}

/*PublicCreateContentV2Params contains all the parameters to send to the API endpoint
for the public create content v2 operation typically these are written to a http.Request
*/
type PublicCreateContentV2Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *ugcclientmodels.ModelsContentRequestV2
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

// WithTimeout adds the timeout to the public create content v2 params
func (o *PublicCreateContentV2Params) WithTimeout(timeout time.Duration) *PublicCreateContentV2Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the public create content v2 params
func (o *PublicCreateContentV2Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the public create content v2 params
func (o *PublicCreateContentV2Params) WithContext(ctx context.Context) *PublicCreateContentV2Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the public create content v2 params
func (o *PublicCreateContentV2Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the public create content v2 params
func (o *PublicCreateContentV2Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the public create content v2 params
func (o *PublicCreateContentV2Params) WithHTTPClient(client *http.Client) *PublicCreateContentV2Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the public create content v2 params
func (o *PublicCreateContentV2Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the public create content v2 params
func (o *PublicCreateContentV2Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithBody adds the body to the public create content v2 params
func (o *PublicCreateContentV2Params) WithBody(body *ugcclientmodels.ModelsContentRequestV2) *PublicCreateContentV2Params {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the public create content v2 params
func (o *PublicCreateContentV2Params) SetBody(body *ugcclientmodels.ModelsContentRequestV2) {
	o.Body = body
}

// WithChannelID adds the channelID to the public create content v2 params
func (o *PublicCreateContentV2Params) WithChannelID(channelID string) *PublicCreateContentV2Params {
	o.SetChannelID(channelID)
	return o
}

// SetChannelID adds the channelId to the public create content v2 params
func (o *PublicCreateContentV2Params) SetChannelID(channelID string) {
	o.ChannelID = channelID
}

// WithNamespace adds the namespace to the public create content v2 params
func (o *PublicCreateContentV2Params) WithNamespace(namespace string) *PublicCreateContentV2Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the public create content v2 params
func (o *PublicCreateContentV2Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the public create content v2 params
func (o *PublicCreateContentV2Params) WithUserID(userID string) *PublicCreateContentV2Params {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the public create content v2 params
func (o *PublicCreateContentV2Params) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *PublicCreateContentV2Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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