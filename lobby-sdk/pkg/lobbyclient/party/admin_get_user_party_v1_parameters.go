// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package party

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

// NewAdminGetUserPartyV1Params creates a new AdminGetUserPartyV1Params object
// with the default values initialized.
func NewAdminGetUserPartyV1Params() *AdminGetUserPartyV1Params {
	var ()
	return &AdminGetUserPartyV1Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminGetUserPartyV1ParamsWithTimeout creates a new AdminGetUserPartyV1Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminGetUserPartyV1ParamsWithTimeout(timeout time.Duration) *AdminGetUserPartyV1Params {
	var ()
	return &AdminGetUserPartyV1Params{

		timeout: timeout,
	}
}

// NewAdminGetUserPartyV1ParamsWithContext creates a new AdminGetUserPartyV1Params object
// with the default values initialized, and the ability to set a context for a request
func NewAdminGetUserPartyV1ParamsWithContext(ctx context.Context) *AdminGetUserPartyV1Params {
	var ()
	return &AdminGetUserPartyV1Params{

		Context: ctx,
	}
}

// NewAdminGetUserPartyV1ParamsWithHTTPClient creates a new AdminGetUserPartyV1Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminGetUserPartyV1ParamsWithHTTPClient(client *http.Client) *AdminGetUserPartyV1Params {
	var ()
	return &AdminGetUserPartyV1Params{
		HTTPClient: client,
	}
}

/*AdminGetUserPartyV1Params contains all the parameters to send to the API endpoint
for the admin get user party v1 operation typically these are written to a http.Request
*/
type AdminGetUserPartyV1Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  namespace

	*/
	Namespace string
	/*UserID
	  user ID

	*/
	UserID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the admin get user party v1 params
func (o *AdminGetUserPartyV1Params) WithTimeout(timeout time.Duration) *AdminGetUserPartyV1Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin get user party v1 params
func (o *AdminGetUserPartyV1Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin get user party v1 params
func (o *AdminGetUserPartyV1Params) WithContext(ctx context.Context) *AdminGetUserPartyV1Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin get user party v1 params
func (o *AdminGetUserPartyV1Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin get user party v1 params
func (o *AdminGetUserPartyV1Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin get user party v1 params
func (o *AdminGetUserPartyV1Params) WithHTTPClient(client *http.Client) *AdminGetUserPartyV1Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin get user party v1 params
func (o *AdminGetUserPartyV1Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin get user party v1 params
func (o *AdminGetUserPartyV1Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *AdminGetUserPartyV1Params) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the admin get user party v1 params
func (o *AdminGetUserPartyV1Params) WithNamespace(namespace string) *AdminGetUserPartyV1Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin get user party v1 params
func (o *AdminGetUserPartyV1Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the admin get user party v1 params
func (o *AdminGetUserPartyV1Params) WithUserID(userID string) *AdminGetUserPartyV1Params {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the admin get user party v1 params
func (o *AdminGetUserPartyV1Params) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *AdminGetUserPartyV1Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
