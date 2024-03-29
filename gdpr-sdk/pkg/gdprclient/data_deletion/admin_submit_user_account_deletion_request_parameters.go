// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package data_deletion

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

// NewAdminSubmitUserAccountDeletionRequestParams creates a new AdminSubmitUserAccountDeletionRequestParams object
// with the default values initialized.
func NewAdminSubmitUserAccountDeletionRequestParams() *AdminSubmitUserAccountDeletionRequestParams {
	var ()
	return &AdminSubmitUserAccountDeletionRequestParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminSubmitUserAccountDeletionRequestParamsWithTimeout creates a new AdminSubmitUserAccountDeletionRequestParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminSubmitUserAccountDeletionRequestParamsWithTimeout(timeout time.Duration) *AdminSubmitUserAccountDeletionRequestParams {
	var ()
	return &AdminSubmitUserAccountDeletionRequestParams{

		timeout: timeout,
	}
}

// NewAdminSubmitUserAccountDeletionRequestParamsWithContext creates a new AdminSubmitUserAccountDeletionRequestParams object
// with the default values initialized, and the ability to set a context for a request
func NewAdminSubmitUserAccountDeletionRequestParamsWithContext(ctx context.Context) *AdminSubmitUserAccountDeletionRequestParams {
	var ()
	return &AdminSubmitUserAccountDeletionRequestParams{

		Context: ctx,
	}
}

// NewAdminSubmitUserAccountDeletionRequestParamsWithHTTPClient creates a new AdminSubmitUserAccountDeletionRequestParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminSubmitUserAccountDeletionRequestParamsWithHTTPClient(client *http.Client) *AdminSubmitUserAccountDeletionRequestParams {
	var ()
	return &AdminSubmitUserAccountDeletionRequestParams{
		HTTPClient: client,
	}
}

/*AdminSubmitUserAccountDeletionRequestParams contains all the parameters to send to the API endpoint
for the admin submit user account deletion request operation typically these are written to a http.Request
*/
type AdminSubmitUserAccountDeletionRequestParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  namespace

	*/
	Namespace string
	/*UserID
	  IAM ID of the user

	*/
	UserID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the admin submit user account deletion request params
func (o *AdminSubmitUserAccountDeletionRequestParams) WithTimeout(timeout time.Duration) *AdminSubmitUserAccountDeletionRequestParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin submit user account deletion request params
func (o *AdminSubmitUserAccountDeletionRequestParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin submit user account deletion request params
func (o *AdminSubmitUserAccountDeletionRequestParams) WithContext(ctx context.Context) *AdminSubmitUserAccountDeletionRequestParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin submit user account deletion request params
func (o *AdminSubmitUserAccountDeletionRequestParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin submit user account deletion request params
func (o *AdminSubmitUserAccountDeletionRequestParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin submit user account deletion request params
func (o *AdminSubmitUserAccountDeletionRequestParams) WithHTTPClient(client *http.Client) *AdminSubmitUserAccountDeletionRequestParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin submit user account deletion request params
func (o *AdminSubmitUserAccountDeletionRequestParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin submit user account deletion request params
func (o *AdminSubmitUserAccountDeletionRequestParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *AdminSubmitUserAccountDeletionRequestParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the admin submit user account deletion request params
func (o *AdminSubmitUserAccountDeletionRequestParams) WithNamespace(namespace string) *AdminSubmitUserAccountDeletionRequestParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin submit user account deletion request params
func (o *AdminSubmitUserAccountDeletionRequestParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the admin submit user account deletion request params
func (o *AdminSubmitUserAccountDeletionRequestParams) WithUserID(userID string) *AdminSubmitUserAccountDeletionRequestParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the admin submit user account deletion request params
func (o *AdminSubmitUserAccountDeletionRequestParams) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *AdminSubmitUserAccountDeletionRequestParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
