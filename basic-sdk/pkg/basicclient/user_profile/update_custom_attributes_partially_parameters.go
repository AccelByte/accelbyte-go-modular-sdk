// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package user_profile

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

// NewUpdateCustomAttributesPartiallyParams creates a new UpdateCustomAttributesPartiallyParams object
// with the default values initialized.
func NewUpdateCustomAttributesPartiallyParams() *UpdateCustomAttributesPartiallyParams {
	var ()
	return &UpdateCustomAttributesPartiallyParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewUpdateCustomAttributesPartiallyParamsWithTimeout creates a new UpdateCustomAttributesPartiallyParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewUpdateCustomAttributesPartiallyParamsWithTimeout(timeout time.Duration) *UpdateCustomAttributesPartiallyParams {
	var ()
	return &UpdateCustomAttributesPartiallyParams{

		timeout: timeout,
	}
}

// NewUpdateCustomAttributesPartiallyParamsWithContext creates a new UpdateCustomAttributesPartiallyParams object
// with the default values initialized, and the ability to set a context for a request
func NewUpdateCustomAttributesPartiallyParamsWithContext(ctx context.Context) *UpdateCustomAttributesPartiallyParams {
	var ()
	return &UpdateCustomAttributesPartiallyParams{

		Context: ctx,
	}
}

// NewUpdateCustomAttributesPartiallyParamsWithHTTPClient creates a new UpdateCustomAttributesPartiallyParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewUpdateCustomAttributesPartiallyParamsWithHTTPClient(client *http.Client) *UpdateCustomAttributesPartiallyParams {
	var ()
	return &UpdateCustomAttributesPartiallyParams{
		HTTPClient: client,
	}
}

/*UpdateCustomAttributesPartiallyParams contains all the parameters to send to the API endpoint
for the update custom attributes partially operation typically these are written to a http.Request
*/
type UpdateCustomAttributesPartiallyParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body map[string]interface{}
	/*Namespace
	  namespace, only accept alphabet and numeric

	*/
	Namespace string
	/*UserID
	  user's id, should follow UUID version 4 without hyphen

	*/
	UserID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the update custom attributes partially params
func (o *UpdateCustomAttributesPartiallyParams) WithTimeout(timeout time.Duration) *UpdateCustomAttributesPartiallyParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the update custom attributes partially params
func (o *UpdateCustomAttributesPartiallyParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the update custom attributes partially params
func (o *UpdateCustomAttributesPartiallyParams) WithContext(ctx context.Context) *UpdateCustomAttributesPartiallyParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the update custom attributes partially params
func (o *UpdateCustomAttributesPartiallyParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the update custom attributes partially params
func (o *UpdateCustomAttributesPartiallyParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the update custom attributes partially params
func (o *UpdateCustomAttributesPartiallyParams) WithHTTPClient(client *http.Client) *UpdateCustomAttributesPartiallyParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the update custom attributes partially params
func (o *UpdateCustomAttributesPartiallyParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the update custom attributes partially params
func (o *UpdateCustomAttributesPartiallyParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *UpdateCustomAttributesPartiallyParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the update custom attributes partially params
func (o *UpdateCustomAttributesPartiallyParams) WithBody(body map[string]interface{}) *UpdateCustomAttributesPartiallyParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the update custom attributes partially params
func (o *UpdateCustomAttributesPartiallyParams) SetBody(body map[string]interface{}) {
	o.Body = body
}

// WithNamespace adds the namespace to the update custom attributes partially params
func (o *UpdateCustomAttributesPartiallyParams) WithNamespace(namespace string) *UpdateCustomAttributesPartiallyParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the update custom attributes partially params
func (o *UpdateCustomAttributesPartiallyParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the update custom attributes partially params
func (o *UpdateCustomAttributesPartiallyParams) WithUserID(userID string) *UpdateCustomAttributesPartiallyParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the update custom attributes partially params
func (o *UpdateCustomAttributesPartiallyParams) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *UpdateCustomAttributesPartiallyParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
