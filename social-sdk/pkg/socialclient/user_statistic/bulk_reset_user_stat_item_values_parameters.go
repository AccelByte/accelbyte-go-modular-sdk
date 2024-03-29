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

	"github.com/AccelByte/accelbyte-go-modular-sdk/social-sdk/pkg/socialclientmodels"
)

// NewBulkResetUserStatItemValuesParams creates a new BulkResetUserStatItemValuesParams object
// with the default values initialized.
func NewBulkResetUserStatItemValuesParams() *BulkResetUserStatItemValuesParams {
	var ()
	return &BulkResetUserStatItemValuesParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewBulkResetUserStatItemValuesParamsWithTimeout creates a new BulkResetUserStatItemValuesParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewBulkResetUserStatItemValuesParamsWithTimeout(timeout time.Duration) *BulkResetUserStatItemValuesParams {
	var ()
	return &BulkResetUserStatItemValuesParams{

		timeout: timeout,
	}
}

// NewBulkResetUserStatItemValuesParamsWithContext creates a new BulkResetUserStatItemValuesParams object
// with the default values initialized, and the ability to set a context for a request
func NewBulkResetUserStatItemValuesParamsWithContext(ctx context.Context) *BulkResetUserStatItemValuesParams {
	var ()
	return &BulkResetUserStatItemValuesParams{

		Context: ctx,
	}
}

// NewBulkResetUserStatItemValuesParamsWithHTTPClient creates a new BulkResetUserStatItemValuesParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewBulkResetUserStatItemValuesParamsWithHTTPClient(client *http.Client) *BulkResetUserStatItemValuesParams {
	var ()
	return &BulkResetUserStatItemValuesParams{
		HTTPClient: client,
	}
}

/*BulkResetUserStatItemValuesParams contains all the parameters to send to the API endpoint
for the bulk reset user stat item values operation typically these are written to a http.Request
*/
type BulkResetUserStatItemValuesParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body []*socialclientmodels.ADTOObjectForResettingUserStatItems
	/*Namespace
	  namespace

	*/
	Namespace string
	/*UserID
	  user ID

	*/
	UserID string
	/*AdditionalKey
	  additional key

	*/
	AdditionalKey *string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the bulk reset user stat item values params
func (o *BulkResetUserStatItemValuesParams) WithTimeout(timeout time.Duration) *BulkResetUserStatItemValuesParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the bulk reset user stat item values params
func (o *BulkResetUserStatItemValuesParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the bulk reset user stat item values params
func (o *BulkResetUserStatItemValuesParams) WithContext(ctx context.Context) *BulkResetUserStatItemValuesParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the bulk reset user stat item values params
func (o *BulkResetUserStatItemValuesParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the bulk reset user stat item values params
func (o *BulkResetUserStatItemValuesParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the bulk reset user stat item values params
func (o *BulkResetUserStatItemValuesParams) WithHTTPClient(client *http.Client) *BulkResetUserStatItemValuesParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the bulk reset user stat item values params
func (o *BulkResetUserStatItemValuesParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the bulk reset user stat item values params
func (o *BulkResetUserStatItemValuesParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *BulkResetUserStatItemValuesParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the bulk reset user stat item values params
func (o *BulkResetUserStatItemValuesParams) WithBody(body []*socialclientmodels.ADTOObjectForResettingUserStatItems) *BulkResetUserStatItemValuesParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the bulk reset user stat item values params
func (o *BulkResetUserStatItemValuesParams) SetBody(body []*socialclientmodels.ADTOObjectForResettingUserStatItems) {
	o.Body = body
}

// WithNamespace adds the namespace to the bulk reset user stat item values params
func (o *BulkResetUserStatItemValuesParams) WithNamespace(namespace string) *BulkResetUserStatItemValuesParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the bulk reset user stat item values params
func (o *BulkResetUserStatItemValuesParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the bulk reset user stat item values params
func (o *BulkResetUserStatItemValuesParams) WithUserID(userID string) *BulkResetUserStatItemValuesParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the bulk reset user stat item values params
func (o *BulkResetUserStatItemValuesParams) SetUserID(userID string) {
	o.UserID = userID
}

// WithAdditionalKey adds the additionalKey to the bulk reset user stat item values params
func (o *BulkResetUserStatItemValuesParams) WithAdditionalKey(additionalKey *string) *BulkResetUserStatItemValuesParams {
	o.SetAdditionalKey(additionalKey)
	return o
}

// SetAdditionalKey adds the additionalKey to the bulk reset user stat item values params
func (o *BulkResetUserStatItemValuesParams) SetAdditionalKey(additionalKey *string) {
	o.AdditionalKey = additionalKey
}

// WriteToRequest writes these params to a swagger request
func (o *BulkResetUserStatItemValuesParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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

	if o.AdditionalKey != nil {

		// query param additionalKey
		var qrAdditionalKey string
		if o.AdditionalKey != nil {
			qrAdditionalKey = *o.AdditionalKey
		}
		qAdditionalKey := qrAdditionalKey
		if qAdditionalKey != "" {
			if err := r.SetQueryParam("additionalKey", qAdditionalKey); err != nil {
				return err
			}
		}

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
