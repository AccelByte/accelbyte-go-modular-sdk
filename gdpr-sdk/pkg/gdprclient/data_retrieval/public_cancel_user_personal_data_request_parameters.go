// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package data_retrieval

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

// NewPublicCancelUserPersonalDataRequestParams creates a new PublicCancelUserPersonalDataRequestParams object
// with the default values initialized.
func NewPublicCancelUserPersonalDataRequestParams() *PublicCancelUserPersonalDataRequestParams {
	var ()
	return &PublicCancelUserPersonalDataRequestParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewPublicCancelUserPersonalDataRequestParamsWithTimeout creates a new PublicCancelUserPersonalDataRequestParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewPublicCancelUserPersonalDataRequestParamsWithTimeout(timeout time.Duration) *PublicCancelUserPersonalDataRequestParams {
	var ()
	return &PublicCancelUserPersonalDataRequestParams{

		timeout: timeout,
	}
}

// NewPublicCancelUserPersonalDataRequestParamsWithContext creates a new PublicCancelUserPersonalDataRequestParams object
// with the default values initialized, and the ability to set a context for a request
func NewPublicCancelUserPersonalDataRequestParamsWithContext(ctx context.Context) *PublicCancelUserPersonalDataRequestParams {
	var ()
	return &PublicCancelUserPersonalDataRequestParams{

		Context: ctx,
	}
}

// NewPublicCancelUserPersonalDataRequestParamsWithHTTPClient creates a new PublicCancelUserPersonalDataRequestParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPublicCancelUserPersonalDataRequestParamsWithHTTPClient(client *http.Client) *PublicCancelUserPersonalDataRequestParams {
	var ()
	return &PublicCancelUserPersonalDataRequestParams{
		HTTPClient: client,
	}
}

/*PublicCancelUserPersonalDataRequestParams contains all the parameters to send to the API endpoint
for the public cancel user personal data request operation typically these are written to a http.Request
*/
type PublicCancelUserPersonalDataRequestParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  namespace of the user

	*/
	Namespace string
	/*RequestDate
	  Request date in RFC3339 format

	*/
	RequestDate string
	/*UserID
	  IAM id of the user

	*/
	UserID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the public cancel user personal data request params
func (o *PublicCancelUserPersonalDataRequestParams) WithTimeout(timeout time.Duration) *PublicCancelUserPersonalDataRequestParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the public cancel user personal data request params
func (o *PublicCancelUserPersonalDataRequestParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the public cancel user personal data request params
func (o *PublicCancelUserPersonalDataRequestParams) WithContext(ctx context.Context) *PublicCancelUserPersonalDataRequestParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the public cancel user personal data request params
func (o *PublicCancelUserPersonalDataRequestParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the public cancel user personal data request params
func (o *PublicCancelUserPersonalDataRequestParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the public cancel user personal data request params
func (o *PublicCancelUserPersonalDataRequestParams) WithHTTPClient(client *http.Client) *PublicCancelUserPersonalDataRequestParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the public cancel user personal data request params
func (o *PublicCancelUserPersonalDataRequestParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the public cancel user personal data request params
func (o *PublicCancelUserPersonalDataRequestParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *PublicCancelUserPersonalDataRequestParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the public cancel user personal data request params
func (o *PublicCancelUserPersonalDataRequestParams) WithNamespace(namespace string) *PublicCancelUserPersonalDataRequestParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the public cancel user personal data request params
func (o *PublicCancelUserPersonalDataRequestParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithRequestDate adds the requestDate to the public cancel user personal data request params
func (o *PublicCancelUserPersonalDataRequestParams) WithRequestDate(requestDate string) *PublicCancelUserPersonalDataRequestParams {
	o.SetRequestDate(requestDate)
	return o
}

// SetRequestDate adds the requestDate to the public cancel user personal data request params
func (o *PublicCancelUserPersonalDataRequestParams) SetRequestDate(requestDate string) {
	o.RequestDate = requestDate
}

// WithUserID adds the userID to the public cancel user personal data request params
func (o *PublicCancelUserPersonalDataRequestParams) WithUserID(userID string) *PublicCancelUserPersonalDataRequestParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the public cancel user personal data request params
func (o *PublicCancelUserPersonalDataRequestParams) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *PublicCancelUserPersonalDataRequestParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	// path param requestDate
	if err := r.SetPathParam("requestDate", o.RequestDate); err != nil {
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
