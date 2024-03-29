// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package users_v4

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-modular-sdk/iam-sdk/pkg/iamclientmodels"
)

// NewAdminBulkCheckValidUserIDV4Params creates a new AdminBulkCheckValidUserIDV4Params object
// with the default values initialized.
func NewAdminBulkCheckValidUserIDV4Params() *AdminBulkCheckValidUserIDV4Params {
	var ()
	return &AdminBulkCheckValidUserIDV4Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminBulkCheckValidUserIDV4ParamsWithTimeout creates a new AdminBulkCheckValidUserIDV4Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminBulkCheckValidUserIDV4ParamsWithTimeout(timeout time.Duration) *AdminBulkCheckValidUserIDV4Params {
	var ()
	return &AdminBulkCheckValidUserIDV4Params{

		timeout: timeout,
	}
}

// NewAdminBulkCheckValidUserIDV4ParamsWithContext creates a new AdminBulkCheckValidUserIDV4Params object
// with the default values initialized, and the ability to set a context for a request
func NewAdminBulkCheckValidUserIDV4ParamsWithContext(ctx context.Context) *AdminBulkCheckValidUserIDV4Params {
	var ()
	return &AdminBulkCheckValidUserIDV4Params{

		Context: ctx,
	}
}

// NewAdminBulkCheckValidUserIDV4ParamsWithHTTPClient creates a new AdminBulkCheckValidUserIDV4Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminBulkCheckValidUserIDV4ParamsWithHTTPClient(client *http.Client) *AdminBulkCheckValidUserIDV4Params {
	var ()
	return &AdminBulkCheckValidUserIDV4Params{
		HTTPClient: client,
	}
}

/*AdminBulkCheckValidUserIDV4Params contains all the parameters to send to the API endpoint
for the admin bulk check valid user idv4 operation typically these are written to a http.Request
*/
type AdminBulkCheckValidUserIDV4Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *iamclientmodels.ModelCheckValidUserIDRequestV4
	/*Namespace
	  Namespace, only accept alphabet and numeric

	*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the admin bulk check valid user idv4 params
func (o *AdminBulkCheckValidUserIDV4Params) WithTimeout(timeout time.Duration) *AdminBulkCheckValidUserIDV4Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin bulk check valid user idv4 params
func (o *AdminBulkCheckValidUserIDV4Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin bulk check valid user idv4 params
func (o *AdminBulkCheckValidUserIDV4Params) WithContext(ctx context.Context) *AdminBulkCheckValidUserIDV4Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin bulk check valid user idv4 params
func (o *AdminBulkCheckValidUserIDV4Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin bulk check valid user idv4 params
func (o *AdminBulkCheckValidUserIDV4Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin bulk check valid user idv4 params
func (o *AdminBulkCheckValidUserIDV4Params) WithHTTPClient(client *http.Client) *AdminBulkCheckValidUserIDV4Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin bulk check valid user idv4 params
func (o *AdminBulkCheckValidUserIDV4Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin bulk check valid user idv4 params
func (o *AdminBulkCheckValidUserIDV4Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *AdminBulkCheckValidUserIDV4Params) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the admin bulk check valid user idv4 params
func (o *AdminBulkCheckValidUserIDV4Params) WithBody(body *iamclientmodels.ModelCheckValidUserIDRequestV4) *AdminBulkCheckValidUserIDV4Params {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the admin bulk check valid user idv4 params
func (o *AdminBulkCheckValidUserIDV4Params) SetBody(body *iamclientmodels.ModelCheckValidUserIDRequestV4) {
	o.Body = body
}

// WithNamespace adds the namespace to the admin bulk check valid user idv4 params
func (o *AdminBulkCheckValidUserIDV4Params) WithNamespace(namespace string) *AdminBulkCheckValidUserIDV4Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin bulk check valid user idv4 params
func (o *AdminBulkCheckValidUserIDV4Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *AdminBulkCheckValidUserIDV4Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
