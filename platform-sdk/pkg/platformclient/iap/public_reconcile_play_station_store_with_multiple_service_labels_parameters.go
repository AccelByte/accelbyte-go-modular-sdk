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

// NewPublicReconcilePlayStationStoreWithMultipleServiceLabelsParams creates a new PublicReconcilePlayStationStoreWithMultipleServiceLabelsParams object
// with the default values initialized.
func NewPublicReconcilePlayStationStoreWithMultipleServiceLabelsParams() *PublicReconcilePlayStationStoreWithMultipleServiceLabelsParams {
	var ()
	return &PublicReconcilePlayStationStoreWithMultipleServiceLabelsParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewPublicReconcilePlayStationStoreWithMultipleServiceLabelsParamsWithTimeout creates a new PublicReconcilePlayStationStoreWithMultipleServiceLabelsParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewPublicReconcilePlayStationStoreWithMultipleServiceLabelsParamsWithTimeout(timeout time.Duration) *PublicReconcilePlayStationStoreWithMultipleServiceLabelsParams {
	var ()
	return &PublicReconcilePlayStationStoreWithMultipleServiceLabelsParams{

		timeout: timeout,
	}
}

// NewPublicReconcilePlayStationStoreWithMultipleServiceLabelsParamsWithContext creates a new PublicReconcilePlayStationStoreWithMultipleServiceLabelsParams object
// with the default values initialized, and the ability to set a context for a request
func NewPublicReconcilePlayStationStoreWithMultipleServiceLabelsParamsWithContext(ctx context.Context) *PublicReconcilePlayStationStoreWithMultipleServiceLabelsParams {
	var ()
	return &PublicReconcilePlayStationStoreWithMultipleServiceLabelsParams{

		Context: ctx,
	}
}

// NewPublicReconcilePlayStationStoreWithMultipleServiceLabelsParamsWithHTTPClient creates a new PublicReconcilePlayStationStoreWithMultipleServiceLabelsParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPublicReconcilePlayStationStoreWithMultipleServiceLabelsParamsWithHTTPClient(client *http.Client) *PublicReconcilePlayStationStoreWithMultipleServiceLabelsParams {
	var ()
	return &PublicReconcilePlayStationStoreWithMultipleServiceLabelsParams{
		HTTPClient: client,
	}
}

/*
PublicReconcilePlayStationStoreWithMultipleServiceLabelsParams contains all the parameters to send to the API endpoint
for the public reconcile play station store with multiple service labels operation typically these are written to a http.Request
*/
type PublicReconcilePlayStationStoreWithMultipleServiceLabelsParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *platformclientmodels.PlayStationMultiServiceLabelsReconcileRequest
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

// WithTimeout adds the timeout to the public reconcile play station store with multiple service labels params
func (o *PublicReconcilePlayStationStoreWithMultipleServiceLabelsParams) WithTimeout(timeout time.Duration) *PublicReconcilePlayStationStoreWithMultipleServiceLabelsParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the public reconcile play station store with multiple service labels params
func (o *PublicReconcilePlayStationStoreWithMultipleServiceLabelsParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the public reconcile play station store with multiple service labels params
func (o *PublicReconcilePlayStationStoreWithMultipleServiceLabelsParams) WithContext(ctx context.Context) *PublicReconcilePlayStationStoreWithMultipleServiceLabelsParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the public reconcile play station store with multiple service labels params
func (o *PublicReconcilePlayStationStoreWithMultipleServiceLabelsParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the public reconcile play station store with multiple service labels params
func (o *PublicReconcilePlayStationStoreWithMultipleServiceLabelsParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the public reconcile play station store with multiple service labels params
func (o *PublicReconcilePlayStationStoreWithMultipleServiceLabelsParams) WithHTTPClient(client *http.Client) *PublicReconcilePlayStationStoreWithMultipleServiceLabelsParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the public reconcile play station store with multiple service labels params
func (o *PublicReconcilePlayStationStoreWithMultipleServiceLabelsParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the public reconcile play station store with multiple service labels params
func (o *PublicReconcilePlayStationStoreWithMultipleServiceLabelsParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *PublicReconcilePlayStationStoreWithMultipleServiceLabelsParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the public reconcile play station store with multiple service labels params
func (o *PublicReconcilePlayStationStoreWithMultipleServiceLabelsParams) WithBody(body *platformclientmodels.PlayStationMultiServiceLabelsReconcileRequest) *PublicReconcilePlayStationStoreWithMultipleServiceLabelsParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the public reconcile play station store with multiple service labels params
func (o *PublicReconcilePlayStationStoreWithMultipleServiceLabelsParams) SetBody(body *platformclientmodels.PlayStationMultiServiceLabelsReconcileRequest) {
	o.Body = body
}

// WithNamespace adds the namespace to the public reconcile play station store with multiple service labels params
func (o *PublicReconcilePlayStationStoreWithMultipleServiceLabelsParams) WithNamespace(namespace string) *PublicReconcilePlayStationStoreWithMultipleServiceLabelsParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the public reconcile play station store with multiple service labels params
func (o *PublicReconcilePlayStationStoreWithMultipleServiceLabelsParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the public reconcile play station store with multiple service labels params
func (o *PublicReconcilePlayStationStoreWithMultipleServiceLabelsParams) WithUserID(userID string) *PublicReconcilePlayStationStoreWithMultipleServiceLabelsParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the public reconcile play station store with multiple service labels params
func (o *PublicReconcilePlayStationStoreWithMultipleServiceLabelsParams) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *PublicReconcilePlayStationStoreWithMultipleServiceLabelsParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
