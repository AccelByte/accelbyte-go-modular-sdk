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

// NewRetrieveSingleLocalizedPolicyVersionParams creates a new RetrieveSingleLocalizedPolicyVersionParams object
// with the default values initialized.
func NewRetrieveSingleLocalizedPolicyVersionParams() *RetrieveSingleLocalizedPolicyVersionParams {
	var ()
	return &RetrieveSingleLocalizedPolicyVersionParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewRetrieveSingleLocalizedPolicyVersionParamsWithTimeout creates a new RetrieveSingleLocalizedPolicyVersionParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewRetrieveSingleLocalizedPolicyVersionParamsWithTimeout(timeout time.Duration) *RetrieveSingleLocalizedPolicyVersionParams {
	var ()
	return &RetrieveSingleLocalizedPolicyVersionParams{

		timeout: timeout,
	}
}

// NewRetrieveSingleLocalizedPolicyVersionParamsWithContext creates a new RetrieveSingleLocalizedPolicyVersionParams object
// with the default values initialized, and the ability to set a context for a request
func NewRetrieveSingleLocalizedPolicyVersionParamsWithContext(ctx context.Context) *RetrieveSingleLocalizedPolicyVersionParams {
	var ()
	return &RetrieveSingleLocalizedPolicyVersionParams{

		Context: ctx,
	}
}

// NewRetrieveSingleLocalizedPolicyVersionParamsWithHTTPClient creates a new RetrieveSingleLocalizedPolicyVersionParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewRetrieveSingleLocalizedPolicyVersionParamsWithHTTPClient(client *http.Client) *RetrieveSingleLocalizedPolicyVersionParams {
	var ()
	return &RetrieveSingleLocalizedPolicyVersionParams{
		HTTPClient: client,
	}
}

/*RetrieveSingleLocalizedPolicyVersionParams contains all the parameters to send to the API endpoint
for the retrieve single localized policy version operation typically these are written to a http.Request
*/
type RetrieveSingleLocalizedPolicyVersionParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*LocalizedPolicyVersionID
	  Localized Policy Version Id

	*/
	LocalizedPolicyVersionID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the retrieve single localized policy version params
func (o *RetrieveSingleLocalizedPolicyVersionParams) WithTimeout(timeout time.Duration) *RetrieveSingleLocalizedPolicyVersionParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the retrieve single localized policy version params
func (o *RetrieveSingleLocalizedPolicyVersionParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the retrieve single localized policy version params
func (o *RetrieveSingleLocalizedPolicyVersionParams) WithContext(ctx context.Context) *RetrieveSingleLocalizedPolicyVersionParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the retrieve single localized policy version params
func (o *RetrieveSingleLocalizedPolicyVersionParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the retrieve single localized policy version params
func (o *RetrieveSingleLocalizedPolicyVersionParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the retrieve single localized policy version params
func (o *RetrieveSingleLocalizedPolicyVersionParams) WithHTTPClient(client *http.Client) *RetrieveSingleLocalizedPolicyVersionParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the retrieve single localized policy version params
func (o *RetrieveSingleLocalizedPolicyVersionParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the retrieve single localized policy version params
func (o *RetrieveSingleLocalizedPolicyVersionParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithLocalizedPolicyVersionID adds the localizedPolicyVersionID to the retrieve single localized policy version params
func (o *RetrieveSingleLocalizedPolicyVersionParams) WithLocalizedPolicyVersionID(localizedPolicyVersionID string) *RetrieveSingleLocalizedPolicyVersionParams {
	o.SetLocalizedPolicyVersionID(localizedPolicyVersionID)
	return o
}

// SetLocalizedPolicyVersionID adds the localizedPolicyVersionId to the retrieve single localized policy version params
func (o *RetrieveSingleLocalizedPolicyVersionParams) SetLocalizedPolicyVersionID(localizedPolicyVersionID string) {
	o.LocalizedPolicyVersionID = localizedPolicyVersionID
}

// WriteToRequest writes these params to a swagger request
func (o *RetrieveSingleLocalizedPolicyVersionParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param localizedPolicyVersionId
	if err := r.SetPathParam("localizedPolicyVersionId", o.LocalizedPolicyVersionID); err != nil {
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
