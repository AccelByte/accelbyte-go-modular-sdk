// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package matchmaking

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-modular-sdk/matchmaking-sdk/pkg/matchmakingclientmodels"
)

// NewUpdateMatchmakingChannelParams creates a new UpdateMatchmakingChannelParams object
// with the default values initialized.
func NewUpdateMatchmakingChannelParams() *UpdateMatchmakingChannelParams {
	var ()
	return &UpdateMatchmakingChannelParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewUpdateMatchmakingChannelParamsWithTimeout creates a new UpdateMatchmakingChannelParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewUpdateMatchmakingChannelParamsWithTimeout(timeout time.Duration) *UpdateMatchmakingChannelParams {
	var ()
	return &UpdateMatchmakingChannelParams{

		timeout: timeout,
	}
}

// NewUpdateMatchmakingChannelParamsWithContext creates a new UpdateMatchmakingChannelParams object
// with the default values initialized, and the ability to set a context for a request
func NewUpdateMatchmakingChannelParamsWithContext(ctx context.Context) *UpdateMatchmakingChannelParams {
	var ()
	return &UpdateMatchmakingChannelParams{

		Context: ctx,
	}
}

// NewUpdateMatchmakingChannelParamsWithHTTPClient creates a new UpdateMatchmakingChannelParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewUpdateMatchmakingChannelParamsWithHTTPClient(client *http.Client) *UpdateMatchmakingChannelParams {
	var ()
	return &UpdateMatchmakingChannelParams{
		HTTPClient: client,
	}
}

/*UpdateMatchmakingChannelParams contains all the parameters to send to the API endpoint
for the update matchmaking channel operation typically these are written to a http.Request
*/
type UpdateMatchmakingChannelParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *matchmakingclientmodels.ModelsUpdateChannelRequest
	/*ChannelName
	  channel name, accept snake_case, lowercase, and numeric

	*/
	ChannelName string
	/*Namespace
	  namespace of the game, only accept alphabet and numeric

	*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the update matchmaking channel params
func (o *UpdateMatchmakingChannelParams) WithTimeout(timeout time.Duration) *UpdateMatchmakingChannelParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the update matchmaking channel params
func (o *UpdateMatchmakingChannelParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the update matchmaking channel params
func (o *UpdateMatchmakingChannelParams) WithContext(ctx context.Context) *UpdateMatchmakingChannelParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the update matchmaking channel params
func (o *UpdateMatchmakingChannelParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the update matchmaking channel params
func (o *UpdateMatchmakingChannelParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the update matchmaking channel params
func (o *UpdateMatchmakingChannelParams) WithHTTPClient(client *http.Client) *UpdateMatchmakingChannelParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the update matchmaking channel params
func (o *UpdateMatchmakingChannelParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the update matchmaking channel params
func (o *UpdateMatchmakingChannelParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *UpdateMatchmakingChannelParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the update matchmaking channel params
func (o *UpdateMatchmakingChannelParams) WithBody(body *matchmakingclientmodels.ModelsUpdateChannelRequest) *UpdateMatchmakingChannelParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the update matchmaking channel params
func (o *UpdateMatchmakingChannelParams) SetBody(body *matchmakingclientmodels.ModelsUpdateChannelRequest) {
	o.Body = body
}

// WithChannelName adds the channelName to the update matchmaking channel params
func (o *UpdateMatchmakingChannelParams) WithChannelName(channelName string) *UpdateMatchmakingChannelParams {
	o.SetChannelName(channelName)
	return o
}

// SetChannelName adds the channelName to the update matchmaking channel params
func (o *UpdateMatchmakingChannelParams) SetChannelName(channelName string) {
	o.ChannelName = channelName
}

// WithNamespace adds the namespace to the update matchmaking channel params
func (o *UpdateMatchmakingChannelParams) WithNamespace(namespace string) *UpdateMatchmakingChannelParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the update matchmaking channel params
func (o *UpdateMatchmakingChannelParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *UpdateMatchmakingChannelParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	if o.Body != nil {
		if err := r.SetBodyParam(o.Body); err != nil {
			return err
		}
	}

	// path param channelName
	if err := r.SetPathParam("channelName", o.ChannelName); err != nil {
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
