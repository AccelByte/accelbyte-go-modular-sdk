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

// NewUpdatePolicyVersionParams creates a new UpdatePolicyVersionParams object
// with the default values initialized.
func NewUpdatePolicyVersionParams() *UpdatePolicyVersionParams {
	var ()
	return &UpdatePolicyVersionParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewUpdatePolicyVersionParamsWithTimeout creates a new UpdatePolicyVersionParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewUpdatePolicyVersionParamsWithTimeout(timeout time.Duration) *UpdatePolicyVersionParams {
	var ()
	return &UpdatePolicyVersionParams{

		timeout: timeout,
	}
}

// NewUpdatePolicyVersionParamsWithContext creates a new UpdatePolicyVersionParams object
// with the default values initialized, and the ability to set a context for a request
func NewUpdatePolicyVersionParamsWithContext(ctx context.Context) *UpdatePolicyVersionParams {
	var ()
	return &UpdatePolicyVersionParams{

		Context: ctx,
	}
}

// NewUpdatePolicyVersionParamsWithHTTPClient creates a new UpdatePolicyVersionParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewUpdatePolicyVersionParamsWithHTTPClient(client *http.Client) *UpdatePolicyVersionParams {
	var ()
	return &UpdatePolicyVersionParams{
		HTTPClient: client,
	}
}

/*UpdatePolicyVersionParams contains all the parameters to send to the API endpoint
for the update policy version operation typically these are written to a http.Request
*/
type UpdatePolicyVersionParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *legalclientmodels.UpdatePolicyVersionRequest
	/*PolicyVersionID
	  Policy Version Id

	*/
	PolicyVersionID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the update policy version params
func (o *UpdatePolicyVersionParams) WithTimeout(timeout time.Duration) *UpdatePolicyVersionParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the update policy version params
func (o *UpdatePolicyVersionParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the update policy version params
func (o *UpdatePolicyVersionParams) WithContext(ctx context.Context) *UpdatePolicyVersionParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the update policy version params
func (o *UpdatePolicyVersionParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the update policy version params
func (o *UpdatePolicyVersionParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the update policy version params
func (o *UpdatePolicyVersionParams) WithHTTPClient(client *http.Client) *UpdatePolicyVersionParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the update policy version params
func (o *UpdatePolicyVersionParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the update policy version params
func (o *UpdatePolicyVersionParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *UpdatePolicyVersionParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the update policy version params
func (o *UpdatePolicyVersionParams) WithBody(body *legalclientmodels.UpdatePolicyVersionRequest) *UpdatePolicyVersionParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the update policy version params
func (o *UpdatePolicyVersionParams) SetBody(body *legalclientmodels.UpdatePolicyVersionRequest) {
	o.Body = body
}

// WithPolicyVersionID adds the policyVersionID to the update policy version params
func (o *UpdatePolicyVersionParams) WithPolicyVersionID(policyVersionID string) *UpdatePolicyVersionParams {
	o.SetPolicyVersionID(policyVersionID)
	return o
}

// SetPolicyVersionID adds the policyVersionId to the update policy version params
func (o *UpdatePolicyVersionParams) SetPolicyVersionID(policyVersionID string) {
	o.PolicyVersionID = policyVersionID
}

// WriteToRequest writes these params to a swagger request
func (o *UpdatePolicyVersionParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	if o.Body != nil {
		if err := r.SetBodyParam(o.Body); err != nil {
			return err
		}
	}

	// path param policyVersionId
	if err := r.SetPathParam("policyVersionId", o.PolicyVersionID); err != nil {
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
