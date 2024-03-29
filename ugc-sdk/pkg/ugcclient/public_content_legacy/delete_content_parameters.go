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
)

// NewDeleteContentParams creates a new DeleteContentParams object
// with the default values initialized.
func NewDeleteContentParams() *DeleteContentParams {
	var ()
	return &DeleteContentParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewDeleteContentParamsWithTimeout creates a new DeleteContentParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewDeleteContentParamsWithTimeout(timeout time.Duration) *DeleteContentParams {
	var ()
	return &DeleteContentParams{

		timeout: timeout,
	}
}

// NewDeleteContentParamsWithContext creates a new DeleteContentParams object
// with the default values initialized, and the ability to set a context for a request
func NewDeleteContentParamsWithContext(ctx context.Context) *DeleteContentParams {
	var ()
	return &DeleteContentParams{

		Context: ctx,
	}
}

// NewDeleteContentParamsWithHTTPClient creates a new DeleteContentParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewDeleteContentParamsWithHTTPClient(client *http.Client) *DeleteContentParams {
	var ()
	return &DeleteContentParams{
		HTTPClient: client,
	}
}

/*DeleteContentParams contains all the parameters to send to the API endpoint
for the delete content operation typically these are written to a http.Request
*/
type DeleteContentParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*ChannelID
	  channel ID

	*/
	ChannelID string
	/*ContentID
	  content ID

	*/
	ContentID string
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

// WithTimeout adds the timeout to the delete content params
func (o *DeleteContentParams) WithTimeout(timeout time.Duration) *DeleteContentParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the delete content params
func (o *DeleteContentParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the delete content params
func (o *DeleteContentParams) WithContext(ctx context.Context) *DeleteContentParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the delete content params
func (o *DeleteContentParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the delete content params
func (o *DeleteContentParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the delete content params
func (o *DeleteContentParams) WithHTTPClient(client *http.Client) *DeleteContentParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the delete content params
func (o *DeleteContentParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the delete content params
func (o *DeleteContentParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *DeleteContentParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithChannelID adds the channelID to the delete content params
func (o *DeleteContentParams) WithChannelID(channelID string) *DeleteContentParams {
	o.SetChannelID(channelID)
	return o
}

// SetChannelID adds the channelId to the delete content params
func (o *DeleteContentParams) SetChannelID(channelID string) {
	o.ChannelID = channelID
}

// WithContentID adds the contentID to the delete content params
func (o *DeleteContentParams) WithContentID(contentID string) *DeleteContentParams {
	o.SetContentID(contentID)
	return o
}

// SetContentID adds the contentId to the delete content params
func (o *DeleteContentParams) SetContentID(contentID string) {
	o.ContentID = contentID
}

// WithNamespace adds the namespace to the delete content params
func (o *DeleteContentParams) WithNamespace(namespace string) *DeleteContentParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the delete content params
func (o *DeleteContentParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the delete content params
func (o *DeleteContentParams) WithUserID(userID string) *DeleteContentParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the delete content params
func (o *DeleteContentParams) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *DeleteContentParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param channelId
	if err := r.SetPathParam("channelId", o.ChannelID); err != nil {
		return err
	}

	// path param contentId
	if err := r.SetPathParam("contentId", o.ContentID); err != nil {
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
