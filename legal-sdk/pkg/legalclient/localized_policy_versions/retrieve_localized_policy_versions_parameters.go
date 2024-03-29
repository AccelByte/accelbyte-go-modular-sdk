// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package localized_policy_versions

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

// NewRetrieveLocalizedPolicyVersionsParams creates a new RetrieveLocalizedPolicyVersionsParams object
// with the default values initialized.
func NewRetrieveLocalizedPolicyVersionsParams() *RetrieveLocalizedPolicyVersionsParams {
	var ()
	return &RetrieveLocalizedPolicyVersionsParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewRetrieveLocalizedPolicyVersionsParamsWithTimeout creates a new RetrieveLocalizedPolicyVersionsParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewRetrieveLocalizedPolicyVersionsParamsWithTimeout(timeout time.Duration) *RetrieveLocalizedPolicyVersionsParams {
	var ()
	return &RetrieveLocalizedPolicyVersionsParams{

		timeout: timeout,
	}
}

// NewRetrieveLocalizedPolicyVersionsParamsWithContext creates a new RetrieveLocalizedPolicyVersionsParams object
// with the default values initialized, and the ability to set a context for a request
func NewRetrieveLocalizedPolicyVersionsParamsWithContext(ctx context.Context) *RetrieveLocalizedPolicyVersionsParams {
	var ()
	return &RetrieveLocalizedPolicyVersionsParams{

		Context: ctx,
	}
}

// NewRetrieveLocalizedPolicyVersionsParamsWithHTTPClient creates a new RetrieveLocalizedPolicyVersionsParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewRetrieveLocalizedPolicyVersionsParamsWithHTTPClient(client *http.Client) *RetrieveLocalizedPolicyVersionsParams {
	var ()
	return &RetrieveLocalizedPolicyVersionsParams{
		HTTPClient: client,
	}
}

/*RetrieveLocalizedPolicyVersionsParams contains all the parameters to send to the API endpoint
for the retrieve localized policy versions operation typically these are written to a http.Request
*/
type RetrieveLocalizedPolicyVersionsParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
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

// WithTimeout adds the timeout to the retrieve localized policy versions params
func (o *RetrieveLocalizedPolicyVersionsParams) WithTimeout(timeout time.Duration) *RetrieveLocalizedPolicyVersionsParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the retrieve localized policy versions params
func (o *RetrieveLocalizedPolicyVersionsParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the retrieve localized policy versions params
func (o *RetrieveLocalizedPolicyVersionsParams) WithContext(ctx context.Context) *RetrieveLocalizedPolicyVersionsParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the retrieve localized policy versions params
func (o *RetrieveLocalizedPolicyVersionsParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the retrieve localized policy versions params
func (o *RetrieveLocalizedPolicyVersionsParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the retrieve localized policy versions params
func (o *RetrieveLocalizedPolicyVersionsParams) WithHTTPClient(client *http.Client) *RetrieveLocalizedPolicyVersionsParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the retrieve localized policy versions params
func (o *RetrieveLocalizedPolicyVersionsParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the retrieve localized policy versions params
func (o *RetrieveLocalizedPolicyVersionsParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *RetrieveLocalizedPolicyVersionsParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithPolicyVersionID adds the policyVersionID to the retrieve localized policy versions params
func (o *RetrieveLocalizedPolicyVersionsParams) WithPolicyVersionID(policyVersionID string) *RetrieveLocalizedPolicyVersionsParams {
	o.SetPolicyVersionID(policyVersionID)
	return o
}

// SetPolicyVersionID adds the policyVersionId to the retrieve localized policy versions params
func (o *RetrieveLocalizedPolicyVersionsParams) SetPolicyVersionID(policyVersionID string) {
	o.PolicyVersionID = policyVersionID
}

// WriteToRequest writes these params to a swagger request
func (o *RetrieveLocalizedPolicyVersionsParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

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
