// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package global_statistic

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

// NewGetGlobalStatItemByStatCodeParams creates a new GetGlobalStatItemByStatCodeParams object
// with the default values initialized.
func NewGetGlobalStatItemByStatCodeParams() *GetGlobalStatItemByStatCodeParams {
	var ()
	return &GetGlobalStatItemByStatCodeParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewGetGlobalStatItemByStatCodeParamsWithTimeout creates a new GetGlobalStatItemByStatCodeParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewGetGlobalStatItemByStatCodeParamsWithTimeout(timeout time.Duration) *GetGlobalStatItemByStatCodeParams {
	var ()
	return &GetGlobalStatItemByStatCodeParams{

		timeout: timeout,
	}
}

// NewGetGlobalStatItemByStatCodeParamsWithContext creates a new GetGlobalStatItemByStatCodeParams object
// with the default values initialized, and the ability to set a context for a request
func NewGetGlobalStatItemByStatCodeParamsWithContext(ctx context.Context) *GetGlobalStatItemByStatCodeParams {
	var ()
	return &GetGlobalStatItemByStatCodeParams{

		Context: ctx,
	}
}

// NewGetGlobalStatItemByStatCodeParamsWithHTTPClient creates a new GetGlobalStatItemByStatCodeParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewGetGlobalStatItemByStatCodeParamsWithHTTPClient(client *http.Client) *GetGlobalStatItemByStatCodeParams {
	var ()
	return &GetGlobalStatItemByStatCodeParams{
		HTTPClient: client,
	}
}

/*GetGlobalStatItemByStatCodeParams contains all the parameters to send to the API endpoint
for the get global stat item by stat code operation typically these are written to a http.Request
*/
type GetGlobalStatItemByStatCodeParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  namespace

	*/
	Namespace string
	/*StatCode
	  stat Code

	*/
	StatCode string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the get global stat item by stat code params
func (o *GetGlobalStatItemByStatCodeParams) WithTimeout(timeout time.Duration) *GetGlobalStatItemByStatCodeParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the get global stat item by stat code params
func (o *GetGlobalStatItemByStatCodeParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the get global stat item by stat code params
func (o *GetGlobalStatItemByStatCodeParams) WithContext(ctx context.Context) *GetGlobalStatItemByStatCodeParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the get global stat item by stat code params
func (o *GetGlobalStatItemByStatCodeParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the get global stat item by stat code params
func (o *GetGlobalStatItemByStatCodeParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the get global stat item by stat code params
func (o *GetGlobalStatItemByStatCodeParams) WithHTTPClient(client *http.Client) *GetGlobalStatItemByStatCodeParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the get global stat item by stat code params
func (o *GetGlobalStatItemByStatCodeParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the get global stat item by stat code params
func (o *GetGlobalStatItemByStatCodeParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *GetGlobalStatItemByStatCodeParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the get global stat item by stat code params
func (o *GetGlobalStatItemByStatCodeParams) WithNamespace(namespace string) *GetGlobalStatItemByStatCodeParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the get global stat item by stat code params
func (o *GetGlobalStatItemByStatCodeParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithStatCode adds the statCode to the get global stat item by stat code params
func (o *GetGlobalStatItemByStatCodeParams) WithStatCode(statCode string) *GetGlobalStatItemByStatCodeParams {
	o.SetStatCode(statCode)
	return o
}

// SetStatCode adds the statCode to the get global stat item by stat code params
func (o *GetGlobalStatItemByStatCodeParams) SetStatCode(statCode string) {
	o.StatCode = statCode
}

// WriteToRequest writes these params to a swagger request
func (o *GetGlobalStatItemByStatCodeParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	// path param statCode
	if err := r.SetPathParam("statCode", o.StatCode); err != nil {
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
