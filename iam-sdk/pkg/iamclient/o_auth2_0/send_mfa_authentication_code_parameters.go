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

// NewSendMFAAuthenticationCodeParams creates a new SendMFAAuthenticationCodeParams object
// with the default values initialized.
func NewSendMFAAuthenticationCodeParams() *SendMFAAuthenticationCodeParams {
	var ()
	return &SendMFAAuthenticationCodeParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewSendMFAAuthenticationCodeParamsWithTimeout creates a new SendMFAAuthenticationCodeParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewSendMFAAuthenticationCodeParamsWithTimeout(timeout time.Duration) *SendMFAAuthenticationCodeParams {
	var ()
	return &SendMFAAuthenticationCodeParams{

		timeout: timeout,
	}
}

// NewSendMFAAuthenticationCodeParamsWithContext creates a new SendMFAAuthenticationCodeParams object
// with the default values initialized, and the ability to set a context for a request
func NewSendMFAAuthenticationCodeParamsWithContext(ctx context.Context) *SendMFAAuthenticationCodeParams {
	var ()
	return &SendMFAAuthenticationCodeParams{

		Context: ctx,
	}
}

// NewSendMFAAuthenticationCodeParamsWithHTTPClient creates a new SendMFAAuthenticationCodeParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewSendMFAAuthenticationCodeParamsWithHTTPClient(client *http.Client) *SendMFAAuthenticationCodeParams {
	var ()
	return &SendMFAAuthenticationCodeParams{
		HTTPClient: client,
	}
}

/*SendMFAAuthenticationCodeParams contains all the parameters to send to the API endpoint
for the send mfa authentication code operation typically these are written to a http.Request
*/
type SendMFAAuthenticationCodeParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*ClientID
	  client id

	*/
	ClientID string
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

// WithTimeout adds the timeout to the send mfa authentication code params
func (o *SendMFAAuthenticationCodeParams) WithTimeout(timeout time.Duration) *SendMFAAuthenticationCodeParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the send mfa authentication code params
func (o *SendMFAAuthenticationCodeParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the send mfa authentication code params
func (o *SendMFAAuthenticationCodeParams) WithContext(ctx context.Context) *SendMFAAuthenticationCodeParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the send mfa authentication code params
func (o *SendMFAAuthenticationCodeParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the send mfa authentication code params
func (o *SendMFAAuthenticationCodeParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the send mfa authentication code params
func (o *SendMFAAuthenticationCodeParams) WithHTTPClient(client *http.Client) *SendMFAAuthenticationCodeParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the send mfa authentication code params
func (o *SendMFAAuthenticationCodeParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the send mfa authentication code params
func (o *SendMFAAuthenticationCodeParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *SendMFAAuthenticationCodeParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithClientID adds the clientID to the send mfa authentication code params
func (o *SendMFAAuthenticationCodeParams) WithClientID(clientID string) *SendMFAAuthenticationCodeParams {
	o.SetClientID(clientID)
	return o
}

// SetClientID adds the clientId to the send mfa authentication code params
func (o *SendMFAAuthenticationCodeParams) SetClientID(clientID string) {
	o.ClientID = clientID
}

// WithFactor adds the factor to the send mfa authentication code params
func (o *SendMFAAuthenticationCodeParams) WithFactor(factor string) *SendMFAAuthenticationCodeParams {
	o.SetFactor(factor)
	return o
}

// SetFactor adds the factor to the send mfa authentication code params
func (o *SendMFAAuthenticationCodeParams) SetFactor(factor string) {
	o.Factor = factor
}

// WithMFAToken adds the mFAToken to the send mfa authentication code params
func (o *SendMFAAuthenticationCodeParams) WithMFAToken(mFAToken string) *SendMFAAuthenticationCodeParams {
	o.SetMFAToken(mFAToken)
	return o
}

// SetMFAToken adds the mfaToken to the send mfa authentication code params
func (o *SendMFAAuthenticationCodeParams) SetMFAToken(mFAToken string) {
	o.MFAToken = mFAToken
}

// WriteToRequest writes these params to a swagger request
func (o *SendMFAAuthenticationCodeParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// form param clientId
	frClientID := o.ClientID
	fClientID := frClientID
	if fClientID != "" {
		if err := r.SetFormParam("clientId", fClientID); err != nil {
			return err
		}
	}

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
