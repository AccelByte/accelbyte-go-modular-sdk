// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package slot_config

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-modular-sdk/social-sdk/pkg/socialclientmodels"
)

// NewUpdateUserSlotConfigParams creates a new UpdateUserSlotConfigParams object
// with the default values initialized.
func NewUpdateUserSlotConfigParams() *UpdateUserSlotConfigParams {
	var ()
	return &UpdateUserSlotConfigParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewUpdateUserSlotConfigParamsWithTimeout creates a new UpdateUserSlotConfigParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewUpdateUserSlotConfigParamsWithTimeout(timeout time.Duration) *UpdateUserSlotConfigParams {
	var ()
	return &UpdateUserSlotConfigParams{

		timeout: timeout,
	}
}

// NewUpdateUserSlotConfigParamsWithContext creates a new UpdateUserSlotConfigParams object
// with the default values initialized, and the ability to set a context for a request
func NewUpdateUserSlotConfigParamsWithContext(ctx context.Context) *UpdateUserSlotConfigParams {
	var ()
	return &UpdateUserSlotConfigParams{

		Context: ctx,
	}
}

// NewUpdateUserSlotConfigParamsWithHTTPClient creates a new UpdateUserSlotConfigParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewUpdateUserSlotConfigParamsWithHTTPClient(client *http.Client) *UpdateUserSlotConfigParams {
	var ()
	return &UpdateUserSlotConfigParams{
		HTTPClient: client,
	}
}

/*UpdateUserSlotConfigParams contains all the parameters to send to the API endpoint
for the update user slot config operation typically these are written to a http.Request
*/
type UpdateUserSlotConfigParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *socialclientmodels.SlotConfigUpdate
	/*Namespace
	  Namespace ID

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

// WithTimeout adds the timeout to the update user slot config params
func (o *UpdateUserSlotConfigParams) WithTimeout(timeout time.Duration) *UpdateUserSlotConfigParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the update user slot config params
func (o *UpdateUserSlotConfigParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the update user slot config params
func (o *UpdateUserSlotConfigParams) WithContext(ctx context.Context) *UpdateUserSlotConfigParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the update user slot config params
func (o *UpdateUserSlotConfigParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the update user slot config params
func (o *UpdateUserSlotConfigParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the update user slot config params
func (o *UpdateUserSlotConfigParams) WithHTTPClient(client *http.Client) *UpdateUserSlotConfigParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the update user slot config params
func (o *UpdateUserSlotConfigParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the update user slot config params
func (o *UpdateUserSlotConfigParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *UpdateUserSlotConfigParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the update user slot config params
func (o *UpdateUserSlotConfigParams) WithBody(body *socialclientmodels.SlotConfigUpdate) *UpdateUserSlotConfigParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the update user slot config params
func (o *UpdateUserSlotConfigParams) SetBody(body *socialclientmodels.SlotConfigUpdate) {
	o.Body = body
}

// WithNamespace adds the namespace to the update user slot config params
func (o *UpdateUserSlotConfigParams) WithNamespace(namespace string) *UpdateUserSlotConfigParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the update user slot config params
func (o *UpdateUserSlotConfigParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the update user slot config params
func (o *UpdateUserSlotConfigParams) WithUserID(userID string) *UpdateUserSlotConfigParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the update user slot config params
func (o *UpdateUserSlotConfigParams) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *UpdateUserSlotConfigParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
