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

// NewGetUserSeasonParams creates a new GetUserSeasonParams object
// with the default values initialized.
func NewGetUserSeasonParams() *GetUserSeasonParams {
	var ()
	return &GetUserSeasonParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewGetUserSeasonParamsWithTimeout creates a new GetUserSeasonParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewGetUserSeasonParamsWithTimeout(timeout time.Duration) *GetUserSeasonParams {
	var ()
	return &GetUserSeasonParams{

		timeout: timeout,
	}
}

// NewGetUserSeasonParamsWithContext creates a new GetUserSeasonParams object
// with the default values initialized, and the ability to set a context for a request
func NewGetUserSeasonParamsWithContext(ctx context.Context) *GetUserSeasonParams {
	var ()
	return &GetUserSeasonParams{

		Context: ctx,
	}
}

// NewGetUserSeasonParamsWithHTTPClient creates a new GetUserSeasonParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewGetUserSeasonParamsWithHTTPClient(client *http.Client) *GetUserSeasonParams {
	var ()
	return &GetUserSeasonParams{
		HTTPClient: client,
	}
}

/*GetUserSeasonParams contains all the parameters to send to the API endpoint
for the get user season operation typically these are written to a http.Request
*/
type GetUserSeasonParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  Namespace

	*/
	Namespace string
	/*SeasonID*/
	SeasonID string
	/*UserID*/
	UserID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the get user season params
func (o *GetUserSeasonParams) WithTimeout(timeout time.Duration) *GetUserSeasonParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the get user season params
func (o *GetUserSeasonParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the get user season params
func (o *GetUserSeasonParams) WithContext(ctx context.Context) *GetUserSeasonParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the get user season params
func (o *GetUserSeasonParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the get user season params
func (o *GetUserSeasonParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the get user season params
func (o *GetUserSeasonParams) WithHTTPClient(client *http.Client) *GetUserSeasonParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the get user season params
func (o *GetUserSeasonParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the get user season params
func (o *GetUserSeasonParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *GetUserSeasonParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the get user season params
func (o *GetUserSeasonParams) WithNamespace(namespace string) *GetUserSeasonParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the get user season params
func (o *GetUserSeasonParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithSeasonID adds the seasonID to the get user season params
func (o *GetUserSeasonParams) WithSeasonID(seasonID string) *GetUserSeasonParams {
	o.SetSeasonID(seasonID)
	return o
}

// SetSeasonID adds the seasonId to the get user season params
func (o *GetUserSeasonParams) SetSeasonID(seasonID string) {
	o.SeasonID = seasonID
}

// WithUserID adds the userID to the get user season params
func (o *GetUserSeasonParams) WithUserID(userID string) *GetUserSeasonParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the get user season params
func (o *GetUserSeasonParams) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *GetUserSeasonParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	// path param seasonId
	if err := r.SetPathParam("seasonId", o.SeasonID); err != nil {
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
