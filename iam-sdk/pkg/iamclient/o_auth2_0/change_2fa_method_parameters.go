// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package o_auth2_0

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

// NewChange2FAMethodParams creates a new Change2FAMethodParams object
// with the default values initialized.
func NewChange2FAMethodParams() *Change2FAMethodParams {
	var ()
	return &Change2FAMethodParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewChange2FAMethodParamsWithTimeout creates a new Change2FAMethodParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewChange2FAMethodParamsWithTimeout(timeout time.Duration) *Change2FAMethodParams {
	var ()
	return &Change2FAMethodParams{

		timeout: timeout,
	}
}

// NewChange2FAMethodParamsWithContext creates a new Change2FAMethodParams object
// with the default values initialized, and the ability to set a context for a request
func NewChange2FAMethodParamsWithContext(ctx context.Context) *Change2FAMethodParams {
	var ()
	return &Change2FAMethodParams{

		Context: ctx,
	}
}

// NewChange2FAMethodParamsWithHTTPClient creates a new Change2FAMethodParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewChange2FAMethodParamsWithHTTPClient(client *http.Client) *Change2FAMethodParams {
	var ()
	return &Change2FAMethodParams{
		HTTPClient: client,
	}
}

/*Change2FAMethodParams contains all the parameters to send to the API endpoint
for the change2fa method operation typically these are written to a http.Request
*/
type Change2FAMethodParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Factor
	  factor

	*/
	Factor string
	/*MFAToken
	  mfa token

	*/
	MFAToken string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the change2fa method params
func (o *Change2FAMethodParams) WithTimeout(timeout time.Duration) *Change2FAMethodParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the change2fa method params
func (o *Change2FAMethodParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the change2fa method params
func (o *Change2FAMethodParams) WithContext(ctx context.Context) *Change2FAMethodParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the change2fa method params
func (o *Change2FAMethodParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the change2fa method params
func (o *Change2FAMethodParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the change2fa method params
func (o *Change2FAMethodParams) WithHTTPClient(client *http.Client) *Change2FAMethodParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the change2fa method params
func (o *Change2FAMethodParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the change2fa method params
func (o *Change2FAMethodParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *Change2FAMethodParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithFactor adds the factor to the change2fa method params
func (o *Change2FAMethodParams) WithFactor(factor string) *Change2FAMethodParams {
	o.SetFactor(factor)
	return o
}

// SetFactor adds the factor to the change2fa method params
func (o *Change2FAMethodParams) SetFactor(factor string) {
	o.Factor = factor
}

// WithMFAToken adds the mFAToken to the change2fa method params
func (o *Change2FAMethodParams) WithMFAToken(mFAToken string) *Change2FAMethodParams {
	o.SetMFAToken(mFAToken)
	return o
}

// SetMFAToken adds the mfaToken to the change2fa method params
func (o *Change2FAMethodParams) SetMFAToken(mFAToken string) {
	o.MFAToken = mFAToken
}

// WriteToRequest writes these params to a swagger request
func (o *Change2FAMethodParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// form param factor
	frFactor := o.Factor
	fFactor := frFactor
	if fFactor != "" {
		if err := r.SetFormParam("factor", fFactor); err != nil {
			return err
		}
	}

	// form param mfaToken
	frMFAToken := o.MFAToken
	fMFAToken := frMFAToken
	if fMFAToken != "" {
		if err := r.SetFormParam("mfaToken", fMFAToken); err != nil {
			return err
		}
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
