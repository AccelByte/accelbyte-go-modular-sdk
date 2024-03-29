// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package user_statistic

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

// NewCreateUserStatItemParams creates a new CreateUserStatItemParams object
// with the default values initialized.
func NewCreateUserStatItemParams() *CreateUserStatItemParams {
	var ()
	return &CreateUserStatItemParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewCreateUserStatItemParamsWithTimeout creates a new CreateUserStatItemParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewCreateUserStatItemParamsWithTimeout(timeout time.Duration) *CreateUserStatItemParams {
	var ()
	return &CreateUserStatItemParams{

		timeout: timeout,
	}
}

// NewCreateUserStatItemParamsWithContext creates a new CreateUserStatItemParams object
// with the default values initialized, and the ability to set a context for a request
func NewCreateUserStatItemParamsWithContext(ctx context.Context) *CreateUserStatItemParams {
	var ()
	return &CreateUserStatItemParams{

		Context: ctx,
	}
}

// NewCreateUserStatItemParamsWithHTTPClient creates a new CreateUserStatItemParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewCreateUserStatItemParamsWithHTTPClient(client *http.Client) *CreateUserStatItemParams {
	var ()
	return &CreateUserStatItemParams{
		HTTPClient: client,
	}
}

/*CreateUserStatItemParams contains all the parameters to send to the API endpoint
for the create user stat item operation typically these are written to a http.Request
*/
type CreateUserStatItemParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  namespace

	*/
	Namespace string
	/*StatCode
	  stat code

	*/
	StatCode string
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

// WithTimeout adds the timeout to the create user stat item params
func (o *CreateUserStatItemParams) WithTimeout(timeout time.Duration) *CreateUserStatItemParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the create user stat item params
func (o *CreateUserStatItemParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the create user stat item params
func (o *CreateUserStatItemParams) WithContext(ctx context.Context) *CreateUserStatItemParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the create user stat item params
func (o *CreateUserStatItemParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the create user stat item params
func (o *CreateUserStatItemParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the create user stat item params
func (o *CreateUserStatItemParams) WithHTTPClient(client *http.Client) *CreateUserStatItemParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the create user stat item params
func (o *CreateUserStatItemParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the create user stat item params
func (o *CreateUserStatItemParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *CreateUserStatItemParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the create user stat item params
func (o *CreateUserStatItemParams) WithNamespace(namespace string) *CreateUserStatItemParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the create user stat item params
func (o *CreateUserStatItemParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithStatCode adds the statCode to the create user stat item params
func (o *CreateUserStatItemParams) WithStatCode(statCode string) *CreateUserStatItemParams {
	o.SetStatCode(statCode)
	return o
}

// SetStatCode adds the statCode to the create user stat item params
func (o *CreateUserStatItemParams) SetStatCode(statCode string) {
	o.StatCode = statCode
}

// WithUserID adds the userID to the create user stat item params
func (o *CreateUserStatItemParams) WithUserID(userID string) *CreateUserStatItemParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the create user stat item params
func (o *CreateUserStatItemParams) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *CreateUserStatItemParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	// path param statCode
	if err := r.SetPathParam("statCode", o.StatCode); err != nil {
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
