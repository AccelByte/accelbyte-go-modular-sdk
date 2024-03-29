// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package o_auth2_0_extension

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

// NewPlatformAuthenticationV3Params creates a new PlatformAuthenticationV3Params object
// with the default values initialized.
func NewPlatformAuthenticationV3Params() *PlatformAuthenticationV3Params {
	var ()
	return &PlatformAuthenticationV3Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewPlatformAuthenticationV3ParamsWithTimeout creates a new PlatformAuthenticationV3Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewPlatformAuthenticationV3ParamsWithTimeout(timeout time.Duration) *PlatformAuthenticationV3Params {
	var ()
	return &PlatformAuthenticationV3Params{

		timeout: timeout,
	}
}

// NewPlatformAuthenticationV3ParamsWithContext creates a new PlatformAuthenticationV3Params object
// with the default values initialized, and the ability to set a context for a request
func NewPlatformAuthenticationV3ParamsWithContext(ctx context.Context) *PlatformAuthenticationV3Params {
	var ()
	return &PlatformAuthenticationV3Params{

		Context: ctx,
	}
}

// NewPlatformAuthenticationV3ParamsWithHTTPClient creates a new PlatformAuthenticationV3Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPlatformAuthenticationV3ParamsWithHTTPClient(client *http.Client) *PlatformAuthenticationV3Params {
	var ()
	return &PlatformAuthenticationV3Params{
		HTTPClient: client,
	}
}

/*PlatformAuthenticationV3Params contains all the parameters to send to the API endpoint
for the platform authentication v3 operation typically these are written to a http.Request
*/
type PlatformAuthenticationV3Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*PlatformID
	  Platform ID

	*/
	PlatformID string
	/*Code
	  The authorization code from 3rd party OAuth server

	*/
	Code *string
	/*Error
	  The error message from 3rd party OAuth server

	*/
	Error *string
	/*OpenidAssocHandle
	  [steamopenid] Steam OpenID response parameters https://openid.net/specs/openid-authentication-2_0.html#positive_assertions

	*/
	OpenidAssocHandle *string
	/*OpenidClaimedID
	  [steamopenid] Steam OpenID response parameters https://openid.net/specs/openid-authentication-2_0.html#positive_assertions

	*/
	OpenidClaimedID *string
	/*OpenidIdentity
	  [steamopenid] Steam OpenID response parameters https://openid.net/specs/openid-authentication-2_0.html#positive_assertions

	*/
	OpenidIdentity *string
	/*OpenidMode
	  [steamopenid] Steam OpenID response parameters https://openid.net/specs/openid-authentication-2_0.html#positive_assertions

	*/
	OpenidMode *string
	/*OpenidNs
	  [steamopenid] Steam OpenID response parameters https://openid.net/specs/openid-authentication-2_0.html#positive_assertions

	*/
	OpenidNs *string
	/*OpenidOpEndpoint
	  [steamopenid] Steam OpenID response parameters https://openid.net/specs/openid-authentication-2_0.html#positive_assertions

	*/
	OpenidOpEndpoint *string
	/*OpenidResponseNonce
	  [steamopenid] Steam OpenID response parameters https://openid.net/specs/openid-authentication-2_0.html#positive_assertions

	*/
	OpenidResponseNonce *string
	/*OpenidReturnTo
	  [steamopenid] Steam OpenID response parameters https://openid.net/specs/openid-authentication-2_0.html#positive_assertions

	*/
	OpenidReturnTo *string
	/*OpenidSig
	  [steamopenid] Steam OpenID response parameters https://openid.net/specs/openid-authentication-2_0.html#positive_assertions

	*/
	OpenidSig *string
	/*OpenidSigned
	  [steamopenid] Steam OpenID response parameters https://openid.net/specs/openid-authentication-2_0.html#positive_assertions

	*/
	OpenidSigned *string
	/*State
	  State that contains request ID retrieved from authorize endpoint ([GET] iam/v3/oauth/authorize)

	*/
	State string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the platform authentication v3 params
func (o *PlatformAuthenticationV3Params) WithTimeout(timeout time.Duration) *PlatformAuthenticationV3Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the platform authentication v3 params
func (o *PlatformAuthenticationV3Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the platform authentication v3 params
func (o *PlatformAuthenticationV3Params) WithContext(ctx context.Context) *PlatformAuthenticationV3Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the platform authentication v3 params
func (o *PlatformAuthenticationV3Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the platform authentication v3 params
func (o *PlatformAuthenticationV3Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the platform authentication v3 params
func (o *PlatformAuthenticationV3Params) WithHTTPClient(client *http.Client) *PlatformAuthenticationV3Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the platform authentication v3 params
func (o *PlatformAuthenticationV3Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the platform authentication v3 params
func (o *PlatformAuthenticationV3Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *PlatformAuthenticationV3Params) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithPlatformID adds the platformID to the platform authentication v3 params
func (o *PlatformAuthenticationV3Params) WithPlatformID(platformID string) *PlatformAuthenticationV3Params {
	o.SetPlatformID(platformID)
	return o
}

// SetPlatformID adds the platformId to the platform authentication v3 params
func (o *PlatformAuthenticationV3Params) SetPlatformID(platformID string) {
	o.PlatformID = platformID
}

// WithCode adds the code to the platform authentication v3 params
func (o *PlatformAuthenticationV3Params) WithCode(code *string) *PlatformAuthenticationV3Params {
	o.SetCode(code)
	return o
}

// SetCode adds the code to the platform authentication v3 params
func (o *PlatformAuthenticationV3Params) SetCode(code *string) {
	o.Code = code
}

// WithError adds the errorVar to the platform authentication v3 params
func (o *PlatformAuthenticationV3Params) WithError(errorVar *string) *PlatformAuthenticationV3Params {
	o.SetError(errorVar)
	return o
}

// SetError adds the error to the platform authentication v3 params
func (o *PlatformAuthenticationV3Params) SetError(errorVar *string) {
	o.Error = errorVar
}

// WithOpenidAssocHandle adds the openidAssocHandle to the platform authentication v3 params
func (o *PlatformAuthenticationV3Params) WithOpenidAssocHandle(openidAssocHandle *string) *PlatformAuthenticationV3Params {
	o.SetOpenidAssocHandle(openidAssocHandle)
	return o
}

// SetOpenidAssocHandle adds the openidAssocHandle to the platform authentication v3 params
func (o *PlatformAuthenticationV3Params) SetOpenidAssocHandle(openidAssocHandle *string) {
	o.OpenidAssocHandle = openidAssocHandle
}

// WithOpenidClaimedID adds the openidClaimedID to the platform authentication v3 params
func (o *PlatformAuthenticationV3Params) WithOpenidClaimedID(openidClaimedID *string) *PlatformAuthenticationV3Params {
	o.SetOpenidClaimedID(openidClaimedID)
	return o
}

// SetOpenidClaimedID adds the openidClaimedId to the platform authentication v3 params
func (o *PlatformAuthenticationV3Params) SetOpenidClaimedID(openidClaimedID *string) {
	o.OpenidClaimedID = openidClaimedID
}

// WithOpenidIdentity adds the openidIdentity to the platform authentication v3 params
func (o *PlatformAuthenticationV3Params) WithOpenidIdentity(openidIdentity *string) *PlatformAuthenticationV3Params {
	o.SetOpenidIdentity(openidIdentity)
	return o
}

// SetOpenidIdentity adds the openidIdentity to the platform authentication v3 params
func (o *PlatformAuthenticationV3Params) SetOpenidIdentity(openidIdentity *string) {
	o.OpenidIdentity = openidIdentity
}

// WithOpenidMode adds the openidMode to the platform authentication v3 params
func (o *PlatformAuthenticationV3Params) WithOpenidMode(openidMode *string) *PlatformAuthenticationV3Params {
	o.SetOpenidMode(openidMode)
	return o
}

// SetOpenidMode adds the openidMode to the platform authentication v3 params
func (o *PlatformAuthenticationV3Params) SetOpenidMode(openidMode *string) {
	o.OpenidMode = openidMode
}

// WithOpenidNs adds the openidNs to the platform authentication v3 params
func (o *PlatformAuthenticationV3Params) WithOpenidNs(openidNs *string) *PlatformAuthenticationV3Params {
	o.SetOpenidNs(openidNs)
	return o
}

// SetOpenidNs adds the openidNs to the platform authentication v3 params
func (o *PlatformAuthenticationV3Params) SetOpenidNs(openidNs *string) {
	o.OpenidNs = openidNs
}

// WithOpenidOpEndpoint adds the openidOpEndpoint to the platform authentication v3 params
func (o *PlatformAuthenticationV3Params) WithOpenidOpEndpoint(openidOpEndpoint *string) *PlatformAuthenticationV3Params {
	o.SetOpenidOpEndpoint(openidOpEndpoint)
	return o
}

// SetOpenidOpEndpoint adds the openidOpEndpoint to the platform authentication v3 params
func (o *PlatformAuthenticationV3Params) SetOpenidOpEndpoint(openidOpEndpoint *string) {
	o.OpenidOpEndpoint = openidOpEndpoint
}

// WithOpenidResponseNonce adds the openidResponseNonce to the platform authentication v3 params
func (o *PlatformAuthenticationV3Params) WithOpenidResponseNonce(openidResponseNonce *string) *PlatformAuthenticationV3Params {
	o.SetOpenidResponseNonce(openidResponseNonce)
	return o
}

// SetOpenidResponseNonce adds the openidResponseNonce to the platform authentication v3 params
func (o *PlatformAuthenticationV3Params) SetOpenidResponseNonce(openidResponseNonce *string) {
	o.OpenidResponseNonce = openidResponseNonce
}

// WithOpenidReturnTo adds the openidReturnTo to the platform authentication v3 params
func (o *PlatformAuthenticationV3Params) WithOpenidReturnTo(openidReturnTo *string) *PlatformAuthenticationV3Params {
	o.SetOpenidReturnTo(openidReturnTo)
	return o
}

// SetOpenidReturnTo adds the openidReturnTo to the platform authentication v3 params
func (o *PlatformAuthenticationV3Params) SetOpenidReturnTo(openidReturnTo *string) {
	o.OpenidReturnTo = openidReturnTo
}

// WithOpenidSig adds the openidSig to the platform authentication v3 params
func (o *PlatformAuthenticationV3Params) WithOpenidSig(openidSig *string) *PlatformAuthenticationV3Params {
	o.SetOpenidSig(openidSig)
	return o
}

// SetOpenidSig adds the openidSig to the platform authentication v3 params
func (o *PlatformAuthenticationV3Params) SetOpenidSig(openidSig *string) {
	o.OpenidSig = openidSig
}

// WithOpenidSigned adds the openidSigned to the platform authentication v3 params
func (o *PlatformAuthenticationV3Params) WithOpenidSigned(openidSigned *string) *PlatformAuthenticationV3Params {
	o.SetOpenidSigned(openidSigned)
	return o
}

// SetOpenidSigned adds the openidSigned to the platform authentication v3 params
func (o *PlatformAuthenticationV3Params) SetOpenidSigned(openidSigned *string) {
	o.OpenidSigned = openidSigned
}

// WithState adds the state to the platform authentication v3 params
func (o *PlatformAuthenticationV3Params) WithState(state string) *PlatformAuthenticationV3Params {
	o.SetState(state)
	return o
}

// SetState adds the state to the platform authentication v3 params
func (o *PlatformAuthenticationV3Params) SetState(state string) {
	o.State = state
}

// WriteToRequest writes these params to a swagger request
func (o *PlatformAuthenticationV3Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param platformId
	if err := r.SetPathParam("platformId", o.PlatformID); err != nil {
		return err
	}

	if o.Code != nil {

		// query param code
		var qrCode string
		if o.Code != nil {
			qrCode = *o.Code
		}
		qCode := qrCode
		if qCode != "" {
			if err := r.SetQueryParam("code", qCode); err != nil {
				return err
			}
		}

	}

	if o.Error != nil {

		// query param error
		var qrError string
		if o.Error != nil {
			qrError = *o.Error
		}
		qError := qrError
		if qError != "" {
			if err := r.SetQueryParam("error", qError); err != nil {
				return err
			}
		}

	}

	if o.OpenidAssocHandle != nil {

		// query param openid.assoc_handle
		var qrOpenidAssocHandle string
		if o.OpenidAssocHandle != nil {
			qrOpenidAssocHandle = *o.OpenidAssocHandle
		}
		qOpenidAssocHandle := qrOpenidAssocHandle
		if qOpenidAssocHandle != "" {
			if err := r.SetQueryParam("openid.assoc_handle", qOpenidAssocHandle); err != nil {
				return err
			}
		}

	}

	if o.OpenidClaimedID != nil {

		// query param openid.claimed_id
		var qrOpenidClaimedID string
		if o.OpenidClaimedID != nil {
			qrOpenidClaimedID = *o.OpenidClaimedID
		}
		qOpenidClaimedID := qrOpenidClaimedID
		if qOpenidClaimedID != "" {
			if err := r.SetQueryParam("openid.claimed_id", qOpenidClaimedID); err != nil {
				return err
			}
		}

	}

	if o.OpenidIdentity != nil {

		// query param openid.identity
		var qrOpenidIdentity string
		if o.OpenidIdentity != nil {
			qrOpenidIdentity = *o.OpenidIdentity
		}
		qOpenidIdentity := qrOpenidIdentity
		if qOpenidIdentity != "" {
			if err := r.SetQueryParam("openid.identity", qOpenidIdentity); err != nil {
				return err
			}
		}

	}

	if o.OpenidMode != nil {

		// query param openid.mode
		var qrOpenidMode string
		if o.OpenidMode != nil {
			qrOpenidMode = *o.OpenidMode
		}
		qOpenidMode := qrOpenidMode
		if qOpenidMode != "" {
			if err := r.SetQueryParam("openid.mode", qOpenidMode); err != nil {
				return err
			}
		}

	}

	if o.OpenidNs != nil {

		// query param openid.ns
		var qrOpenidNs string
		if o.OpenidNs != nil {
			qrOpenidNs = *o.OpenidNs
		}
		qOpenidNs := qrOpenidNs
		if qOpenidNs != "" {
			if err := r.SetQueryParam("openid.ns", qOpenidNs); err != nil {
				return err
			}
		}

	}

	if o.OpenidOpEndpoint != nil {

		// query param openid.op_endpoint
		var qrOpenidOpEndpoint string
		if o.OpenidOpEndpoint != nil {
			qrOpenidOpEndpoint = *o.OpenidOpEndpoint
		}
		qOpenidOpEndpoint := qrOpenidOpEndpoint
		if qOpenidOpEndpoint != "" {
			if err := r.SetQueryParam("openid.op_endpoint", qOpenidOpEndpoint); err != nil {
				return err
			}
		}

	}

	if o.OpenidResponseNonce != nil {

		// query param openid.response_nonce
		var qrOpenidResponseNonce string
		if o.OpenidResponseNonce != nil {
			qrOpenidResponseNonce = *o.OpenidResponseNonce
		}
		qOpenidResponseNonce := qrOpenidResponseNonce
		if qOpenidResponseNonce != "" {
			if err := r.SetQueryParam("openid.response_nonce", qOpenidResponseNonce); err != nil {
				return err
			}
		}

	}

	if o.OpenidReturnTo != nil {

		// query param openid.return_to
		var qrOpenidReturnTo string
		if o.OpenidReturnTo != nil {
			qrOpenidReturnTo = *o.OpenidReturnTo
		}
		qOpenidReturnTo := qrOpenidReturnTo
		if qOpenidReturnTo != "" {
			if err := r.SetQueryParam("openid.return_to", qOpenidReturnTo); err != nil {
				return err
			}
		}

	}

	if o.OpenidSig != nil {

		// query param openid.sig
		var qrOpenidSig string
		if o.OpenidSig != nil {
			qrOpenidSig = *o.OpenidSig
		}
		qOpenidSig := qrOpenidSig
		if qOpenidSig != "" {
			if err := r.SetQueryParam("openid.sig", qOpenidSig); err != nil {
				return err
			}
		}

	}

	if o.OpenidSigned != nil {

		// query param openid.signed
		var qrOpenidSigned string
		if o.OpenidSigned != nil {
			qrOpenidSigned = *o.OpenidSigned
		}
		qOpenidSigned := qrOpenidSigned
		if qOpenidSigned != "" {
			if err := r.SetQueryParam("openid.signed", qOpenidSigned); err != nil {
				return err
			}
		}

	}

	// query param state
	qrState := o.State
	qState := qrState
	if qState != "" {
		if err := r.SetQueryParam("state", qState); err != nil {
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
