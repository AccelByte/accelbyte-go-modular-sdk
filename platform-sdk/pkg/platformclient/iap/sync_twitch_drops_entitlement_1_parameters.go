// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package iap

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-modular-sdk/platform-sdk/pkg/platformclientmodels"
)

// NewSyncTwitchDropsEntitlement1Params creates a new SyncTwitchDropsEntitlement1Params object
// with the default values initialized.
func NewSyncTwitchDropsEntitlement1Params() *SyncTwitchDropsEntitlement1Params {
	var ()
	return &SyncTwitchDropsEntitlement1Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewSyncTwitchDropsEntitlement1ParamsWithTimeout creates a new SyncTwitchDropsEntitlement1Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewSyncTwitchDropsEntitlement1ParamsWithTimeout(timeout time.Duration) *SyncTwitchDropsEntitlement1Params {
	var ()
	return &SyncTwitchDropsEntitlement1Params{

		timeout: timeout,
	}
}

// NewSyncTwitchDropsEntitlement1ParamsWithContext creates a new SyncTwitchDropsEntitlement1Params object
// with the default values initialized, and the ability to set a context for a request
func NewSyncTwitchDropsEntitlement1ParamsWithContext(ctx context.Context) *SyncTwitchDropsEntitlement1Params {
	var ()
	return &SyncTwitchDropsEntitlement1Params{

		Context: ctx,
	}
}

// NewSyncTwitchDropsEntitlement1ParamsWithHTTPClient creates a new SyncTwitchDropsEntitlement1Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewSyncTwitchDropsEntitlement1ParamsWithHTTPClient(client *http.Client) *SyncTwitchDropsEntitlement1Params {
	var ()
	return &SyncTwitchDropsEntitlement1Params{
		HTTPClient: client,
	}
}

/*SyncTwitchDropsEntitlement1Params contains all the parameters to send to the API endpoint
for the sync twitch drops entitlement 1 operation typically these are written to a http.Request
*/
type SyncTwitchDropsEntitlement1Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *platformclientmodels.TwitchSyncRequest
	/*Namespace*/
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

// WithTimeout adds the timeout to the sync twitch drops entitlement 1 params
func (o *SyncTwitchDropsEntitlement1Params) WithTimeout(timeout time.Duration) *SyncTwitchDropsEntitlement1Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the sync twitch drops entitlement 1 params
func (o *SyncTwitchDropsEntitlement1Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the sync twitch drops entitlement 1 params
func (o *SyncTwitchDropsEntitlement1Params) WithContext(ctx context.Context) *SyncTwitchDropsEntitlement1Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the sync twitch drops entitlement 1 params
func (o *SyncTwitchDropsEntitlement1Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the sync twitch drops entitlement 1 params
func (o *SyncTwitchDropsEntitlement1Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the sync twitch drops entitlement 1 params
func (o *SyncTwitchDropsEntitlement1Params) WithHTTPClient(client *http.Client) *SyncTwitchDropsEntitlement1Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the sync twitch drops entitlement 1 params
func (o *SyncTwitchDropsEntitlement1Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the sync twitch drops entitlement 1 params
func (o *SyncTwitchDropsEntitlement1Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *SyncTwitchDropsEntitlement1Params) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the sync twitch drops entitlement 1 params
func (o *SyncTwitchDropsEntitlement1Params) WithBody(body *platformclientmodels.TwitchSyncRequest) *SyncTwitchDropsEntitlement1Params {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the sync twitch drops entitlement 1 params
func (o *SyncTwitchDropsEntitlement1Params) SetBody(body *platformclientmodels.TwitchSyncRequest) {
	o.Body = body
}

// WithNamespace adds the namespace to the sync twitch drops entitlement 1 params
func (o *SyncTwitchDropsEntitlement1Params) WithNamespace(namespace string) *SyncTwitchDropsEntitlement1Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the sync twitch drops entitlement 1 params
func (o *SyncTwitchDropsEntitlement1Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the sync twitch drops entitlement 1 params
func (o *SyncTwitchDropsEntitlement1Params) WithUserID(userID string) *SyncTwitchDropsEntitlement1Params {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the sync twitch drops entitlement 1 params
func (o *SyncTwitchDropsEntitlement1Params) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *SyncTwitchDropsEntitlement1Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
