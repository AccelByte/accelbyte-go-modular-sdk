// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package wallet

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

// NewGetUserWalletParams creates a new GetUserWalletParams object
// with the default values initialized.
func NewGetUserWalletParams() *GetUserWalletParams {
	var ()
	return &GetUserWalletParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewGetUserWalletParamsWithTimeout creates a new GetUserWalletParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewGetUserWalletParamsWithTimeout(timeout time.Duration) *GetUserWalletParams {
	var ()
	return &GetUserWalletParams{

		timeout: timeout,
	}
}

// NewGetUserWalletParamsWithContext creates a new GetUserWalletParams object
// with the default values initialized, and the ability to set a context for a request
func NewGetUserWalletParamsWithContext(ctx context.Context) *GetUserWalletParams {
	var ()
	return &GetUserWalletParams{

		Context: ctx,
	}
}

// NewGetUserWalletParamsWithHTTPClient creates a new GetUserWalletParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewGetUserWalletParamsWithHTTPClient(client *http.Client) *GetUserWalletParams {
	var ()
	return &GetUserWalletParams{
		HTTPClient: client,
	}
}

/*GetUserWalletParams contains all the parameters to send to the API endpoint
for the get user wallet operation typically these are written to a http.Request
*/
type GetUserWalletParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  Namespace

	*/
	Namespace string
	/*UserID
	  userId

	*/
	UserID string
	/*WalletID*/
	WalletID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the get user wallet params
func (o *GetUserWalletParams) WithTimeout(timeout time.Duration) *GetUserWalletParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the get user wallet params
func (o *GetUserWalletParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the get user wallet params
func (o *GetUserWalletParams) WithContext(ctx context.Context) *GetUserWalletParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the get user wallet params
func (o *GetUserWalletParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the get user wallet params
func (o *GetUserWalletParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the get user wallet params
func (o *GetUserWalletParams) WithHTTPClient(client *http.Client) *GetUserWalletParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the get user wallet params
func (o *GetUserWalletParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the get user wallet params
func (o *GetUserWalletParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *GetUserWalletParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the get user wallet params
func (o *GetUserWalletParams) WithNamespace(namespace string) *GetUserWalletParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the get user wallet params
func (o *GetUserWalletParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the get user wallet params
func (o *GetUserWalletParams) WithUserID(userID string) *GetUserWalletParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the get user wallet params
func (o *GetUserWalletParams) SetUserID(userID string) {
	o.UserID = userID
}

// WithWalletID adds the walletID to the get user wallet params
func (o *GetUserWalletParams) WithWalletID(walletID string) *GetUserWalletParams {
	o.SetWalletID(walletID)
	return o
}

// SetWalletID adds the walletId to the get user wallet params
func (o *GetUserWalletParams) SetWalletID(walletID string) {
	o.WalletID = walletID
}

// WriteToRequest writes these params to a swagger request
func (o *GetUserWalletParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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

	// path param walletId
	if err := r.SetPathParam("walletId", o.WalletID); err != nil {
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
