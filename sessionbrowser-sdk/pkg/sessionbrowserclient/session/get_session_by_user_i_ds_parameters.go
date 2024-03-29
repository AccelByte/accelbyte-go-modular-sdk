// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package session

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

// NewGetSessionByUserIDsParams creates a new GetSessionByUserIDsParams object
// with the default values initialized.
func NewGetSessionByUserIDsParams() *GetSessionByUserIDsParams {
	var ()
	return &GetSessionByUserIDsParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewGetSessionByUserIDsParamsWithTimeout creates a new GetSessionByUserIDsParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewGetSessionByUserIDsParamsWithTimeout(timeout time.Duration) *GetSessionByUserIDsParams {
	var ()
	return &GetSessionByUserIDsParams{

		timeout: timeout,
	}
}

// NewGetSessionByUserIDsParamsWithContext creates a new GetSessionByUserIDsParams object
// with the default values initialized, and the ability to set a context for a request
func NewGetSessionByUserIDsParamsWithContext(ctx context.Context) *GetSessionByUserIDsParams {
	var ()
	return &GetSessionByUserIDsParams{

		Context: ctx,
	}
}

// NewGetSessionByUserIDsParamsWithHTTPClient creates a new GetSessionByUserIDsParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewGetSessionByUserIDsParamsWithHTTPClient(client *http.Client) *GetSessionByUserIDsParams {
	var ()
	return &GetSessionByUserIDsParams{
		HTTPClient: client,
	}
}

/*GetSessionByUserIDsParams contains all the parameters to send to the API endpoint
for the get session by user i ds operation typically these are written to a http.Request
*/
type GetSessionByUserIDsParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  namespace of the game

	*/
	Namespace string
	/*UserIds
	  comma separated user ids

	*/
	UserIds string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the get session by user i ds params
func (o *GetSessionByUserIDsParams) WithTimeout(timeout time.Duration) *GetSessionByUserIDsParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the get session by user i ds params
func (o *GetSessionByUserIDsParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the get session by user i ds params
func (o *GetSessionByUserIDsParams) WithContext(ctx context.Context) *GetSessionByUserIDsParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the get session by user i ds params
func (o *GetSessionByUserIDsParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the get session by user i ds params
func (o *GetSessionByUserIDsParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the get session by user i ds params
func (o *GetSessionByUserIDsParams) WithHTTPClient(client *http.Client) *GetSessionByUserIDsParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the get session by user i ds params
func (o *GetSessionByUserIDsParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the get session by user i ds params
func (o *GetSessionByUserIDsParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *GetSessionByUserIDsParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the get session by user i ds params
func (o *GetSessionByUserIDsParams) WithNamespace(namespace string) *GetSessionByUserIDsParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the get session by user i ds params
func (o *GetSessionByUserIDsParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserIds adds the userIds to the get session by user i ds params
func (o *GetSessionByUserIDsParams) WithUserIds(userIds string) *GetSessionByUserIDsParams {
	o.SetUserIds(userIds)
	return o
}

// SetUserIds adds the userIds to the get session by user i ds params
func (o *GetSessionByUserIDsParams) SetUserIds(userIds string) {
	o.UserIds = userIds
}

// WriteToRequest writes these params to a swagger request
func (o *GetSessionByUserIDsParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	// query param user_ids
	qrUserIds := o.UserIds
	qUserIds := qrUserIds
	if qUserIds != "" {
		if err := r.SetQueryParam("user_ids", qUserIds); err != nil {
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
