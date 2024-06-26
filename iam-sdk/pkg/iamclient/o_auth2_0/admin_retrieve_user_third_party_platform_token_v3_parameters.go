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

// NewAdminRetrieveUserThirdPartyPlatformTokenV3Params creates a new AdminRetrieveUserThirdPartyPlatformTokenV3Params object
// with the default values initialized.
func NewAdminRetrieveUserThirdPartyPlatformTokenV3Params() *AdminRetrieveUserThirdPartyPlatformTokenV3Params {
	var ()
	return &AdminRetrieveUserThirdPartyPlatformTokenV3Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminRetrieveUserThirdPartyPlatformTokenV3ParamsWithTimeout creates a new AdminRetrieveUserThirdPartyPlatformTokenV3Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminRetrieveUserThirdPartyPlatformTokenV3ParamsWithTimeout(timeout time.Duration) *AdminRetrieveUserThirdPartyPlatformTokenV3Params {
	var ()
	return &AdminRetrieveUserThirdPartyPlatformTokenV3Params{

		timeout: timeout,
	}
}

// NewAdminRetrieveUserThirdPartyPlatformTokenV3ParamsWithContext creates a new AdminRetrieveUserThirdPartyPlatformTokenV3Params object
// with the default values initialized, and the ability to set a context for a request
func NewAdminRetrieveUserThirdPartyPlatformTokenV3ParamsWithContext(ctx context.Context) *AdminRetrieveUserThirdPartyPlatformTokenV3Params {
	var ()
	return &AdminRetrieveUserThirdPartyPlatformTokenV3Params{

		Context: ctx,
	}
}

// NewAdminRetrieveUserThirdPartyPlatformTokenV3ParamsWithHTTPClient creates a new AdminRetrieveUserThirdPartyPlatformTokenV3Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminRetrieveUserThirdPartyPlatformTokenV3ParamsWithHTTPClient(client *http.Client) *AdminRetrieveUserThirdPartyPlatformTokenV3Params {
	var ()
	return &AdminRetrieveUserThirdPartyPlatformTokenV3Params{
		HTTPClient: client,
	}
}

/*AdminRetrieveUserThirdPartyPlatformTokenV3Params contains all the parameters to send to the API endpoint
for the admin retrieve user third party platform token v3 operation typically these are written to a http.Request
*/
type AdminRetrieveUserThirdPartyPlatformTokenV3Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
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
	/*PlatformUserID
	  Platform user id.

	*/
	PlatformUserID *string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the admin retrieve user third party platform token v3 params
func (o *AdminRetrieveUserThirdPartyPlatformTokenV3Params) WithTimeout(timeout time.Duration) *AdminRetrieveUserThirdPartyPlatformTokenV3Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin retrieve user third party platform token v3 params
func (o *AdminRetrieveUserThirdPartyPlatformTokenV3Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin retrieve user third party platform token v3 params
func (o *AdminRetrieveUserThirdPartyPlatformTokenV3Params) WithContext(ctx context.Context) *AdminRetrieveUserThirdPartyPlatformTokenV3Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin retrieve user third party platform token v3 params
func (o *AdminRetrieveUserThirdPartyPlatformTokenV3Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin retrieve user third party platform token v3 params
func (o *AdminRetrieveUserThirdPartyPlatformTokenV3Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin retrieve user third party platform token v3 params
func (o *AdminRetrieveUserThirdPartyPlatformTokenV3Params) WithHTTPClient(client *http.Client) *AdminRetrieveUserThirdPartyPlatformTokenV3Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin retrieve user third party platform token v3 params
func (o *AdminRetrieveUserThirdPartyPlatformTokenV3Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin retrieve user third party platform token v3 params
func (o *AdminRetrieveUserThirdPartyPlatformTokenV3Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *AdminRetrieveUserThirdPartyPlatformTokenV3Params) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the admin retrieve user third party platform token v3 params
func (o *AdminRetrieveUserThirdPartyPlatformTokenV3Params) WithNamespace(namespace string) *AdminRetrieveUserThirdPartyPlatformTokenV3Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin retrieve user third party platform token v3 params
func (o *AdminRetrieveUserThirdPartyPlatformTokenV3Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithPlatformID adds the platformID to the admin retrieve user third party platform token v3 params
func (o *AdminRetrieveUserThirdPartyPlatformTokenV3Params) WithPlatformID(platformID string) *AdminRetrieveUserThirdPartyPlatformTokenV3Params {
	o.SetPlatformID(platformID)
	return o
}

// SetPlatformID adds the platformId to the admin retrieve user third party platform token v3 params
func (o *AdminRetrieveUserThirdPartyPlatformTokenV3Params) SetPlatformID(platformID string) {
	o.PlatformID = platformID
}

// WithUserID adds the userID to the admin retrieve user third party platform token v3 params
func (o *AdminRetrieveUserThirdPartyPlatformTokenV3Params) WithUserID(userID string) *AdminRetrieveUserThirdPartyPlatformTokenV3Params {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the admin retrieve user third party platform token v3 params
func (o *AdminRetrieveUserThirdPartyPlatformTokenV3Params) SetUserID(userID string) {
	o.UserID = userID
}

// WithPlatformUserID adds the platformUserID to the admin retrieve user third party platform token v3 params
func (o *AdminRetrieveUserThirdPartyPlatformTokenV3Params) WithPlatformUserID(platformUserID *string) *AdminRetrieveUserThirdPartyPlatformTokenV3Params {
	o.SetPlatformUserID(platformUserID)
	return o
}

// SetPlatformUserID adds the platformUserId to the admin retrieve user third party platform token v3 params
func (o *AdminRetrieveUserThirdPartyPlatformTokenV3Params) SetPlatformUserID(platformUserID *string) {
	o.PlatformUserID = platformUserID
}

// WriteToRequest writes these params to a swagger request
func (o *AdminRetrieveUserThirdPartyPlatformTokenV3Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

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

	if o.PlatformUserID != nil {

		// query param platformUserId
		var qrPlatformUserID string
		if o.PlatformUserID != nil {
			qrPlatformUserID = *o.PlatformUserID
		}
		qPlatformUserID := qrPlatformUserID
		if qPlatformUserID != "" {
			if err := r.SetQueryParam("platformUserId", qPlatformUserID); err != nil {
				return err
			}
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
