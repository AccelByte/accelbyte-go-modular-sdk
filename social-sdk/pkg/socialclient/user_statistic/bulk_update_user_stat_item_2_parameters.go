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

// NewBulkUpdateUserStatItem2Params creates a new BulkUpdateUserStatItem2Params object
// with the default values initialized.
func NewBulkUpdateUserStatItem2Params() *BulkUpdateUserStatItem2Params {
	var ()
	return &BulkUpdateUserStatItem2Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewBulkUpdateUserStatItem2ParamsWithTimeout creates a new BulkUpdateUserStatItem2Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewBulkUpdateUserStatItem2ParamsWithTimeout(timeout time.Duration) *BulkUpdateUserStatItem2Params {
	var ()
	return &BulkUpdateUserStatItem2Params{

		timeout: timeout,
	}
}

// NewBulkUpdateUserStatItem2ParamsWithContext creates a new BulkUpdateUserStatItem2Params object
// with the default values initialized, and the ability to set a context for a request
func NewBulkUpdateUserStatItem2ParamsWithContext(ctx context.Context) *BulkUpdateUserStatItem2Params {
	var ()
	return &BulkUpdateUserStatItem2Params{

		Context: ctx,
	}
}

// NewBulkUpdateUserStatItem2ParamsWithHTTPClient creates a new BulkUpdateUserStatItem2Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewBulkUpdateUserStatItem2ParamsWithHTTPClient(client *http.Client) *BulkUpdateUserStatItem2Params {
	var ()
	return &BulkUpdateUserStatItem2Params{
		HTTPClient: client,
	}
}

/*BulkUpdateUserStatItem2Params contains all the parameters to send to the API endpoint
for the bulk update user stat item 2 operation typically these are written to a http.Request
*/
type BulkUpdateUserStatItem2Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body []*socialclientmodels.BulkStatItemUpdate
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

// WithTimeout adds the timeout to the bulk update user stat item 2 params
func (o *BulkUpdateUserStatItem2Params) WithTimeout(timeout time.Duration) *BulkUpdateUserStatItem2Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the bulk update user stat item 2 params
func (o *BulkUpdateUserStatItem2Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the bulk update user stat item 2 params
func (o *BulkUpdateUserStatItem2Params) WithContext(ctx context.Context) *BulkUpdateUserStatItem2Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the bulk update user stat item 2 params
func (o *BulkUpdateUserStatItem2Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the bulk update user stat item 2 params
func (o *BulkUpdateUserStatItem2Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the bulk update user stat item 2 params
func (o *BulkUpdateUserStatItem2Params) WithHTTPClient(client *http.Client) *BulkUpdateUserStatItem2Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the bulk update user stat item 2 params
func (o *BulkUpdateUserStatItem2Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the bulk update user stat item 2 params
func (o *BulkUpdateUserStatItem2Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *BulkUpdateUserStatItem2Params) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the bulk update user stat item 2 params
func (o *BulkUpdateUserStatItem2Params) WithBody(body []*socialclientmodels.BulkStatItemUpdate) *BulkUpdateUserStatItem2Params {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the bulk update user stat item 2 params
func (o *BulkUpdateUserStatItem2Params) SetBody(body []*socialclientmodels.BulkStatItemUpdate) {
	o.Body = body
}

// WithNamespace adds the namespace to the bulk update user stat item 2 params
func (o *BulkUpdateUserStatItem2Params) WithNamespace(namespace string) *BulkUpdateUserStatItem2Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the bulk update user stat item 2 params
func (o *BulkUpdateUserStatItem2Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the bulk update user stat item 2 params
func (o *BulkUpdateUserStatItem2Params) WithUserID(userID string) *BulkUpdateUserStatItem2Params {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the bulk update user stat item 2 params
func (o *BulkUpdateUserStatItem2Params) SetUserID(userID string) {
	o.UserID = userID
}

// WithAdditionalKey adds the additionalKey to the bulk update user stat item 2 params
func (o *BulkUpdateUserStatItem2Params) WithAdditionalKey(additionalKey *string) *BulkUpdateUserStatItem2Params {
	o.SetAdditionalKey(additionalKey)
	return o
}

// SetAdditionalKey adds the additionalKey to the bulk update user stat item 2 params
func (o *BulkUpdateUserStatItem2Params) SetAdditionalKey(additionalKey *string) {
	o.AdditionalKey = additionalKey
}

// WriteToRequest writes these params to a swagger request
func (o *BulkUpdateUserStatItem2Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
