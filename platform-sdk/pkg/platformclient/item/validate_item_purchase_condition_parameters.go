// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package item

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

// NewValidateItemPurchaseConditionParams creates a new ValidateItemPurchaseConditionParams object
// with the default values initialized.
func NewValidateItemPurchaseConditionParams() *ValidateItemPurchaseConditionParams {
	var ()
	return &ValidateItemPurchaseConditionParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewValidateItemPurchaseConditionParamsWithTimeout creates a new ValidateItemPurchaseConditionParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewValidateItemPurchaseConditionParamsWithTimeout(timeout time.Duration) *ValidateItemPurchaseConditionParams {
	var ()
	return &ValidateItemPurchaseConditionParams{

		timeout: timeout,
	}
}

// NewValidateItemPurchaseConditionParamsWithContext creates a new ValidateItemPurchaseConditionParams object
// with the default values initialized, and the ability to set a context for a request
func NewValidateItemPurchaseConditionParamsWithContext(ctx context.Context) *ValidateItemPurchaseConditionParams {
	var ()
	return &ValidateItemPurchaseConditionParams{

		Context: ctx,
	}
}

// NewValidateItemPurchaseConditionParamsWithHTTPClient creates a new ValidateItemPurchaseConditionParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewValidateItemPurchaseConditionParamsWithHTTPClient(client *http.Client) *ValidateItemPurchaseConditionParams {
	var ()
	return &ValidateItemPurchaseConditionParams{
		HTTPClient: client,
	}
}

/*ValidateItemPurchaseConditionParams contains all the parameters to send to the API endpoint
for the validate item purchase condition operation typically these are written to a http.Request
*/
type ValidateItemPurchaseConditionParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *platformclientmodels.ItemPurchaseConditionValidateRequest
	/*Namespace*/
	Namespace string
	/*Platform*/
	Platform *string
	/*UserID*/
	UserID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the validate item purchase condition params
func (o *ValidateItemPurchaseConditionParams) WithTimeout(timeout time.Duration) *ValidateItemPurchaseConditionParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the validate item purchase condition params
func (o *ValidateItemPurchaseConditionParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the validate item purchase condition params
func (o *ValidateItemPurchaseConditionParams) WithContext(ctx context.Context) *ValidateItemPurchaseConditionParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the validate item purchase condition params
func (o *ValidateItemPurchaseConditionParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the validate item purchase condition params
func (o *ValidateItemPurchaseConditionParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the validate item purchase condition params
func (o *ValidateItemPurchaseConditionParams) WithHTTPClient(client *http.Client) *ValidateItemPurchaseConditionParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the validate item purchase condition params
func (o *ValidateItemPurchaseConditionParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the validate item purchase condition params
func (o *ValidateItemPurchaseConditionParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *ValidateItemPurchaseConditionParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the validate item purchase condition params
func (o *ValidateItemPurchaseConditionParams) WithBody(body *platformclientmodels.ItemPurchaseConditionValidateRequest) *ValidateItemPurchaseConditionParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the validate item purchase condition params
func (o *ValidateItemPurchaseConditionParams) SetBody(body *platformclientmodels.ItemPurchaseConditionValidateRequest) {
	o.Body = body
}

// WithNamespace adds the namespace to the validate item purchase condition params
func (o *ValidateItemPurchaseConditionParams) WithNamespace(namespace string) *ValidateItemPurchaseConditionParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the validate item purchase condition params
func (o *ValidateItemPurchaseConditionParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithPlatform adds the platform to the validate item purchase condition params
func (o *ValidateItemPurchaseConditionParams) WithPlatform(platform *string) *ValidateItemPurchaseConditionParams {
	o.SetPlatform(platform)
	return o
}

// SetPlatform adds the platform to the validate item purchase condition params
func (o *ValidateItemPurchaseConditionParams) SetPlatform(platform *string) {
	o.Platform = platform
}

// WithUserID adds the userID to the validate item purchase condition params
func (o *ValidateItemPurchaseConditionParams) WithUserID(userID string) *ValidateItemPurchaseConditionParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the validate item purchase condition params
func (o *ValidateItemPurchaseConditionParams) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *ValidateItemPurchaseConditionParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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

	if o.Platform != nil {

		// query param platform
		var qrPlatform string
		if o.Platform != nil {
			qrPlatform = *o.Platform
		}
		qPlatform := qrPlatform
		if qPlatform != "" {
			if err := r.SetQueryParam("platform", qPlatform); err != nil {
				return err
			}
		}

	}

	// query param userId
	qrUserID := o.UserID
	qUserID := qrUserID
	if qUserID != "" {
		if err := r.SetQueryParam("userId", qUserID); err != nil {
			return err
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
