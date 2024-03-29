// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

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

// NewSingleAdminUpdateChannelParams creates a new SingleAdminUpdateChannelParams object
// with the default values initialized.
func NewSingleAdminUpdateChannelParams() *SingleAdminUpdateChannelParams {
	var ()
	return &SingleAdminUpdateChannelParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewSingleAdminUpdateChannelParamsWithTimeout creates a new SingleAdminUpdateChannelParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewSingleAdminUpdateChannelParamsWithTimeout(timeout time.Duration) *SingleAdminUpdateChannelParams {
	var ()
	return &SingleAdminUpdateChannelParams{

		timeout: timeout,
	}
}

// NewSingleAdminUpdateChannelParamsWithContext creates a new SingleAdminUpdateChannelParams object
// with the default values initialized, and the ability to set a context for a request
func NewSingleAdminUpdateChannelParamsWithContext(ctx context.Context) *SingleAdminUpdateChannelParams {
	var ()
	return &SingleAdminUpdateChannelParams{

		Context: ctx,
	}
}

// NewSingleAdminUpdateChannelParamsWithHTTPClient creates a new SingleAdminUpdateChannelParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewSingleAdminUpdateChannelParamsWithHTTPClient(client *http.Client) *SingleAdminUpdateChannelParams {
	var ()
	return &SingleAdminUpdateChannelParams{
		HTTPClient: client,
	}
}

/*SingleAdminUpdateChannelParams contains all the parameters to send to the API endpoint
for the single admin update channel operation typically these are written to a http.Request
*/
type SingleAdminUpdateChannelParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *ugcclientmodels.ModelsUpdateChannelRequest
	/*ChannelID
	  channelID

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

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the single admin update channel params
func (o *SingleAdminUpdateChannelParams) WithTimeout(timeout time.Duration) *SingleAdminUpdateChannelParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the single admin update channel params
func (o *SingleAdminUpdateChannelParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the single admin update channel params
func (o *SingleAdminUpdateChannelParams) WithContext(ctx context.Context) *SingleAdminUpdateChannelParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the single admin update channel params
func (o *SingleAdminUpdateChannelParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the single admin update channel params
func (o *SingleAdminUpdateChannelParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the single admin update channel params
func (o *SingleAdminUpdateChannelParams) WithHTTPClient(client *http.Client) *SingleAdminUpdateChannelParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the single admin update channel params
func (o *SingleAdminUpdateChannelParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the single admin update channel params
func (o *SingleAdminUpdateChannelParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *SingleAdminUpdateChannelParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the single admin update channel params
func (o *SingleAdminUpdateChannelParams) WithBody(body *ugcclientmodels.ModelsUpdateChannelRequest) *SingleAdminUpdateChannelParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the single admin update channel params
func (o *SingleAdminUpdateChannelParams) SetBody(body *ugcclientmodels.ModelsUpdateChannelRequest) {
	o.Body = body
}

// WithChannelID adds the channelID to the single admin update channel params
func (o *SingleAdminUpdateChannelParams) WithChannelID(channelID string) *SingleAdminUpdateChannelParams {
	o.SetChannelID(channelID)
	return o
}

// SetChannelID adds the channelId to the single admin update channel params
func (o *SingleAdminUpdateChannelParams) SetChannelID(channelID string) {
	o.ChannelID = channelID
}

// WithNamespace adds the namespace to the single admin update channel params
func (o *SingleAdminUpdateChannelParams) WithNamespace(namespace string) *SingleAdminUpdateChannelParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the single admin update channel params
func (o *SingleAdminUpdateChannelParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *SingleAdminUpdateChannelParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
