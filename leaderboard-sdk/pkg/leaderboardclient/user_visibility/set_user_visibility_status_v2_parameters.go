// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package user_visibility

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-modular-sdk/leaderboard-sdk/pkg/leaderboardclientmodels"
)

// NewSetUserVisibilityStatusV2Params creates a new SetUserVisibilityStatusV2Params object
// with the default values initialized.
func NewSetUserVisibilityStatusV2Params() *SetUserVisibilityStatusV2Params {
	var ()
	return &SetUserVisibilityStatusV2Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewSetUserVisibilityStatusV2ParamsWithTimeout creates a new SetUserVisibilityStatusV2Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewSetUserVisibilityStatusV2ParamsWithTimeout(timeout time.Duration) *SetUserVisibilityStatusV2Params {
	var ()
	return &SetUserVisibilityStatusV2Params{

		timeout: timeout,
	}
}

// NewSetUserVisibilityStatusV2ParamsWithContext creates a new SetUserVisibilityStatusV2Params object
// with the default values initialized, and the ability to set a context for a request
func NewSetUserVisibilityStatusV2ParamsWithContext(ctx context.Context) *SetUserVisibilityStatusV2Params {
	var ()
	return &SetUserVisibilityStatusV2Params{

		Context: ctx,
	}
}

// NewSetUserVisibilityStatusV2ParamsWithHTTPClient creates a new SetUserVisibilityStatusV2Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewSetUserVisibilityStatusV2ParamsWithHTTPClient(client *http.Client) *SetUserVisibilityStatusV2Params {
	var ()
	return &SetUserVisibilityStatusV2Params{
		HTTPClient: client,
	}
}

/*SetUserVisibilityStatusV2Params contains all the parameters to send to the API endpoint
for the set user visibility status v2 operation typically these are written to a http.Request
*/
type SetUserVisibilityStatusV2Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *leaderboardclientmodels.ModelsSetUserVisibilityRequest
	/*Namespace
	  namespace of the game

	*/
	Namespace string
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

// WithTimeout adds the timeout to the set user visibility status v2 params
func (o *SetUserVisibilityStatusV2Params) WithTimeout(timeout time.Duration) *SetUserVisibilityStatusV2Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the set user visibility status v2 params
func (o *SetUserVisibilityStatusV2Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the set user visibility status v2 params
func (o *SetUserVisibilityStatusV2Params) WithContext(ctx context.Context) *SetUserVisibilityStatusV2Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the set user visibility status v2 params
func (o *SetUserVisibilityStatusV2Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the set user visibility status v2 params
func (o *SetUserVisibilityStatusV2Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the set user visibility status v2 params
func (o *SetUserVisibilityStatusV2Params) WithHTTPClient(client *http.Client) *SetUserVisibilityStatusV2Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the set user visibility status v2 params
func (o *SetUserVisibilityStatusV2Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the set user visibility status v2 params
func (o *SetUserVisibilityStatusV2Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *SetUserVisibilityStatusV2Params) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the set user visibility status v2 params
func (o *SetUserVisibilityStatusV2Params) WithBody(body *leaderboardclientmodels.ModelsSetUserVisibilityRequest) *SetUserVisibilityStatusV2Params {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the set user visibility status v2 params
func (o *SetUserVisibilityStatusV2Params) SetBody(body *leaderboardclientmodels.ModelsSetUserVisibilityRequest) {
	o.Body = body
}

// WithNamespace adds the namespace to the set user visibility status v2 params
func (o *SetUserVisibilityStatusV2Params) WithNamespace(namespace string) *SetUserVisibilityStatusV2Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the set user visibility status v2 params
func (o *SetUserVisibilityStatusV2Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the set user visibility status v2 params
func (o *SetUserVisibilityStatusV2Params) WithUserID(userID string) *SetUserVisibilityStatusV2Params {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the set user visibility status v2 params
func (o *SetUserVisibilityStatusV2Params) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *SetUserVisibilityStatusV2Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
