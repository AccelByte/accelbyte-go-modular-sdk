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

// NewBulkResetUserStatItem2Params creates a new BulkResetUserStatItem2Params object
// with the default values initialized.
func NewBulkResetUserStatItem2Params() *BulkResetUserStatItem2Params {
	var ()
	return &BulkResetUserStatItem2Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewBulkResetUserStatItem2ParamsWithTimeout creates a new BulkResetUserStatItem2Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewBulkResetUserStatItem2ParamsWithTimeout(timeout time.Duration) *BulkResetUserStatItem2Params {
	var ()
	return &BulkResetUserStatItem2Params{

		timeout: timeout,
	}
}

// NewBulkResetUserStatItem2ParamsWithContext creates a new BulkResetUserStatItem2Params object
// with the default values initialized, and the ability to set a context for a request
func NewBulkResetUserStatItem2ParamsWithContext(ctx context.Context) *BulkResetUserStatItem2Params {
	var ()
	return &BulkResetUserStatItem2Params{

		Context: ctx,
	}
}

// NewBulkResetUserStatItem2ParamsWithHTTPClient creates a new BulkResetUserStatItem2Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewBulkResetUserStatItem2ParamsWithHTTPClient(client *http.Client) *BulkResetUserStatItem2Params {
	var ()
	return &BulkResetUserStatItem2Params{
		HTTPClient: client,
	}
}

/*BulkResetUserStatItem2Params contains all the parameters to send to the API endpoint
for the bulk reset user stat item 2 operation typically these are written to a http.Request
*/
type BulkResetUserStatItem2Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body []*socialclientmodels.BulkUserStatItemReset
	/*Namespace
	  namespace

	*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the bulk reset user stat item 2 params
func (o *BulkResetUserStatItem2Params) WithTimeout(timeout time.Duration) *BulkResetUserStatItem2Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the bulk reset user stat item 2 params
func (o *BulkResetUserStatItem2Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the bulk reset user stat item 2 params
func (o *BulkResetUserStatItem2Params) WithContext(ctx context.Context) *BulkResetUserStatItem2Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the bulk reset user stat item 2 params
func (o *BulkResetUserStatItem2Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the bulk reset user stat item 2 params
func (o *BulkResetUserStatItem2Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the bulk reset user stat item 2 params
func (o *BulkResetUserStatItem2Params) WithHTTPClient(client *http.Client) *BulkResetUserStatItem2Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the bulk reset user stat item 2 params
func (o *BulkResetUserStatItem2Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the bulk reset user stat item 2 params
func (o *BulkResetUserStatItem2Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *BulkResetUserStatItem2Params) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the bulk reset user stat item 2 params
func (o *BulkResetUserStatItem2Params) WithBody(body []*socialclientmodels.BulkUserStatItemReset) *BulkResetUserStatItem2Params {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the bulk reset user stat item 2 params
func (o *BulkResetUserStatItem2Params) SetBody(body []*socialclientmodels.BulkUserStatItemReset) {
	o.Body = body
}

// WithNamespace adds the namespace to the bulk reset user stat item 2 params
func (o *BulkResetUserStatItem2Params) WithNamespace(namespace string) *BulkResetUserStatItem2Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the bulk reset user stat item 2 params
func (o *BulkResetUserStatItem2Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *BulkResetUserStatItem2Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
