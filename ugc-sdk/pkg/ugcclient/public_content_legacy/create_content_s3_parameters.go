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

// NewCreateContentS3Params creates a new CreateContentS3Params object
// with the default values initialized.
func NewCreateContentS3Params() *CreateContentS3Params {
	var ()
	return &CreateContentS3Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewCreateContentS3ParamsWithTimeout creates a new CreateContentS3Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewCreateContentS3ParamsWithTimeout(timeout time.Duration) *CreateContentS3Params {
	var ()
	return &CreateContentS3Params{

		timeout: timeout,
	}
}

// NewCreateContentS3ParamsWithContext creates a new CreateContentS3Params object
// with the default values initialized, and the ability to set a context for a request
func NewCreateContentS3ParamsWithContext(ctx context.Context) *CreateContentS3Params {
	var ()
	return &CreateContentS3Params{

		Context: ctx,
	}
}

// NewCreateContentS3ParamsWithHTTPClient creates a new CreateContentS3Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewCreateContentS3ParamsWithHTTPClient(client *http.Client) *CreateContentS3Params {
	var ()
	return &CreateContentS3Params{
		HTTPClient: client,
	}
}

/*CreateContentS3Params contains all the parameters to send to the API endpoint
for the create content s3 operation typically these are written to a http.Request
*/
type CreateContentS3Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *ugcclientmodels.ModelsPublicCreateContentRequestS3
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

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the create content s3 params
func (o *CreateContentS3Params) WithTimeout(timeout time.Duration) *CreateContentS3Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the create content s3 params
func (o *CreateContentS3Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the create content s3 params
func (o *CreateContentS3Params) WithContext(ctx context.Context) *CreateContentS3Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the create content s3 params
func (o *CreateContentS3Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the create content s3 params
func (o *CreateContentS3Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the create content s3 params
func (o *CreateContentS3Params) WithHTTPClient(client *http.Client) *CreateContentS3Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the create content s3 params
func (o *CreateContentS3Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the create content s3 params
func (o *CreateContentS3Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *CreateContentS3Params) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the create content s3 params
func (o *CreateContentS3Params) WithBody(body *ugcclientmodels.ModelsPublicCreateContentRequestS3) *CreateContentS3Params {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the create content s3 params
func (o *CreateContentS3Params) SetBody(body *ugcclientmodels.ModelsPublicCreateContentRequestS3) {
	o.Body = body
}

// WithChannelID adds the channelID to the create content s3 params
func (o *CreateContentS3Params) WithChannelID(channelID string) *CreateContentS3Params {
	o.SetChannelID(channelID)
	return o
}

// SetChannelID adds the channelId to the create content s3 params
func (o *CreateContentS3Params) SetChannelID(channelID string) {
	o.ChannelID = channelID
}

// WithNamespace adds the namespace to the create content s3 params
func (o *CreateContentS3Params) WithNamespace(namespace string) *CreateContentS3Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the create content s3 params
func (o *CreateContentS3Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the create content s3 params
func (o *CreateContentS3Params) WithUserID(userID string) *CreateContentS3Params {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the create content s3 params
func (o *CreateContentS3Params) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *CreateContentS3Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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

	if o.XFlightId == nil {
		if err := r.SetHeaderParam("X-Flight-Id", utils.GetDefaultFlightID().Value); err != nil {
			return err
		}
	} else {
		if err := r.SetHeaderParam("X-Flight-Id", *o.XFlightId); err != nil {
			return err
		}
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}

	return nil
}
