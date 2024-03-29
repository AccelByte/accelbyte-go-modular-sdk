// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package game_profile

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

// NewGetProfileParams creates a new GetProfileParams object
// with the default values initialized.
func NewGetProfileParams() *GetProfileParams {
	var ()
	return &GetProfileParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewGetProfileParamsWithTimeout creates a new GetProfileParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewGetProfileParamsWithTimeout(timeout time.Duration) *GetProfileParams {
	var ()
	return &GetProfileParams{

		timeout: timeout,
	}
}

// NewGetProfileParamsWithContext creates a new GetProfileParams object
// with the default values initialized, and the ability to set a context for a request
func NewGetProfileParamsWithContext(ctx context.Context) *GetProfileParams {
	var ()
	return &GetProfileParams{

		Context: ctx,
	}
}

// NewGetProfileParamsWithHTTPClient creates a new GetProfileParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewGetProfileParamsWithHTTPClient(client *http.Client) *GetProfileParams {
	var ()
	return &GetProfileParams{
		HTTPClient: client,
	}
}

/*GetProfileParams contains all the parameters to send to the API endpoint
for the get profile operation typically these are written to a http.Request
*/
type GetProfileParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  Namespace ID

	*/
	Namespace string
	/*ProfileID
	  Game profile ID

	*/
	ProfileID string
	/*UserID
	  User ID

	*/
	UserID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the get profile params
func (o *GetProfileParams) WithTimeout(timeout time.Duration) *GetProfileParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the get profile params
func (o *GetProfileParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the get profile params
func (o *GetProfileParams) WithContext(ctx context.Context) *GetProfileParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the get profile params
func (o *GetProfileParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the get profile params
func (o *GetProfileParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the get profile params
func (o *GetProfileParams) WithHTTPClient(client *http.Client) *GetProfileParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the get profile params
func (o *GetProfileParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the get profile params
func (o *GetProfileParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *GetProfileParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the get profile params
func (o *GetProfileParams) WithNamespace(namespace string) *GetProfileParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the get profile params
func (o *GetProfileParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithProfileID adds the profileID to the get profile params
func (o *GetProfileParams) WithProfileID(profileID string) *GetProfileParams {
	o.SetProfileID(profileID)
	return o
}

// SetProfileID adds the profileId to the get profile params
func (o *GetProfileParams) SetProfileID(profileID string) {
	o.ProfileID = profileID
}

// WithUserID adds the userID to the get profile params
func (o *GetProfileParams) WithUserID(userID string) *GetProfileParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the get profile params
func (o *GetProfileParams) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *GetProfileParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	// path param profileId
	if err := r.SetPathParam("profileId", o.ProfileID); err != nil {
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
