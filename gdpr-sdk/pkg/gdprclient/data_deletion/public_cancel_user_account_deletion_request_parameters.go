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

// NewPublicCancelUserAccountDeletionRequestParams creates a new PublicCancelUserAccountDeletionRequestParams object
// with the default values initialized.
func NewPublicCancelUserAccountDeletionRequestParams() *PublicCancelUserAccountDeletionRequestParams {
	var ()
	return &PublicCancelUserAccountDeletionRequestParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewPublicCancelUserAccountDeletionRequestParamsWithTimeout creates a new PublicCancelUserAccountDeletionRequestParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewPublicCancelUserAccountDeletionRequestParamsWithTimeout(timeout time.Duration) *PublicCancelUserAccountDeletionRequestParams {
	var ()
	return &PublicCancelUserAccountDeletionRequestParams{

		timeout: timeout,
	}
}

// NewPublicCancelUserAccountDeletionRequestParamsWithContext creates a new PublicCancelUserAccountDeletionRequestParams object
// with the default values initialized, and the ability to set a context for a request
func NewPublicCancelUserAccountDeletionRequestParamsWithContext(ctx context.Context) *PublicCancelUserAccountDeletionRequestParams {
	var ()
	return &PublicCancelUserAccountDeletionRequestParams{

		Context: ctx,
	}
}

// NewPublicCancelUserAccountDeletionRequestParamsWithHTTPClient creates a new PublicCancelUserAccountDeletionRequestParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPublicCancelUserAccountDeletionRequestParamsWithHTTPClient(client *http.Client) *PublicCancelUserAccountDeletionRequestParams {
	var ()
	return &PublicCancelUserAccountDeletionRequestParams{
		HTTPClient: client,
	}
}

/*PublicCancelUserAccountDeletionRequestParams contains all the parameters to send to the API endpoint
for the public cancel user account deletion request operation typically these are written to a http.Request
*/
type PublicCancelUserAccountDeletionRequestParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  namespace of the user

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

// WithTimeout adds the timeout to the public cancel user account deletion request params
func (o *PublicCancelUserAccountDeletionRequestParams) WithTimeout(timeout time.Duration) *PublicCancelUserAccountDeletionRequestParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the public cancel user account deletion request params
func (o *PublicCancelUserAccountDeletionRequestParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the public cancel user account deletion request params
func (o *PublicCancelUserAccountDeletionRequestParams) WithContext(ctx context.Context) *PublicCancelUserAccountDeletionRequestParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the public cancel user account deletion request params
func (o *PublicCancelUserAccountDeletionRequestParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the public cancel user account deletion request params
func (o *PublicCancelUserAccountDeletionRequestParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the public cancel user account deletion request params
func (o *PublicCancelUserAccountDeletionRequestParams) WithHTTPClient(client *http.Client) *PublicCancelUserAccountDeletionRequestParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the public cancel user account deletion request params
func (o *PublicCancelUserAccountDeletionRequestParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the public cancel user account deletion request params
func (o *PublicCancelUserAccountDeletionRequestParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *PublicCancelUserAccountDeletionRequestParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the public cancel user account deletion request params
func (o *PublicCancelUserAccountDeletionRequestParams) WithNamespace(namespace string) *PublicCancelUserAccountDeletionRequestParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the public cancel user account deletion request params
func (o *PublicCancelUserAccountDeletionRequestParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the public cancel user account deletion request params
func (o *PublicCancelUserAccountDeletionRequestParams) WithUserID(userID string) *PublicCancelUserAccountDeletionRequestParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the public cancel user account deletion request params
func (o *PublicCancelUserAccountDeletionRequestParams) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *PublicCancelUserAccountDeletionRequestParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
