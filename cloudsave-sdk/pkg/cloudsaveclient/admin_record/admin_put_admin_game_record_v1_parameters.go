// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package admin_record

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-modular-sdk/cloudsave-sdk/pkg/cloudsaveclientmodels"
)

// NewAdminPutAdminGameRecordV1Params creates a new AdminPutAdminGameRecordV1Params object
// with the default values initialized.
func NewAdminPutAdminGameRecordV1Params() *AdminPutAdminGameRecordV1Params {
	var ()
	return &AdminPutAdminGameRecordV1Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminPutAdminGameRecordV1ParamsWithTimeout creates a new AdminPutAdminGameRecordV1Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminPutAdminGameRecordV1ParamsWithTimeout(timeout time.Duration) *AdminPutAdminGameRecordV1Params {
	var ()
	return &AdminPutAdminGameRecordV1Params{

		timeout: timeout,
	}
}

// NewAdminPutAdminGameRecordV1ParamsWithContext creates a new AdminPutAdminGameRecordV1Params object
// with the default values initialized, and the ability to set a context for a request
func NewAdminPutAdminGameRecordV1ParamsWithContext(ctx context.Context) *AdminPutAdminGameRecordV1Params {
	var ()
	return &AdminPutAdminGameRecordV1Params{

		Context: ctx,
	}
}

// NewAdminPutAdminGameRecordV1ParamsWithHTTPClient creates a new AdminPutAdminGameRecordV1Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminPutAdminGameRecordV1ParamsWithHTTPClient(client *http.Client) *AdminPutAdminGameRecordV1Params {
	var ()
	return &AdminPutAdminGameRecordV1Params{
		HTTPClient: client,
	}
}

/*AdminPutAdminGameRecordV1Params contains all the parameters to send to the API endpoint
for the admin put admin game record v1 operation typically these are written to a http.Request
*/
type AdminPutAdminGameRecordV1Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body cloudsaveclientmodels.ModelsAdminGameRecordRequest
	/*Key
	  key of record

	*/
	Key string
	/*Namespace
	  namespace of the game, only accept alphabet and numeric

	*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the admin put admin game record v1 params
func (o *AdminPutAdminGameRecordV1Params) WithTimeout(timeout time.Duration) *AdminPutAdminGameRecordV1Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin put admin game record v1 params
func (o *AdminPutAdminGameRecordV1Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin put admin game record v1 params
func (o *AdminPutAdminGameRecordV1Params) WithContext(ctx context.Context) *AdminPutAdminGameRecordV1Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin put admin game record v1 params
func (o *AdminPutAdminGameRecordV1Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin put admin game record v1 params
func (o *AdminPutAdminGameRecordV1Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin put admin game record v1 params
func (o *AdminPutAdminGameRecordV1Params) WithHTTPClient(client *http.Client) *AdminPutAdminGameRecordV1Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin put admin game record v1 params
func (o *AdminPutAdminGameRecordV1Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin put admin game record v1 params
func (o *AdminPutAdminGameRecordV1Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *AdminPutAdminGameRecordV1Params) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the admin put admin game record v1 params
func (o *AdminPutAdminGameRecordV1Params) WithBody(body *cloudsaveclientmodels.ModelsAdminGameRecordRequest) *AdminPutAdminGameRecordV1Params {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the admin put admin game record v1 params
func (o *AdminPutAdminGameRecordV1Params) SetBody(body *cloudsaveclientmodels.ModelsAdminGameRecordRequest) {
	o.Body = body
}

// WithKey adds the key to the admin put admin game record v1 params
func (o *AdminPutAdminGameRecordV1Params) WithKey(key string) *AdminPutAdminGameRecordV1Params {
	o.SetKey(key)
	return o
}

// SetKey adds the key to the admin put admin game record v1 params
func (o *AdminPutAdminGameRecordV1Params) SetKey(key string) {
	o.Key = key
}

// WithNamespace adds the namespace to the admin put admin game record v1 params
func (o *AdminPutAdminGameRecordV1Params) WithNamespace(namespace string) *AdminPutAdminGameRecordV1Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin put admin game record v1 params
func (o *AdminPutAdminGameRecordV1Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *AdminPutAdminGameRecordV1Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	if o.Body != nil {
		if err := r.SetBodyParam(o.Body); err != nil {
			return err
		}
	}

	// path param key
	if err := r.SetPathParam("key", o.Key); err != nil {
		return err
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
