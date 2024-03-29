// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package third_party

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-modular-sdk/lobby-sdk/pkg/lobbyclientmodels"
)

// NewAdminUpdateThirdPartyConfigParams creates a new AdminUpdateThirdPartyConfigParams object
// with the default values initialized.
func NewAdminUpdateThirdPartyConfigParams() *AdminUpdateThirdPartyConfigParams {
	var ()
	return &AdminUpdateThirdPartyConfigParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminUpdateThirdPartyConfigParamsWithTimeout creates a new AdminUpdateThirdPartyConfigParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminUpdateThirdPartyConfigParamsWithTimeout(timeout time.Duration) *AdminUpdateThirdPartyConfigParams {
	var ()
	return &AdminUpdateThirdPartyConfigParams{

		timeout: timeout,
	}
}

// NewAdminUpdateThirdPartyConfigParamsWithContext creates a new AdminUpdateThirdPartyConfigParams object
// with the default values initialized, and the ability to set a context for a request
func NewAdminUpdateThirdPartyConfigParamsWithContext(ctx context.Context) *AdminUpdateThirdPartyConfigParams {
	var ()
	return &AdminUpdateThirdPartyConfigParams{

		Context: ctx,
	}
}

// NewAdminUpdateThirdPartyConfigParamsWithHTTPClient creates a new AdminUpdateThirdPartyConfigParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminUpdateThirdPartyConfigParamsWithHTTPClient(client *http.Client) *AdminUpdateThirdPartyConfigParams {
	var ()
	return &AdminUpdateThirdPartyConfigParams{
		HTTPClient: client,
	}
}

/*AdminUpdateThirdPartyConfigParams contains all the parameters to send to the API endpoint
for the admin update third party config operation typically these are written to a http.Request
*/
type AdminUpdateThirdPartyConfigParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *lobbyclientmodels.ModelsUpdateConfigRequest
	/*Namespace
	  namespace

	*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the admin update third party config params
func (o *AdminUpdateThirdPartyConfigParams) WithTimeout(timeout time.Duration) *AdminUpdateThirdPartyConfigParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin update third party config params
func (o *AdminUpdateThirdPartyConfigParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin update third party config params
func (o *AdminUpdateThirdPartyConfigParams) WithContext(ctx context.Context) *AdminUpdateThirdPartyConfigParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin update third party config params
func (o *AdminUpdateThirdPartyConfigParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin update third party config params
func (o *AdminUpdateThirdPartyConfigParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin update third party config params
func (o *AdminUpdateThirdPartyConfigParams) WithHTTPClient(client *http.Client) *AdminUpdateThirdPartyConfigParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin update third party config params
func (o *AdminUpdateThirdPartyConfigParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin update third party config params
func (o *AdminUpdateThirdPartyConfigParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *AdminUpdateThirdPartyConfigParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the admin update third party config params
func (o *AdminUpdateThirdPartyConfigParams) WithBody(body *lobbyclientmodels.ModelsUpdateConfigRequest) *AdminUpdateThirdPartyConfigParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the admin update third party config params
func (o *AdminUpdateThirdPartyConfigParams) SetBody(body *lobbyclientmodels.ModelsUpdateConfigRequest) {
	o.Body = body
}

// WithNamespace adds the namespace to the admin update third party config params
func (o *AdminUpdateThirdPartyConfigParams) WithNamespace(namespace string) *AdminUpdateThirdPartyConfigParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin update third party config params
func (o *AdminUpdateThirdPartyConfigParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *AdminUpdateThirdPartyConfigParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
