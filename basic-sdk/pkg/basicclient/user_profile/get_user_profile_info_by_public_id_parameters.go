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
)

// NewGetUserProfileInfoByPublicIDParams creates a new GetUserProfileInfoByPublicIDParams object
// with the default values initialized.
func NewGetUserProfileInfoByPublicIDParams() *GetUserProfileInfoByPublicIDParams {
	var ()
	return &GetUserProfileInfoByPublicIDParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewGetUserProfileInfoByPublicIDParamsWithTimeout creates a new GetUserProfileInfoByPublicIDParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewGetUserProfileInfoByPublicIDParamsWithTimeout(timeout time.Duration) *GetUserProfileInfoByPublicIDParams {
	var ()
	return &GetUserProfileInfoByPublicIDParams{

		timeout: timeout,
	}
}

// NewGetUserProfileInfoByPublicIDParamsWithContext creates a new GetUserProfileInfoByPublicIDParams object
// with the default values initialized, and the ability to set a context for a request
func NewGetUserProfileInfoByPublicIDParamsWithContext(ctx context.Context) *GetUserProfileInfoByPublicIDParams {
	var ()
	return &GetUserProfileInfoByPublicIDParams{

		Context: ctx,
	}
}

// NewGetUserProfileInfoByPublicIDParamsWithHTTPClient creates a new GetUserProfileInfoByPublicIDParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewGetUserProfileInfoByPublicIDParamsWithHTTPClient(client *http.Client) *GetUserProfileInfoByPublicIDParams {
	var ()
	return &GetUserProfileInfoByPublicIDParams{
		HTTPClient: client,
	}
}

/*GetUserProfileInfoByPublicIDParams contains all the parameters to send to the API endpoint
for the get user profile info by public id operation typically these are written to a http.Request
*/
type GetUserProfileInfoByPublicIDParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  namespace, only accept alphabet and numeric

	*/
	Namespace string
	/*PublicID
	  user public id

	*/
	PublicID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the get user profile info by public id params
func (o *GetUserProfileInfoByPublicIDParams) WithTimeout(timeout time.Duration) *GetUserProfileInfoByPublicIDParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the get user profile info by public id params
func (o *GetUserProfileInfoByPublicIDParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the get user profile info by public id params
func (o *GetUserProfileInfoByPublicIDParams) WithContext(ctx context.Context) *GetUserProfileInfoByPublicIDParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the get user profile info by public id params
func (o *GetUserProfileInfoByPublicIDParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the get user profile info by public id params
func (o *GetUserProfileInfoByPublicIDParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the get user profile info by public id params
func (o *GetUserProfileInfoByPublicIDParams) WithHTTPClient(client *http.Client) *GetUserProfileInfoByPublicIDParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the get user profile info by public id params
func (o *GetUserProfileInfoByPublicIDParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the get user profile info by public id params
func (o *GetUserProfileInfoByPublicIDParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *GetUserProfileInfoByPublicIDParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the get user profile info by public id params
func (o *GetUserProfileInfoByPublicIDParams) WithNamespace(namespace string) *GetUserProfileInfoByPublicIDParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the get user profile info by public id params
func (o *GetUserProfileInfoByPublicIDParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithPublicID adds the publicID to the get user profile info by public id params
func (o *GetUserProfileInfoByPublicIDParams) WithPublicID(publicID string) *GetUserProfileInfoByPublicIDParams {
	o.SetPublicID(publicID)
	return o
}

// SetPublicID adds the publicId to the get user profile info by public id params
func (o *GetUserProfileInfoByPublicIDParams) SetPublicID(publicID string) {
	o.PublicID = publicID
}

// WriteToRequest writes these params to a swagger request
func (o *GetUserProfileInfoByPublicIDParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	// query param publicId
	qrPublicID := o.PublicID
	qPublicID := qrPublicID
	if qPublicID != "" {
		if err := r.SetQueryParam("publicId", qPublicID); err != nil {
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
