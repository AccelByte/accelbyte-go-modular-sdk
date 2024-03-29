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
)

// NewGetAllSessionsInChannelParams creates a new GetAllSessionsInChannelParams object
// with the default values initialized.
func NewGetAllSessionsInChannelParams() *GetAllSessionsInChannelParams {
	var ()
	return &GetAllSessionsInChannelParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewGetAllSessionsInChannelParamsWithTimeout creates a new GetAllSessionsInChannelParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewGetAllSessionsInChannelParamsWithTimeout(timeout time.Duration) *GetAllSessionsInChannelParams {
	var ()
	return &GetAllSessionsInChannelParams{

		timeout: timeout,
	}
}

// NewGetAllSessionsInChannelParamsWithContext creates a new GetAllSessionsInChannelParams object
// with the default values initialized, and the ability to set a context for a request
func NewGetAllSessionsInChannelParamsWithContext(ctx context.Context) *GetAllSessionsInChannelParams {
	var ()
	return &GetAllSessionsInChannelParams{

		Context: ctx,
	}
}

// NewGetAllSessionsInChannelParamsWithHTTPClient creates a new GetAllSessionsInChannelParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewGetAllSessionsInChannelParamsWithHTTPClient(client *http.Client) *GetAllSessionsInChannelParams {
	var ()
	return &GetAllSessionsInChannelParams{
		HTTPClient: client,
	}
}

/*GetAllSessionsInChannelParams contains all the parameters to send to the API endpoint
for the get all sessions in channel operation typically these are written to a http.Request
*/
type GetAllSessionsInChannelParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
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

// WithTimeout adds the timeout to the get all sessions in channel params
func (o *GetAllSessionsInChannelParams) WithTimeout(timeout time.Duration) *GetAllSessionsInChannelParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the get all sessions in channel params
func (o *GetAllSessionsInChannelParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the get all sessions in channel params
func (o *GetAllSessionsInChannelParams) WithContext(ctx context.Context) *GetAllSessionsInChannelParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the get all sessions in channel params
func (o *GetAllSessionsInChannelParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the get all sessions in channel params
func (o *GetAllSessionsInChannelParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the get all sessions in channel params
func (o *GetAllSessionsInChannelParams) WithHTTPClient(client *http.Client) *GetAllSessionsInChannelParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the get all sessions in channel params
func (o *GetAllSessionsInChannelParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the get all sessions in channel params
func (o *GetAllSessionsInChannelParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *GetAllSessionsInChannelParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithChannelName adds the channelName to the get all sessions in channel params
func (o *GetAllSessionsInChannelParams) WithChannelName(channelName string) *GetAllSessionsInChannelParams {
	o.SetChannelName(channelName)
	return o
}

// SetChannelName adds the channelName to the get all sessions in channel params
func (o *GetAllSessionsInChannelParams) SetChannelName(channelName string) {
	o.ChannelName = channelName
}

// WithNamespace adds the namespace to the get all sessions in channel params
func (o *GetAllSessionsInChannelParams) WithNamespace(namespace string) *GetAllSessionsInChannelParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the get all sessions in channel params
func (o *GetAllSessionsInChannelParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *GetAllSessionsInChannelParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

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
