// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package season

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

// NewGetCurrentUserSeasonProgressionParams creates a new GetCurrentUserSeasonProgressionParams object
// with the default values initialized.
func NewGetCurrentUserSeasonProgressionParams() *GetCurrentUserSeasonProgressionParams {
	var ()
	return &GetCurrentUserSeasonProgressionParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewGetCurrentUserSeasonProgressionParamsWithTimeout creates a new GetCurrentUserSeasonProgressionParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewGetCurrentUserSeasonProgressionParamsWithTimeout(timeout time.Duration) *GetCurrentUserSeasonProgressionParams {
	var ()
	return &GetCurrentUserSeasonProgressionParams{

		timeout: timeout,
	}
}

// NewGetCurrentUserSeasonProgressionParamsWithContext creates a new GetCurrentUserSeasonProgressionParams object
// with the default values initialized, and the ability to set a context for a request
func NewGetCurrentUserSeasonProgressionParamsWithContext(ctx context.Context) *GetCurrentUserSeasonProgressionParams {
	var ()
	return &GetCurrentUserSeasonProgressionParams{

		Context: ctx,
	}
}

// NewGetCurrentUserSeasonProgressionParamsWithHTTPClient creates a new GetCurrentUserSeasonProgressionParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewGetCurrentUserSeasonProgressionParamsWithHTTPClient(client *http.Client) *GetCurrentUserSeasonProgressionParams {
	var ()
	return &GetCurrentUserSeasonProgressionParams{
		HTTPClient: client,
	}
}

/*GetCurrentUserSeasonProgressionParams contains all the parameters to send to the API endpoint
for the get current user season progression operation typically these are written to a http.Request
*/
type GetCurrentUserSeasonProgressionParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  Namespace

	*/
	Namespace string
	/*UserID*/
	UserID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the get current user season progression params
func (o *GetCurrentUserSeasonProgressionParams) WithTimeout(timeout time.Duration) *GetCurrentUserSeasonProgressionParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the get current user season progression params
func (o *GetCurrentUserSeasonProgressionParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the get current user season progression params
func (o *GetCurrentUserSeasonProgressionParams) WithContext(ctx context.Context) *GetCurrentUserSeasonProgressionParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the get current user season progression params
func (o *GetCurrentUserSeasonProgressionParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the get current user season progression params
func (o *GetCurrentUserSeasonProgressionParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the get current user season progression params
func (o *GetCurrentUserSeasonProgressionParams) WithHTTPClient(client *http.Client) *GetCurrentUserSeasonProgressionParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the get current user season progression params
func (o *GetCurrentUserSeasonProgressionParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the get current user season progression params
func (o *GetCurrentUserSeasonProgressionParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *GetCurrentUserSeasonProgressionParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the get current user season progression params
func (o *GetCurrentUserSeasonProgressionParams) WithNamespace(namespace string) *GetCurrentUserSeasonProgressionParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the get current user season progression params
func (o *GetCurrentUserSeasonProgressionParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the get current user season progression params
func (o *GetCurrentUserSeasonProgressionParams) WithUserID(userID string) *GetCurrentUserSeasonProgressionParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the get current user season progression params
func (o *GetCurrentUserSeasonProgressionParams) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *GetCurrentUserSeasonProgressionParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
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
