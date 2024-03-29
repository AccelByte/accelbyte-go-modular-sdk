// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package user_profile

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-modular-sdk/basic-sdk/pkg/basicclientmodels"
)

// NewUpdateMyZipCodeParams creates a new UpdateMyZipCodeParams object
// with the default values initialized.
func NewUpdateMyZipCodeParams() *UpdateMyZipCodeParams {
	var ()
	return &UpdateMyZipCodeParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewUpdateMyZipCodeParamsWithTimeout creates a new UpdateMyZipCodeParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewUpdateMyZipCodeParamsWithTimeout(timeout time.Duration) *UpdateMyZipCodeParams {
	var ()
	return &UpdateMyZipCodeParams{

		timeout: timeout,
	}
}

// NewUpdateMyZipCodeParamsWithContext creates a new UpdateMyZipCodeParams object
// with the default values initialized, and the ability to set a context for a request
func NewUpdateMyZipCodeParamsWithContext(ctx context.Context) *UpdateMyZipCodeParams {
	var ()
	return &UpdateMyZipCodeParams{

		Context: ctx,
	}
}

// NewUpdateMyZipCodeParamsWithHTTPClient creates a new UpdateMyZipCodeParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewUpdateMyZipCodeParamsWithHTTPClient(client *http.Client) *UpdateMyZipCodeParams {
	var ()
	return &UpdateMyZipCodeParams{
		HTTPClient: client,
	}
}

/*UpdateMyZipCodeParams contains all the parameters to send to the API endpoint
for the update my zip code operation typically these are written to a http.Request
*/
type UpdateMyZipCodeParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*UserZipCodeUpdate*/
	UserZipCodeUpdate *basicclientmodels.UserZipCodeUpdate
	/*Namespace
	  namespace, only accept alphabet and numeric

	*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the update my zip code params
func (o *UpdateMyZipCodeParams) WithTimeout(timeout time.Duration) *UpdateMyZipCodeParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the update my zip code params
func (o *UpdateMyZipCodeParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the update my zip code params
func (o *UpdateMyZipCodeParams) WithContext(ctx context.Context) *UpdateMyZipCodeParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the update my zip code params
func (o *UpdateMyZipCodeParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the update my zip code params
func (o *UpdateMyZipCodeParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the update my zip code params
func (o *UpdateMyZipCodeParams) WithHTTPClient(client *http.Client) *UpdateMyZipCodeParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the update my zip code params
func (o *UpdateMyZipCodeParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the update my zip code params
func (o *UpdateMyZipCodeParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *UpdateMyZipCodeParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithUserZipCodeUpdate adds the userZipCodeUpdate to the update my zip code params
func (o *UpdateMyZipCodeParams) WithUserZipCodeUpdate(userZipCodeUpdate *basicclientmodels.UserZipCodeUpdate) *UpdateMyZipCodeParams {
	o.SetUserZipCodeUpdate(userZipCodeUpdate)
	return o
}

// SetUserZipCodeUpdate adds the userZipCodeUpdate to the update my zip code params
func (o *UpdateMyZipCodeParams) SetUserZipCodeUpdate(userZipCodeUpdate *basicclientmodels.UserZipCodeUpdate) {
	o.UserZipCodeUpdate = userZipCodeUpdate
}

// WithNamespace adds the namespace to the update my zip code params
func (o *UpdateMyZipCodeParams) WithNamespace(namespace string) *UpdateMyZipCodeParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the update my zip code params
func (o *UpdateMyZipCodeParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *UpdateMyZipCodeParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	if o.UserZipCodeUpdate != nil {
		if err := r.SetBodyParam(o.UserZipCodeUpdate); err != nil {
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
