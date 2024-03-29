// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package campaign

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

// NewGetCampaignParams creates a new GetCampaignParams object
// with the default values initialized.
func NewGetCampaignParams() *GetCampaignParams {
	var ()
	return &GetCampaignParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewGetCampaignParamsWithTimeout creates a new GetCampaignParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewGetCampaignParamsWithTimeout(timeout time.Duration) *GetCampaignParams {
	var ()
	return &GetCampaignParams{

		timeout: timeout,
	}
}

// NewGetCampaignParamsWithContext creates a new GetCampaignParams object
// with the default values initialized, and the ability to set a context for a request
func NewGetCampaignParamsWithContext(ctx context.Context) *GetCampaignParams {
	var ()
	return &GetCampaignParams{

		Context: ctx,
	}
}

// NewGetCampaignParamsWithHTTPClient creates a new GetCampaignParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewGetCampaignParamsWithHTTPClient(client *http.Client) *GetCampaignParams {
	var ()
	return &GetCampaignParams{
		HTTPClient: client,
	}
}

/*GetCampaignParams contains all the parameters to send to the API endpoint
for the get campaign operation typically these are written to a http.Request
*/
type GetCampaignParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*CampaignID*/
	CampaignID string
	/*Namespace*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the get campaign params
func (o *GetCampaignParams) WithTimeout(timeout time.Duration) *GetCampaignParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the get campaign params
func (o *GetCampaignParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the get campaign params
func (o *GetCampaignParams) WithContext(ctx context.Context) *GetCampaignParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the get campaign params
func (o *GetCampaignParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the get campaign params
func (o *GetCampaignParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the get campaign params
func (o *GetCampaignParams) WithHTTPClient(client *http.Client) *GetCampaignParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the get campaign params
func (o *GetCampaignParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the get campaign params
func (o *GetCampaignParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *GetCampaignParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithCampaignID adds the campaignID to the get campaign params
func (o *GetCampaignParams) WithCampaignID(campaignID string) *GetCampaignParams {
	o.SetCampaignID(campaignID)
	return o
}

// SetCampaignID adds the campaignId to the get campaign params
func (o *GetCampaignParams) SetCampaignID(campaignID string) {
	o.CampaignID = campaignID
}

// WithNamespace adds the namespace to the get campaign params
func (o *GetCampaignParams) WithNamespace(namespace string) *GetCampaignParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the get campaign params
func (o *GetCampaignParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *GetCampaignParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param campaignId
	if err := r.SetPathParam("campaignId", o.CampaignID); err != nil {
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
