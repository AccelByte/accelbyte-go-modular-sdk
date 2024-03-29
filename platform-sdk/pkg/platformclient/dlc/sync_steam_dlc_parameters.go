// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package dlc

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

// NewSyncSteamDLCParams creates a new SyncSteamDLCParams object
// with the default values initialized.
func NewSyncSteamDLCParams() *SyncSteamDLCParams {
	var ()
	return &SyncSteamDLCParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewSyncSteamDLCParamsWithTimeout creates a new SyncSteamDLCParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewSyncSteamDLCParamsWithTimeout(timeout time.Duration) *SyncSteamDLCParams {
	var ()
	return &SyncSteamDLCParams{

		timeout: timeout,
	}
}

// NewSyncSteamDLCParamsWithContext creates a new SyncSteamDLCParams object
// with the default values initialized, and the ability to set a context for a request
func NewSyncSteamDLCParamsWithContext(ctx context.Context) *SyncSteamDLCParams {
	var ()
	return &SyncSteamDLCParams{

		Context: ctx,
	}
}

// NewSyncSteamDLCParamsWithHTTPClient creates a new SyncSteamDLCParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewSyncSteamDLCParamsWithHTTPClient(client *http.Client) *SyncSteamDLCParams {
	var ()
	return &SyncSteamDLCParams{
		HTTPClient: client,
	}
}

/*SyncSteamDLCParams contains all the parameters to send to the API endpoint
for the sync steam dlc operation typically these are written to a http.Request
*/
type SyncSteamDLCParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *platformclientmodels.SteamDLCSyncRequest
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

// WithTimeout adds the timeout to the sync steam dlc params
func (o *SyncSteamDLCParams) WithTimeout(timeout time.Duration) *SyncSteamDLCParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the sync steam dlc params
func (o *SyncSteamDLCParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the sync steam dlc params
func (o *SyncSteamDLCParams) WithContext(ctx context.Context) *SyncSteamDLCParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the sync steam dlc params
func (o *SyncSteamDLCParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the sync steam dlc params
func (o *SyncSteamDLCParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the sync steam dlc params
func (o *SyncSteamDLCParams) WithHTTPClient(client *http.Client) *SyncSteamDLCParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the sync steam dlc params
func (o *SyncSteamDLCParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the sync steam dlc params
func (o *SyncSteamDLCParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *SyncSteamDLCParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the sync steam dlc params
func (o *SyncSteamDLCParams) WithBody(body *platformclientmodels.SteamDLCSyncRequest) *SyncSteamDLCParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the sync steam dlc params
func (o *SyncSteamDLCParams) SetBody(body *platformclientmodels.SteamDLCSyncRequest) {
	o.Body = body
}

// WithNamespace adds the namespace to the sync steam dlc params
func (o *SyncSteamDLCParams) WithNamespace(namespace string) *SyncSteamDLCParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the sync steam dlc params
func (o *SyncSteamDLCParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the sync steam dlc params
func (o *SyncSteamDLCParams) WithUserID(userID string) *SyncSteamDLCParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the sync steam dlc params
func (o *SyncSteamDLCParams) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *SyncSteamDLCParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
