// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package policy_versions

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-modular-sdk/legal-sdk/pkg/legalclientmodels"
)

// NewCreatePolicyVersionParams creates a new CreatePolicyVersionParams object
// with the default values initialized.
func NewCreatePolicyVersionParams() *CreatePolicyVersionParams {
	var ()
	return &CreatePolicyVersionParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewCreatePolicyVersionParamsWithTimeout creates a new CreatePolicyVersionParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewCreatePolicyVersionParamsWithTimeout(timeout time.Duration) *CreatePolicyVersionParams {
	var ()
	return &CreatePolicyVersionParams{

		timeout: timeout,
	}
}

// NewCreatePolicyVersionParamsWithContext creates a new CreatePolicyVersionParams object
// with the default values initialized, and the ability to set a context for a request
func NewCreatePolicyVersionParamsWithContext(ctx context.Context) *CreatePolicyVersionParams {
	var ()
	return &CreatePolicyVersionParams{

		Context: ctx,
	}
}

// NewCreatePolicyVersionParamsWithHTTPClient creates a new CreatePolicyVersionParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewCreatePolicyVersionParamsWithHTTPClient(client *http.Client) *CreatePolicyVersionParams {
	var ()
	return &CreatePolicyVersionParams{
		HTTPClient: client,
	}
}

/*CreatePolicyVersionParams contains all the parameters to send to the API endpoint
for the create policy version operation typically these are written to a http.Request
*/
type CreatePolicyVersionParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *legalclientmodels.CreatePolicyVersionRequest
	/*PolicyID
	  Policy Id

	*/
	PolicyID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the create policy version params
func (o *CreatePolicyVersionParams) WithTimeout(timeout time.Duration) *CreatePolicyVersionParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the create policy version params
func (o *CreatePolicyVersionParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the create policy version params
func (o *CreatePolicyVersionParams) WithContext(ctx context.Context) *CreatePolicyVersionParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the create policy version params
func (o *CreatePolicyVersionParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the create policy version params
func (o *CreatePolicyVersionParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the create policy version params
func (o *CreatePolicyVersionParams) WithHTTPClient(client *http.Client) *CreatePolicyVersionParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the create policy version params
func (o *CreatePolicyVersionParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the create policy version params
func (o *CreatePolicyVersionParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *CreatePolicyVersionParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the create policy version params
func (o *CreatePolicyVersionParams) WithBody(body *legalclientmodels.CreatePolicyVersionRequest) *CreatePolicyVersionParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the create policy version params
func (o *CreatePolicyVersionParams) SetBody(body *legalclientmodels.CreatePolicyVersionRequest) {
	o.Body = body
}

// WithPolicyID adds the policyID to the create policy version params
func (o *CreatePolicyVersionParams) WithPolicyID(policyID string) *CreatePolicyVersionParams {
	o.SetPolicyID(policyID)
	return o
}

// SetPolicyID adds the policyId to the create policy version params
func (o *CreatePolicyVersionParams) SetPolicyID(policyID string) {
	o.PolicyID = policyID
}

// WriteToRequest writes these params to a swagger request
func (o *CreatePolicyVersionParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	if o.Body != nil {
		if err := r.SetBodyParam(o.Body); err != nil {
			return err
		}
	}

	// path param policyId
	if err := r.SetPathParam("policyId", o.PolicyID); err != nil {
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
