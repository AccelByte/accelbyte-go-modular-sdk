// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

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

// NewGetCampaignDynamicParams creates a new GetCampaignDynamicParams object
// with the default values initialized.
func NewGetCampaignDynamicParams() *GetCampaignDynamicParams {
	var ()
	return &GetCampaignDynamicParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewGetCampaignDynamicParamsWithTimeout creates a new GetCampaignDynamicParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewGetCampaignDynamicParamsWithTimeout(timeout time.Duration) *GetCampaignDynamicParams {
	var ()
	return &GetCampaignDynamicParams{

		timeout: timeout,
	}
}

// NewGetCampaignDynamicParamsWithContext creates a new GetCampaignDynamicParams object
// with the default values initialized, and the ability to set a context for a request
func NewGetCampaignDynamicParamsWithContext(ctx context.Context) *GetCampaignDynamicParams {
	var ()
	return &GetCampaignDynamicParams{

		Context: ctx,
	}
}

// NewGetCampaignDynamicParamsWithHTTPClient creates a new GetCampaignDynamicParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewGetCampaignDynamicParamsWithHTTPClient(client *http.Client) *GetCampaignDynamicParams {
	var ()
	return &GetCampaignDynamicParams{
		HTTPClient: client,
	}
}

/*GetCampaignDynamicParams contains all the parameters to send to the API endpoint
for the get campaign dynamic operation typically these are written to a http.Request
*/
type GetCampaignDynamicParams struct {

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
}

// WithTimeout adds the timeout to the get campaign dynamic params
func (o *GetCampaignDynamicParams) WithTimeout(timeout time.Duration) *GetCampaignDynamicParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the get campaign dynamic params
func (o *GetCampaignDynamicParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the get campaign dynamic params
func (o *GetCampaignDynamicParams) WithContext(ctx context.Context) *GetCampaignDynamicParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the get campaign dynamic params
func (o *GetCampaignDynamicParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the get campaign dynamic params
func (o *GetCampaignDynamicParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the get campaign dynamic params
func (o *GetCampaignDynamicParams) WithHTTPClient(client *http.Client) *GetCampaignDynamicParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the get campaign dynamic params
func (o *GetCampaignDynamicParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the get campaign dynamic params
func (o *GetCampaignDynamicParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithCampaignID adds the campaignID to the get campaign dynamic params
func (o *GetCampaignDynamicParams) WithCampaignID(campaignID string) *GetCampaignDynamicParams {
	o.SetCampaignID(campaignID)
	return o
}

// SetCampaignID adds the campaignId to the get campaign dynamic params
func (o *GetCampaignDynamicParams) SetCampaignID(campaignID string) {
	o.CampaignID = campaignID
}

// WithNamespace adds the namespace to the get campaign dynamic params
func (o *GetCampaignDynamicParams) WithNamespace(namespace string) *GetCampaignDynamicParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the get campaign dynamic params
func (o *GetCampaignDynamicParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *GetCampaignDynamicParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}

	return nil
}
