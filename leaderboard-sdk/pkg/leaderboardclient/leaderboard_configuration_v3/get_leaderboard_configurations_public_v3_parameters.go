// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package leaderboard_configuration_v3

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
)

// NewGetLeaderboardConfigurationsPublicV3Params creates a new GetLeaderboardConfigurationsPublicV3Params object
// with the default values initialized.
func NewGetLeaderboardConfigurationsPublicV3Params() *GetLeaderboardConfigurationsPublicV3Params {
	var ()
	return &GetLeaderboardConfigurationsPublicV3Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewGetLeaderboardConfigurationsPublicV3ParamsWithTimeout creates a new GetLeaderboardConfigurationsPublicV3Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewGetLeaderboardConfigurationsPublicV3ParamsWithTimeout(timeout time.Duration) *GetLeaderboardConfigurationsPublicV3Params {
	var ()
	return &GetLeaderboardConfigurationsPublicV3Params{

		timeout: timeout,
	}
}

// NewGetLeaderboardConfigurationsPublicV3ParamsWithContext creates a new GetLeaderboardConfigurationsPublicV3Params object
// with the default values initialized, and the ability to set a context for a request
func NewGetLeaderboardConfigurationsPublicV3ParamsWithContext(ctx context.Context) *GetLeaderboardConfigurationsPublicV3Params {
	var ()
	return &GetLeaderboardConfigurationsPublicV3Params{

		Context: ctx,
	}
}

// NewGetLeaderboardConfigurationsPublicV3ParamsWithHTTPClient creates a new GetLeaderboardConfigurationsPublicV3Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewGetLeaderboardConfigurationsPublicV3ParamsWithHTTPClient(client *http.Client) *GetLeaderboardConfigurationsPublicV3Params {
	var ()
	return &GetLeaderboardConfigurationsPublicV3Params{
		HTTPClient: client,
	}
}

/*GetLeaderboardConfigurationsPublicV3Params contains all the parameters to send to the API endpoint
for the get leaderboard configurations public v3 operation typically these are written to a http.Request
*/
type GetLeaderboardConfigurationsPublicV3Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  namespace of the game

	*/
	Namespace string
	/*IsDeleted
	  filter for deleted leaderboard config

	*/
	IsDeleted *bool
	/*Limit
	  size of displayed data

	*/
	Limit *int64
	/*Offset
	  The start position that points to query data

	*/
	Offset *int64

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the get leaderboard configurations public v3 params
func (o *GetLeaderboardConfigurationsPublicV3Params) WithTimeout(timeout time.Duration) *GetLeaderboardConfigurationsPublicV3Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the get leaderboard configurations public v3 params
func (o *GetLeaderboardConfigurationsPublicV3Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the get leaderboard configurations public v3 params
func (o *GetLeaderboardConfigurationsPublicV3Params) WithContext(ctx context.Context) *GetLeaderboardConfigurationsPublicV3Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the get leaderboard configurations public v3 params
func (o *GetLeaderboardConfigurationsPublicV3Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the get leaderboard configurations public v3 params
func (o *GetLeaderboardConfigurationsPublicV3Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the get leaderboard configurations public v3 params
func (o *GetLeaderboardConfigurationsPublicV3Params) WithHTTPClient(client *http.Client) *GetLeaderboardConfigurationsPublicV3Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the get leaderboard configurations public v3 params
func (o *GetLeaderboardConfigurationsPublicV3Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the get leaderboard configurations public v3 params
func (o *GetLeaderboardConfigurationsPublicV3Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *GetLeaderboardConfigurationsPublicV3Params) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the get leaderboard configurations public v3 params
func (o *GetLeaderboardConfigurationsPublicV3Params) WithNamespace(namespace string) *GetLeaderboardConfigurationsPublicV3Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the get leaderboard configurations public v3 params
func (o *GetLeaderboardConfigurationsPublicV3Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithIsDeleted adds the isDeleted to the get leaderboard configurations public v3 params
func (o *GetLeaderboardConfigurationsPublicV3Params) WithIsDeleted(isDeleted *bool) *GetLeaderboardConfigurationsPublicV3Params {
	o.SetIsDeleted(isDeleted)
	return o
}

// SetIsDeleted adds the isDeleted to the get leaderboard configurations public v3 params
func (o *GetLeaderboardConfigurationsPublicV3Params) SetIsDeleted(isDeleted *bool) {
	o.IsDeleted = isDeleted
}

// WithLimit adds the limit to the get leaderboard configurations public v3 params
func (o *GetLeaderboardConfigurationsPublicV3Params) WithLimit(limit *int64) *GetLeaderboardConfigurationsPublicV3Params {
	o.SetLimit(limit)
	return o
}

// SetLimit adds the limit to the get leaderboard configurations public v3 params
func (o *GetLeaderboardConfigurationsPublicV3Params) SetLimit(limit *int64) {
	o.Limit = limit
}

// WithOffset adds the offset to the get leaderboard configurations public v3 params
func (o *GetLeaderboardConfigurationsPublicV3Params) WithOffset(offset *int64) *GetLeaderboardConfigurationsPublicV3Params {
	o.SetOffset(offset)
	return o
}

// SetOffset adds the offset to the get leaderboard configurations public v3 params
func (o *GetLeaderboardConfigurationsPublicV3Params) SetOffset(offset *int64) {
	o.Offset = offset
}

// WriteToRequest writes these params to a swagger request
func (o *GetLeaderboardConfigurationsPublicV3Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	if o.IsDeleted != nil {

		// query param isDeleted
		var qrIsDeleted bool
		if o.IsDeleted != nil {
			qrIsDeleted = *o.IsDeleted
		}
		qIsDeleted := swag.FormatBool(qrIsDeleted)
		if qIsDeleted != "" {
			if err := r.SetQueryParam("isDeleted", qIsDeleted); err != nil {
				return err
			}
		}

	}

	if o.Limit != nil {

		// query param limit
		var qrLimit int64
		if o.Limit != nil {
			qrLimit = *o.Limit
		}
		qLimit := swag.FormatInt64(qrLimit)
		if qLimit != "" {
			if err := r.SetQueryParam("limit", qLimit); err != nil {
				return err
			}
		}

	}

	if o.Offset != nil {

		// query param offset
		var qrOffset int64
		if o.Offset != nil {
			qrOffset = *o.Offset
		}
		qOffset := swag.FormatInt64(qrOffset)
		if qOffset != "" {
			if err := r.SetQueryParam("offset", qOffset); err != nil {
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
