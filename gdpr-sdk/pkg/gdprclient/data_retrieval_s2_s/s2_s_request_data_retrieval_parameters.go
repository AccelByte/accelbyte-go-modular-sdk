// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package data_retrieval_s2_s

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

// NewS2SRequestDataRetrievalParams creates a new S2SRequestDataRetrievalParams object
// with the default values initialized.
func NewS2SRequestDataRetrievalParams() *S2SRequestDataRetrievalParams {
	var ()
	return &S2SRequestDataRetrievalParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewS2SRequestDataRetrievalParamsWithTimeout creates a new S2SRequestDataRetrievalParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewS2SRequestDataRetrievalParamsWithTimeout(timeout time.Duration) *S2SRequestDataRetrievalParams {
	var ()
	return &S2SRequestDataRetrievalParams{

		timeout: timeout,
	}
}

// NewS2SRequestDataRetrievalParamsWithContext creates a new S2SRequestDataRetrievalParams object
// with the default values initialized, and the ability to set a context for a request
func NewS2SRequestDataRetrievalParamsWithContext(ctx context.Context) *S2SRequestDataRetrievalParams {
	var ()
	return &S2SRequestDataRetrievalParams{

		Context: ctx,
	}
}

// NewS2SRequestDataRetrievalParamsWithHTTPClient creates a new S2SRequestDataRetrievalParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewS2SRequestDataRetrievalParamsWithHTTPClient(client *http.Client) *S2SRequestDataRetrievalParams {
	var ()
	return &S2SRequestDataRetrievalParams{
		HTTPClient: client,
	}
}

/*S2SRequestDataRetrievalParams contains all the parameters to send to the API endpoint
for the s2s request data retrieval operation typically these are written to a http.Request
*/
type S2SRequestDataRetrievalParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  Publisher Namespace

	*/
	Namespace string
	/*UserID
	  Publisher User Id

	*/
	UserID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the s2s request data retrieval params
func (o *S2SRequestDataRetrievalParams) WithTimeout(timeout time.Duration) *S2SRequestDataRetrievalParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the s2s request data retrieval params
func (o *S2SRequestDataRetrievalParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the s2s request data retrieval params
func (o *S2SRequestDataRetrievalParams) WithContext(ctx context.Context) *S2SRequestDataRetrievalParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the s2s request data retrieval params
func (o *S2SRequestDataRetrievalParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the s2s request data retrieval params
func (o *S2SRequestDataRetrievalParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the s2s request data retrieval params
func (o *S2SRequestDataRetrievalParams) WithHTTPClient(client *http.Client) *S2SRequestDataRetrievalParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the s2s request data retrieval params
func (o *S2SRequestDataRetrievalParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the s2s request data retrieval params
func (o *S2SRequestDataRetrievalParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *S2SRequestDataRetrievalParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the s2s request data retrieval params
func (o *S2SRequestDataRetrievalParams) WithNamespace(namespace string) *S2SRequestDataRetrievalParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the s2s request data retrieval params
func (o *S2SRequestDataRetrievalParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the s2s request data retrieval params
func (o *S2SRequestDataRetrievalParams) WithUserID(userID string) *S2SRequestDataRetrievalParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the s2s request data retrieval params
func (o *S2SRequestDataRetrievalParams) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *S2SRequestDataRetrievalParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
