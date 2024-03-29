// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package users

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

// NewAdminGetThirdPartyPlatformTokenLinkStatusV3Params creates a new AdminGetThirdPartyPlatformTokenLinkStatusV3Params object
// with the default values initialized.
func NewAdminGetThirdPartyPlatformTokenLinkStatusV3Params() *AdminGetThirdPartyPlatformTokenLinkStatusV3Params {
	var ()
	return &AdminGetThirdPartyPlatformTokenLinkStatusV3Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminGetThirdPartyPlatformTokenLinkStatusV3ParamsWithTimeout creates a new AdminGetThirdPartyPlatformTokenLinkStatusV3Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminGetThirdPartyPlatformTokenLinkStatusV3ParamsWithTimeout(timeout time.Duration) *AdminGetThirdPartyPlatformTokenLinkStatusV3Params {
	var ()
	return &AdminGetThirdPartyPlatformTokenLinkStatusV3Params{

		timeout: timeout,
	}
}

// NewAdminGetThirdPartyPlatformTokenLinkStatusV3ParamsWithContext creates a new AdminGetThirdPartyPlatformTokenLinkStatusV3Params object
// with the default values initialized, and the ability to set a context for a request
func NewAdminGetThirdPartyPlatformTokenLinkStatusV3ParamsWithContext(ctx context.Context) *AdminGetThirdPartyPlatformTokenLinkStatusV3Params {
	var ()
	return &AdminGetThirdPartyPlatformTokenLinkStatusV3Params{

		Context: ctx,
	}
}

// NewAdminGetThirdPartyPlatformTokenLinkStatusV3ParamsWithHTTPClient creates a new AdminGetThirdPartyPlatformTokenLinkStatusV3Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminGetThirdPartyPlatformTokenLinkStatusV3ParamsWithHTTPClient(client *http.Client) *AdminGetThirdPartyPlatformTokenLinkStatusV3Params {
	var ()
	return &AdminGetThirdPartyPlatformTokenLinkStatusV3Params{
		HTTPClient: client,
	}
}

/*AdminGetThirdPartyPlatformTokenLinkStatusV3Params contains all the parameters to send to the API endpoint
for the admin get third party platform token link status v3 operation typically these are written to a http.Request
*/
type AdminGetThirdPartyPlatformTokenLinkStatusV3Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*PlatformToken
	  Platform Token

	*/
	PlatformToken string
	/*Namespace
	  Namespace, only accept alphabet and numeric

	*/
	Namespace string
	/*PlatformID
	  Platform ID

	*/
	PlatformID string
	/*UserID
	  UserId

	*/
	UserID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the admin get third party platform token link status v3 params
func (o *AdminGetThirdPartyPlatformTokenLinkStatusV3Params) WithTimeout(timeout time.Duration) *AdminGetThirdPartyPlatformTokenLinkStatusV3Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin get third party platform token link status v3 params
func (o *AdminGetThirdPartyPlatformTokenLinkStatusV3Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin get third party platform token link status v3 params
func (o *AdminGetThirdPartyPlatformTokenLinkStatusV3Params) WithContext(ctx context.Context) *AdminGetThirdPartyPlatformTokenLinkStatusV3Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin get third party platform token link status v3 params
func (o *AdminGetThirdPartyPlatformTokenLinkStatusV3Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin get third party platform token link status v3 params
func (o *AdminGetThirdPartyPlatformTokenLinkStatusV3Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin get third party platform token link status v3 params
func (o *AdminGetThirdPartyPlatformTokenLinkStatusV3Params) WithHTTPClient(client *http.Client) *AdminGetThirdPartyPlatformTokenLinkStatusV3Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin get third party platform token link status v3 params
func (o *AdminGetThirdPartyPlatformTokenLinkStatusV3Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin get third party platform token link status v3 params
func (o *AdminGetThirdPartyPlatformTokenLinkStatusV3Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *AdminGetThirdPartyPlatformTokenLinkStatusV3Params) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithPlatformToken adds the platformToken to the admin get third party platform token link status v3 params
func (o *AdminGetThirdPartyPlatformTokenLinkStatusV3Params) WithPlatformToken(platformToken string) *AdminGetThirdPartyPlatformTokenLinkStatusV3Params {
	o.SetPlatformToken(platformToken)
	return o
}

// SetPlatformToken adds the platformToken to the admin get third party platform token link status v3 params
func (o *AdminGetThirdPartyPlatformTokenLinkStatusV3Params) SetPlatformToken(platformToken string) {
	o.PlatformToken = platformToken
}

// WithNamespace adds the namespace to the admin get third party platform token link status v3 params
func (o *AdminGetThirdPartyPlatformTokenLinkStatusV3Params) WithNamespace(namespace string) *AdminGetThirdPartyPlatformTokenLinkStatusV3Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin get third party platform token link status v3 params
func (o *AdminGetThirdPartyPlatformTokenLinkStatusV3Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithPlatformID adds the platformID to the admin get third party platform token link status v3 params
func (o *AdminGetThirdPartyPlatformTokenLinkStatusV3Params) WithPlatformID(platformID string) *AdminGetThirdPartyPlatformTokenLinkStatusV3Params {
	o.SetPlatformID(platformID)
	return o
}

// SetPlatformID adds the platformId to the admin get third party platform token link status v3 params
func (o *AdminGetThirdPartyPlatformTokenLinkStatusV3Params) SetPlatformID(platformID string) {
	o.PlatformID = platformID
}

// WithUserID adds the userID to the admin get third party platform token link status v3 params
func (o *AdminGetThirdPartyPlatformTokenLinkStatusV3Params) WithUserID(userID string) *AdminGetThirdPartyPlatformTokenLinkStatusV3Params {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the admin get third party platform token link status v3 params
func (o *AdminGetThirdPartyPlatformTokenLinkStatusV3Params) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *AdminGetThirdPartyPlatformTokenLinkStatusV3Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// form param platformToken
	frPlatformToken := o.PlatformToken
	fPlatformToken := frPlatformToken
	if fPlatformToken != "" {
		if err := r.SetFormParam("platformToken", fPlatformToken); err != nil {
			return err
		}
	}

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	// path param platformId
	if err := r.SetPathParam("platformId", o.PlatformID); err != nil {
		return err
	}

	// path param userId
	if err := r.SetPathParam("userId", o.UserID); err != nil {
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
