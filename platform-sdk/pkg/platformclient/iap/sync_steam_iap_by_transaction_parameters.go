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

// NewSyncSteamIAPByTransactionParams creates a new SyncSteamIAPByTransactionParams object
// with the default values initialized.
func NewSyncSteamIAPByTransactionParams() *SyncSteamIAPByTransactionParams {
	var ()
	return &SyncSteamIAPByTransactionParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewSyncSteamIAPByTransactionParamsWithTimeout creates a new SyncSteamIAPByTransactionParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewSyncSteamIAPByTransactionParamsWithTimeout(timeout time.Duration) *SyncSteamIAPByTransactionParams {
	var ()
	return &SyncSteamIAPByTransactionParams{

		timeout: timeout,
	}
}

// NewSyncSteamIAPByTransactionParamsWithContext creates a new SyncSteamIAPByTransactionParams object
// with the default values initialized, and the ability to set a context for a request
func NewSyncSteamIAPByTransactionParamsWithContext(ctx context.Context) *SyncSteamIAPByTransactionParams {
	var ()
	return &SyncSteamIAPByTransactionParams{

		Context: ctx,
	}
}

// NewSyncSteamIAPByTransactionParamsWithHTTPClient creates a new SyncSteamIAPByTransactionParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewSyncSteamIAPByTransactionParamsWithHTTPClient(client *http.Client) *SyncSteamIAPByTransactionParams {
	var ()
	return &SyncSteamIAPByTransactionParams{
		HTTPClient: client,
	}
}

/*SyncSteamIAPByTransactionParams contains all the parameters to send to the API endpoint
for the sync steam iap by transaction operation typically these are written to a http.Request
*/
type SyncSteamIAPByTransactionParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *platformclientmodels.SteamSyncByTransactionRequest
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

// WithTimeout adds the timeout to the sync steam iap by transaction params
func (o *SyncSteamIAPByTransactionParams) WithTimeout(timeout time.Duration) *SyncSteamIAPByTransactionParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the sync steam iap by transaction params
func (o *SyncSteamIAPByTransactionParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the sync steam iap by transaction params
func (o *SyncSteamIAPByTransactionParams) WithContext(ctx context.Context) *SyncSteamIAPByTransactionParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the sync steam iap by transaction params
func (o *SyncSteamIAPByTransactionParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the sync steam iap by transaction params
func (o *SyncSteamIAPByTransactionParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the sync steam iap by transaction params
func (o *SyncSteamIAPByTransactionParams) WithHTTPClient(client *http.Client) *SyncSteamIAPByTransactionParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the sync steam iap by transaction params
func (o *SyncSteamIAPByTransactionParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the sync steam iap by transaction params
func (o *SyncSteamIAPByTransactionParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *SyncSteamIAPByTransactionParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the sync steam iap by transaction params
func (o *SyncSteamIAPByTransactionParams) WithBody(body *platformclientmodels.SteamSyncByTransactionRequest) *SyncSteamIAPByTransactionParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the sync steam iap by transaction params
func (o *SyncSteamIAPByTransactionParams) SetBody(body *platformclientmodels.SteamSyncByTransactionRequest) {
	o.Body = body
}

// WithNamespace adds the namespace to the sync steam iap by transaction params
func (o *SyncSteamIAPByTransactionParams) WithNamespace(namespace string) *SyncSteamIAPByTransactionParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the sync steam iap by transaction params
func (o *SyncSteamIAPByTransactionParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the sync steam iap by transaction params
func (o *SyncSteamIAPByTransactionParams) WithUserID(userID string) *SyncSteamIAPByTransactionParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the sync steam iap by transaction params
func (o *SyncSteamIAPByTransactionParams) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *SyncSteamIAPByTransactionParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
