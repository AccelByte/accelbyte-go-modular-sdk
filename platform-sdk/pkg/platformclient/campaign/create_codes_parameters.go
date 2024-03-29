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

	"github.com/AccelByte/accelbyte-go-modular-sdk/platform-sdk/pkg/platformclientmodels"
)

// NewCreateCodesParams creates a new CreateCodesParams object
// with the default values initialized.
func NewCreateCodesParams() *CreateCodesParams {
	var ()
	return &CreateCodesParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewCreateCodesParamsWithTimeout creates a new CreateCodesParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewCreateCodesParamsWithTimeout(timeout time.Duration) *CreateCodesParams {
	var ()
	return &CreateCodesParams{

		timeout: timeout,
	}
}

// NewCreateCodesParamsWithContext creates a new CreateCodesParams object
// with the default values initialized, and the ability to set a context for a request
func NewCreateCodesParamsWithContext(ctx context.Context) *CreateCodesParams {
	var ()
	return &CreateCodesParams{

		Context: ctx,
	}
}

// NewCreateCodesParamsWithHTTPClient creates a new CreateCodesParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewCreateCodesParamsWithHTTPClient(client *http.Client) *CreateCodesParams {
	var ()
	return &CreateCodesParams{
		HTTPClient: client,
	}
}

/*CreateCodesParams contains all the parameters to send to the API endpoint
for the create codes operation typically these are written to a http.Request
*/
type CreateCodesParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *platformclientmodels.CodeCreate
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

// WithTimeout adds the timeout to the create codes params
func (o *CreateCodesParams) WithTimeout(timeout time.Duration) *CreateCodesParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the create codes params
func (o *CreateCodesParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the create codes params
func (o *CreateCodesParams) WithContext(ctx context.Context) *CreateCodesParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the create codes params
func (o *CreateCodesParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the create codes params
func (o *CreateCodesParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the create codes params
func (o *CreateCodesParams) WithHTTPClient(client *http.Client) *CreateCodesParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the create codes params
func (o *CreateCodesParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the create codes params
func (o *CreateCodesParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *CreateCodesParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the create codes params
func (o *CreateCodesParams) WithBody(body *platformclientmodels.CodeCreate) *CreateCodesParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the create codes params
func (o *CreateCodesParams) SetBody(body *platformclientmodels.CodeCreate) {
	o.Body = body
}

// WithCampaignID adds the campaignID to the create codes params
func (o *CreateCodesParams) WithCampaignID(campaignID string) *CreateCodesParams {
	o.SetCampaignID(campaignID)
	return o
}

// SetCampaignID adds the campaignId to the create codes params
func (o *CreateCodesParams) SetCampaignID(campaignID string) {
	o.CampaignID = campaignID
}

// WithNamespace adds the namespace to the create codes params
func (o *CreateCodesParams) WithNamespace(namespace string) *CreateCodesParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the create codes params
func (o *CreateCodesParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *CreateCodesParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	if o.Body != nil {
		if err := r.SetBodyParam(o.Body); err != nil {
			return err
		}
	}

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
