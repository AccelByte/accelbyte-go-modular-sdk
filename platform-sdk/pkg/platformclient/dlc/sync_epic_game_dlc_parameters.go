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

// NewSyncEpicGameDLCParams creates a new SyncEpicGameDLCParams object
// with the default values initialized.
func NewSyncEpicGameDLCParams() *SyncEpicGameDLCParams {
	var ()
	return &SyncEpicGameDLCParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewSyncEpicGameDLCParamsWithTimeout creates a new SyncEpicGameDLCParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewSyncEpicGameDLCParamsWithTimeout(timeout time.Duration) *SyncEpicGameDLCParams {
	var ()
	return &SyncEpicGameDLCParams{

		timeout: timeout,
	}
}

// NewSyncEpicGameDLCParamsWithContext creates a new SyncEpicGameDLCParams object
// with the default values initialized, and the ability to set a context for a request
func NewSyncEpicGameDLCParamsWithContext(ctx context.Context) *SyncEpicGameDLCParams {
	var ()
	return &SyncEpicGameDLCParams{

		Context: ctx,
	}
}

// NewSyncEpicGameDLCParamsWithHTTPClient creates a new SyncEpicGameDLCParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewSyncEpicGameDLCParamsWithHTTPClient(client *http.Client) *SyncEpicGameDLCParams {
	var ()
	return &SyncEpicGameDLCParams{
		HTTPClient: client,
	}
}

/*SyncEpicGameDLCParams contains all the parameters to send to the API endpoint
for the sync epic game dlc operation typically these are written to a http.Request
*/
type SyncEpicGameDLCParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *platformclientmodels.EpicGamesDLCSyncRequest
	/*Namespace*/
	Namespace string
	/*UserID*/
	UserID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the sync epic game dlc params
func (o *SyncEpicGameDLCParams) WithTimeout(timeout time.Duration) *SyncEpicGameDLCParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the sync epic game dlc params
func (o *SyncEpicGameDLCParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the sync epic game dlc params
func (o *SyncEpicGameDLCParams) WithContext(ctx context.Context) *SyncEpicGameDLCParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the sync epic game dlc params
func (o *SyncEpicGameDLCParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the sync epic game dlc params
func (o *SyncEpicGameDLCParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the sync epic game dlc params
func (o *SyncEpicGameDLCParams) WithHTTPClient(client *http.Client) *SyncEpicGameDLCParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the sync epic game dlc params
func (o *SyncEpicGameDLCParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the sync epic game dlc params
func (o *SyncEpicGameDLCParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithBody adds the body to the sync epic game dlc params
func (o *SyncEpicGameDLCParams) WithBody(body *platformclientmodels.EpicGamesDLCSyncRequest) *SyncEpicGameDLCParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the sync epic game dlc params
func (o *SyncEpicGameDLCParams) SetBody(body *platformclientmodels.EpicGamesDLCSyncRequest) {
	o.Body = body
}

// WithNamespace adds the namespace to the sync epic game dlc params
func (o *SyncEpicGameDLCParams) WithNamespace(namespace string) *SyncEpicGameDLCParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the sync epic game dlc params
func (o *SyncEpicGameDLCParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the sync epic game dlc params
func (o *SyncEpicGameDLCParams) WithUserID(userID string) *SyncEpicGameDLCParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the sync epic game dlc params
func (o *SyncEpicGameDLCParams) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *SyncEpicGameDLCParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}

	return nil
}
