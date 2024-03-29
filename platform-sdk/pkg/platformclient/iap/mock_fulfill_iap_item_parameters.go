// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package iap

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-modular-sdk/platform-sdk/pkg/platformclientmodels"
)

// NewMockFulfillIAPItemParams creates a new MockFulfillIAPItemParams object
// with the default values initialized.
func NewMockFulfillIAPItemParams() *MockFulfillIAPItemParams {
	var ()
	return &MockFulfillIAPItemParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewMockFulfillIAPItemParamsWithTimeout creates a new MockFulfillIAPItemParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewMockFulfillIAPItemParamsWithTimeout(timeout time.Duration) *MockFulfillIAPItemParams {
	var ()
	return &MockFulfillIAPItemParams{

		timeout: timeout,
	}
}

// NewMockFulfillIAPItemParamsWithContext creates a new MockFulfillIAPItemParams object
// with the default values initialized, and the ability to set a context for a request
func NewMockFulfillIAPItemParamsWithContext(ctx context.Context) *MockFulfillIAPItemParams {
	var ()
	return &MockFulfillIAPItemParams{

		Context: ctx,
	}
}

// NewMockFulfillIAPItemParamsWithHTTPClient creates a new MockFulfillIAPItemParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewMockFulfillIAPItemParamsWithHTTPClient(client *http.Client) *MockFulfillIAPItemParams {
	var ()
	return &MockFulfillIAPItemParams{
		HTTPClient: client,
	}
}

/*MockFulfillIAPItemParams contains all the parameters to send to the API endpoint
for the mock fulfill iap item operation typically these are written to a http.Request
*/
type MockFulfillIAPItemParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *platformclientmodels.MockIAPReceipt
	/*Namespace*/
	Namespace string
	/*UserID*/
	UserID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the mock fulfill iap item params
func (o *MockFulfillIAPItemParams) WithTimeout(timeout time.Duration) *MockFulfillIAPItemParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the mock fulfill iap item params
func (o *MockFulfillIAPItemParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the mock fulfill iap item params
func (o *MockFulfillIAPItemParams) WithContext(ctx context.Context) *MockFulfillIAPItemParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the mock fulfill iap item params
func (o *MockFulfillIAPItemParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the mock fulfill iap item params
func (o *MockFulfillIAPItemParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the mock fulfill iap item params
func (o *MockFulfillIAPItemParams) WithHTTPClient(client *http.Client) *MockFulfillIAPItemParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the mock fulfill iap item params
func (o *MockFulfillIAPItemParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the mock fulfill iap item params
func (o *MockFulfillIAPItemParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *MockFulfillIAPItemParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the mock fulfill iap item params
func (o *MockFulfillIAPItemParams) WithBody(body *platformclientmodels.MockIAPReceipt) *MockFulfillIAPItemParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the mock fulfill iap item params
func (o *MockFulfillIAPItemParams) SetBody(body *platformclientmodels.MockIAPReceipt) {
	o.Body = body
}

// WithNamespace adds the namespace to the mock fulfill iap item params
func (o *MockFulfillIAPItemParams) WithNamespace(namespace string) *MockFulfillIAPItemParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the mock fulfill iap item params
func (o *MockFulfillIAPItemParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the mock fulfill iap item params
func (o *MockFulfillIAPItemParams) WithUserID(userID string) *MockFulfillIAPItemParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the mock fulfill iap item params
func (o *MockFulfillIAPItemParams) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *MockFulfillIAPItemParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
