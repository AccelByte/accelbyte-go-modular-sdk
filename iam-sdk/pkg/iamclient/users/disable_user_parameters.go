// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package users

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-modular-sdk/iam-sdk/pkg/iamclientmodels"
)

// NewDisableUserParams creates a new DisableUserParams object
// with the default values initialized.
func NewDisableUserParams() *DisableUserParams {
	var ()
	return &DisableUserParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewDisableUserParamsWithTimeout creates a new DisableUserParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewDisableUserParamsWithTimeout(timeout time.Duration) *DisableUserParams {
	var ()
	return &DisableUserParams{

		timeout: timeout,
	}
}

// NewDisableUserParamsWithContext creates a new DisableUserParams object
// with the default values initialized, and the ability to set a context for a request
func NewDisableUserParamsWithContext(ctx context.Context) *DisableUserParams {
	var ()
	return &DisableUserParams{

		Context: ctx,
	}
}

// NewDisableUserParamsWithHTTPClient creates a new DisableUserParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewDisableUserParamsWithHTTPClient(client *http.Client) *DisableUserParams {
	var ()
	return &DisableUserParams{
		HTTPClient: client,
	}
}

/*DisableUserParams contains all the parameters to send to the API endpoint
for the disable user operation typically these are written to a http.Request
*/
type DisableUserParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *iamclientmodels.ModelDisableUserRequest
	/*Namespace
	  Namespace, only accept alphabet and numeric

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

// WithTimeout adds the timeout to the disable user params
func (o *DisableUserParams) WithTimeout(timeout time.Duration) *DisableUserParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the disable user params
func (o *DisableUserParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the disable user params
func (o *DisableUserParams) WithContext(ctx context.Context) *DisableUserParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the disable user params
func (o *DisableUserParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the disable user params
func (o *DisableUserParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the disable user params
func (o *DisableUserParams) WithHTTPClient(client *http.Client) *DisableUserParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the disable user params
func (o *DisableUserParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the disable user params
func (o *DisableUserParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *DisableUserParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the disable user params
func (o *DisableUserParams) WithBody(body *iamclientmodels.ModelDisableUserRequest) *DisableUserParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the disable user params
func (o *DisableUserParams) SetBody(body *iamclientmodels.ModelDisableUserRequest) {
	o.Body = body
}

// WithNamespace adds the namespace to the disable user params
func (o *DisableUserParams) WithNamespace(namespace string) *DisableUserParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the disable user params
func (o *DisableUserParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the disable user params
func (o *DisableUserParams) WithUserID(userID string) *DisableUserParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the disable user params
func (o *DisableUserParams) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *DisableUserParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
