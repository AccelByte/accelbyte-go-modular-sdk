// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package wallet

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

// Deprecated: 2025-07-16 - Use UpdatePlatformWalletConfigPlatform<EnumValue>Constant instead.
// Get the enum in UpdatePlatformWalletConfigParams
const (
	UpdatePlatformWalletConfigEpicConstant        = "Epic"
	UpdatePlatformWalletConfigGooglePlayConstant  = "GooglePlay"
	UpdatePlatformWalletConfigIOSConstant         = "IOS"
	UpdatePlatformWalletConfigNintendoConstant    = "Nintendo"
	UpdatePlatformWalletConfigOculusConstant      = "Oculus"
	UpdatePlatformWalletConfigOtherConstant       = "Other"
	UpdatePlatformWalletConfigPlaystationConstant = "Playstation"
	UpdatePlatformWalletConfigSteamConstant       = "Steam"
	UpdatePlatformWalletConfigXboxConstant        = "Xbox"
)

// Get the enum in UpdatePlatformWalletConfigParams
const (
	UpdatePlatformWalletConfigPlatformEpicConstant        = "Epic"
	UpdatePlatformWalletConfigPlatformGooglePlayConstant  = "GooglePlay"
	UpdatePlatformWalletConfigPlatformIOSConstant         = "IOS"
	UpdatePlatformWalletConfigPlatformNintendoConstant    = "Nintendo"
	UpdatePlatformWalletConfigPlatformOculusConstant      = "Oculus"
	UpdatePlatformWalletConfigPlatformOtherConstant       = "Other"
	UpdatePlatformWalletConfigPlatformPlaystationConstant = "Playstation"
	UpdatePlatformWalletConfigPlatformSteamConstant       = "Steam"
	UpdatePlatformWalletConfigPlatformXboxConstant        = "Xbox"
)

// NewUpdatePlatformWalletConfigParams creates a new UpdatePlatformWalletConfigParams object
// with the default values initialized.
func NewUpdatePlatformWalletConfigParams() *UpdatePlatformWalletConfigParams {
	var ()
	return &UpdatePlatformWalletConfigParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewUpdatePlatformWalletConfigParamsWithTimeout creates a new UpdatePlatformWalletConfigParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewUpdatePlatformWalletConfigParamsWithTimeout(timeout time.Duration) *UpdatePlatformWalletConfigParams {
	var ()
	return &UpdatePlatformWalletConfigParams{

		timeout: timeout,
	}
}

// NewUpdatePlatformWalletConfigParamsWithContext creates a new UpdatePlatformWalletConfigParams object
// with the default values initialized, and the ability to set a context for a request
func NewUpdatePlatformWalletConfigParamsWithContext(ctx context.Context) *UpdatePlatformWalletConfigParams {
	var ()
	return &UpdatePlatformWalletConfigParams{

		Context: ctx,
	}
}

// NewUpdatePlatformWalletConfigParamsWithHTTPClient creates a new UpdatePlatformWalletConfigParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewUpdatePlatformWalletConfigParamsWithHTTPClient(client *http.Client) *UpdatePlatformWalletConfigParams {
	var ()
	return &UpdatePlatformWalletConfigParams{
		HTTPClient: client,
	}
}

/*UpdatePlatformWalletConfigParams contains all the parameters to send to the API endpoint
for the update platform wallet config operation typically these are written to a http.Request
*/
type UpdatePlatformWalletConfigParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *platformclientmodels.PlatformWalletConfigUpdate
	/*Namespace
	  Namespace

	*/
	Namespace string
	/*Platform*/
	Platform string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the update platform wallet config params
func (o *UpdatePlatformWalletConfigParams) WithTimeout(timeout time.Duration) *UpdatePlatformWalletConfigParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the update platform wallet config params
func (o *UpdatePlatformWalletConfigParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the update platform wallet config params
func (o *UpdatePlatformWalletConfigParams) WithContext(ctx context.Context) *UpdatePlatformWalletConfigParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the update platform wallet config params
func (o *UpdatePlatformWalletConfigParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the update platform wallet config params
func (o *UpdatePlatformWalletConfigParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the update platform wallet config params
func (o *UpdatePlatformWalletConfigParams) WithHTTPClient(client *http.Client) *UpdatePlatformWalletConfigParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the update platform wallet config params
func (o *UpdatePlatformWalletConfigParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the update platform wallet config params
func (o *UpdatePlatformWalletConfigParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *UpdatePlatformWalletConfigParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the update platform wallet config params
func (o *UpdatePlatformWalletConfigParams) WithBody(body *platformclientmodels.PlatformWalletConfigUpdate) *UpdatePlatformWalletConfigParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the update platform wallet config params
func (o *UpdatePlatformWalletConfigParams) SetBody(body *platformclientmodels.PlatformWalletConfigUpdate) {
	o.Body = body
}

// WithNamespace adds the namespace to the update platform wallet config params
func (o *UpdatePlatformWalletConfigParams) WithNamespace(namespace string) *UpdatePlatformWalletConfigParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the update platform wallet config params
func (o *UpdatePlatformWalletConfigParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithPlatform adds the platform to the update platform wallet config params
func (o *UpdatePlatformWalletConfigParams) WithPlatform(platform string) *UpdatePlatformWalletConfigParams {
	o.SetPlatform(platform)
	return o
}

// SetPlatform adds the platform to the update platform wallet config params
func (o *UpdatePlatformWalletConfigParams) SetPlatform(platform string) {
	o.Platform = platform
}

// WriteToRequest writes these params to a swagger request
func (o *UpdatePlatformWalletConfigParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	if o.Body != nil {
		if err := r.SetBodyParam(o.Body); err != nil {
			return err
		}
	}

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	// path param platform
	if err := r.SetPathParam("platform", o.Platform); err != nil {
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
