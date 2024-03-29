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

// NewPublicCreateUserStatItemParams creates a new PublicCreateUserStatItemParams object
// with the default values initialized.
func NewPublicCreateUserStatItemParams() *PublicCreateUserStatItemParams {
	var ()
	return &PublicCreateUserStatItemParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewPublicCreateUserStatItemParamsWithTimeout creates a new PublicCreateUserStatItemParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewPublicCreateUserStatItemParamsWithTimeout(timeout time.Duration) *PublicCreateUserStatItemParams {
	var ()
	return &PublicCreateUserStatItemParams{

		timeout: timeout,
	}
}

// NewPublicCreateUserStatItemParamsWithContext creates a new PublicCreateUserStatItemParams object
// with the default values initialized, and the ability to set a context for a request
func NewPublicCreateUserStatItemParamsWithContext(ctx context.Context) *PublicCreateUserStatItemParams {
	var ()
	return &PublicCreateUserStatItemParams{

		Context: ctx,
	}
}

// NewPublicCreateUserStatItemParamsWithHTTPClient creates a new PublicCreateUserStatItemParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPublicCreateUserStatItemParamsWithHTTPClient(client *http.Client) *PublicCreateUserStatItemParams {
	var ()
	return &PublicCreateUserStatItemParams{
		HTTPClient: client,
	}
}

/*PublicCreateUserStatItemParams contains all the parameters to send to the API endpoint
for the public create user stat item operation typically these are written to a http.Request
*/
type PublicCreateUserStatItemParams struct {

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

// WithTimeout adds the timeout to the public create user stat item params
func (o *PublicCreateUserStatItemParams) WithTimeout(timeout time.Duration) *PublicCreateUserStatItemParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the public create user stat item params
func (o *PublicCreateUserStatItemParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the public create user stat item params
func (o *PublicCreateUserStatItemParams) WithContext(ctx context.Context) *PublicCreateUserStatItemParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the public create user stat item params
func (o *PublicCreateUserStatItemParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the public create user stat item params
func (o *PublicCreateUserStatItemParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the public create user stat item params
func (o *PublicCreateUserStatItemParams) WithHTTPClient(client *http.Client) *PublicCreateUserStatItemParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the public create user stat item params
func (o *PublicCreateUserStatItemParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the public create user stat item params
func (o *PublicCreateUserStatItemParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *PublicCreateUserStatItemParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the public create user stat item params
func (o *PublicCreateUserStatItemParams) WithNamespace(namespace string) *PublicCreateUserStatItemParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the public create user stat item params
func (o *PublicCreateUserStatItemParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithStatCode adds the statCode to the public create user stat item params
func (o *PublicCreateUserStatItemParams) WithStatCode(statCode string) *PublicCreateUserStatItemParams {
	o.SetStatCode(statCode)
	return o
}

// SetStatCode adds the statCode to the public create user stat item params
func (o *PublicCreateUserStatItemParams) SetStatCode(statCode string) {
	o.StatCode = statCode
}

// WithUserID adds the userID to the public create user stat item params
func (o *PublicCreateUserStatItemParams) WithUserID(userID string) *PublicCreateUserStatItemParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the public create user stat item params
func (o *PublicCreateUserStatItemParams) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *PublicCreateUserStatItemParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
