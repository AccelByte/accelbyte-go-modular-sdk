// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package users

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

// NewAdminGetBulkUserByEmailAddressV3Params creates a new AdminGetBulkUserByEmailAddressV3Params object
// with the default values initialized.
func NewAdminGetBulkUserByEmailAddressV3Params() *AdminGetBulkUserByEmailAddressV3Params {
	var ()
	return &AdminGetBulkUserByEmailAddressV3Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminGetBulkUserByEmailAddressV3ParamsWithTimeout creates a new AdminGetBulkUserByEmailAddressV3Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminGetBulkUserByEmailAddressV3ParamsWithTimeout(timeout time.Duration) *AdminGetBulkUserByEmailAddressV3Params {
	var ()
	return &AdminGetBulkUserByEmailAddressV3Params{

		timeout: timeout,
	}
}

// NewAdminGetBulkUserByEmailAddressV3ParamsWithContext creates a new AdminGetBulkUserByEmailAddressV3Params object
// with the default values initialized, and the ability to set a context for a request
func NewAdminGetBulkUserByEmailAddressV3ParamsWithContext(ctx context.Context) *AdminGetBulkUserByEmailAddressV3Params {
	var ()
	return &AdminGetBulkUserByEmailAddressV3Params{

		Context: ctx,
	}
}

// NewAdminGetBulkUserByEmailAddressV3ParamsWithHTTPClient creates a new AdminGetBulkUserByEmailAddressV3Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminGetBulkUserByEmailAddressV3ParamsWithHTTPClient(client *http.Client) *AdminGetBulkUserByEmailAddressV3Params {
	var ()
	return &AdminGetBulkUserByEmailAddressV3Params{
		HTTPClient: client,
	}
}

/*AdminGetBulkUserByEmailAddressV3Params contains all the parameters to send to the API endpoint
for the admin get bulk user by email address v3 operation typically these are written to a http.Request
*/
type AdminGetBulkUserByEmailAddressV3Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *iamclientmodels.ModelListEmailAddressRequest
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

// WithTimeout adds the timeout to the admin get bulk user by email address v3 params
func (o *AdminGetBulkUserByEmailAddressV3Params) WithTimeout(timeout time.Duration) *AdminGetBulkUserByEmailAddressV3Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin get bulk user by email address v3 params
func (o *AdminGetBulkUserByEmailAddressV3Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin get bulk user by email address v3 params
func (o *AdminGetBulkUserByEmailAddressV3Params) WithContext(ctx context.Context) *AdminGetBulkUserByEmailAddressV3Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin get bulk user by email address v3 params
func (o *AdminGetBulkUserByEmailAddressV3Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin get bulk user by email address v3 params
func (o *AdminGetBulkUserByEmailAddressV3Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin get bulk user by email address v3 params
func (o *AdminGetBulkUserByEmailAddressV3Params) WithHTTPClient(client *http.Client) *AdminGetBulkUserByEmailAddressV3Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin get bulk user by email address v3 params
func (o *AdminGetBulkUserByEmailAddressV3Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin get bulk user by email address v3 params
func (o *AdminGetBulkUserByEmailAddressV3Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *AdminGetBulkUserByEmailAddressV3Params) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the admin get bulk user by email address v3 params
func (o *AdminGetBulkUserByEmailAddressV3Params) WithBody(body *iamclientmodels.ModelListEmailAddressRequest) *AdminGetBulkUserByEmailAddressV3Params {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the admin get bulk user by email address v3 params
func (o *AdminGetBulkUserByEmailAddressV3Params) SetBody(body *iamclientmodels.ModelListEmailAddressRequest) {
	o.Body = body
}

// WithNamespace adds the namespace to the admin get bulk user by email address v3 params
func (o *AdminGetBulkUserByEmailAddressV3Params) WithNamespace(namespace string) *AdminGetBulkUserByEmailAddressV3Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin get bulk user by email address v3 params
func (o *AdminGetBulkUserByEmailAddressV3Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *AdminGetBulkUserByEmailAddressV3Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
