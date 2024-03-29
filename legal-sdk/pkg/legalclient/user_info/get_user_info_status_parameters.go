// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package user_info

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

// NewGetUserInfoStatusParams creates a new GetUserInfoStatusParams object
// with the default values initialized.
func NewGetUserInfoStatusParams() *GetUserInfoStatusParams {
	var ()
	return &GetUserInfoStatusParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewGetUserInfoStatusParamsWithTimeout creates a new GetUserInfoStatusParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewGetUserInfoStatusParamsWithTimeout(timeout time.Duration) *GetUserInfoStatusParams {
	var ()
	return &GetUserInfoStatusParams{

		timeout: timeout,
	}
}

// NewGetUserInfoStatusParamsWithContext creates a new GetUserInfoStatusParams object
// with the default values initialized, and the ability to set a context for a request
func NewGetUserInfoStatusParamsWithContext(ctx context.Context) *GetUserInfoStatusParams {
	var ()
	return &GetUserInfoStatusParams{

		Context: ctx,
	}
}

// NewGetUserInfoStatusParamsWithHTTPClient creates a new GetUserInfoStatusParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewGetUserInfoStatusParamsWithHTTPClient(client *http.Client) *GetUserInfoStatusParams {
	var ()
	return &GetUserInfoStatusParams{
		HTTPClient: client,
	}
}

/*GetUserInfoStatusParams contains all the parameters to send to the API endpoint
for the get user info status operation typically these are written to a http.Request
*/
type GetUserInfoStatusParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespaces*/
	Namespaces *string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the get user info status params
func (o *GetUserInfoStatusParams) WithTimeout(timeout time.Duration) *GetUserInfoStatusParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the get user info status params
func (o *GetUserInfoStatusParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the get user info status params
func (o *GetUserInfoStatusParams) WithContext(ctx context.Context) *GetUserInfoStatusParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the get user info status params
func (o *GetUserInfoStatusParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the get user info status params
func (o *GetUserInfoStatusParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the get user info status params
func (o *GetUserInfoStatusParams) WithHTTPClient(client *http.Client) *GetUserInfoStatusParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the get user info status params
func (o *GetUserInfoStatusParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the get user info status params
func (o *GetUserInfoStatusParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *GetUserInfoStatusParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespaces adds the namespaces to the get user info status params
func (o *GetUserInfoStatusParams) WithNamespaces(namespaces *string) *GetUserInfoStatusParams {
	o.SetNamespaces(namespaces)
	return o
}

// SetNamespaces adds the namespaces to the get user info status params
func (o *GetUserInfoStatusParams) SetNamespaces(namespaces *string) {
	o.Namespaces = namespaces
}

// WriteToRequest writes these params to a swagger request
func (o *GetUserInfoStatusParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	if o.Namespaces != nil {

		// query param namespaces
		var qrNamespaces string
		if o.Namespaces != nil {
			qrNamespaces = *o.Namespaces
		}
		qNamespaces := qrNamespaces
		if qNamespaces != "" {
			if err := r.SetQueryParam("namespaces", qNamespaces); err != nil {
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
