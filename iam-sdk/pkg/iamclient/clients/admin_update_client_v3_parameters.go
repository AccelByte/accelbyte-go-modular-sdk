// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package clients

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

// NewAdminUpdateClientV3Params creates a new AdminUpdateClientV3Params object
// with the default values initialized.
func NewAdminUpdateClientV3Params() *AdminUpdateClientV3Params {
	var ()
	return &AdminUpdateClientV3Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminUpdateClientV3ParamsWithTimeout creates a new AdminUpdateClientV3Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminUpdateClientV3ParamsWithTimeout(timeout time.Duration) *AdminUpdateClientV3Params {
	var ()
	return &AdminUpdateClientV3Params{

		timeout: timeout,
	}
}

// NewAdminUpdateClientV3ParamsWithContext creates a new AdminUpdateClientV3Params object
// with the default values initialized, and the ability to set a context for a request
func NewAdminUpdateClientV3ParamsWithContext(ctx context.Context) *AdminUpdateClientV3Params {
	var ()
	return &AdminUpdateClientV3Params{

		Context: ctx,
	}
}

// NewAdminUpdateClientV3ParamsWithHTTPClient creates a new AdminUpdateClientV3Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminUpdateClientV3ParamsWithHTTPClient(client *http.Client) *AdminUpdateClientV3Params {
	var ()
	return &AdminUpdateClientV3Params{
		HTTPClient: client,
	}
}

/*AdminUpdateClientV3Params contains all the parameters to send to the API endpoint
for the admin update client v3 operation typically these are written to a http.Request
*/
type AdminUpdateClientV3Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *iamclientmodels.ClientmodelClientUpdateV3Request
	/*ClientID
	  Client ID, should follow UUID version 4 without hyphen

	*/
	ClientID string
	/*Namespace
	  Namespace, only accept alphabet and numeric

	*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the admin update client v3 params
func (o *AdminUpdateClientV3Params) WithTimeout(timeout time.Duration) *AdminUpdateClientV3Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin update client v3 params
func (o *AdminUpdateClientV3Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin update client v3 params
func (o *AdminUpdateClientV3Params) WithContext(ctx context.Context) *AdminUpdateClientV3Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin update client v3 params
func (o *AdminUpdateClientV3Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin update client v3 params
func (o *AdminUpdateClientV3Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin update client v3 params
func (o *AdminUpdateClientV3Params) WithHTTPClient(client *http.Client) *AdminUpdateClientV3Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin update client v3 params
func (o *AdminUpdateClientV3Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin update client v3 params
func (o *AdminUpdateClientV3Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithBody adds the body to the admin update client v3 params
func (o *AdminUpdateClientV3Params) WithBody(body *iamclientmodels.ClientmodelClientUpdateV3Request) *AdminUpdateClientV3Params {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the admin update client v3 params
func (o *AdminUpdateClientV3Params) SetBody(body *iamclientmodels.ClientmodelClientUpdateV3Request) {
	o.Body = body
}

// WithClientID adds the clientID to the admin update client v3 params
func (o *AdminUpdateClientV3Params) WithClientID(clientID string) *AdminUpdateClientV3Params {
	o.SetClientID(clientID)
	return o
}

// SetClientID adds the clientId to the admin update client v3 params
func (o *AdminUpdateClientV3Params) SetClientID(clientID string) {
	o.ClientID = clientID
}

// WithNamespace adds the namespace to the admin update client v3 params
func (o *AdminUpdateClientV3Params) WithNamespace(namespace string) *AdminUpdateClientV3Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin update client v3 params
func (o *AdminUpdateClientV3Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *AdminUpdateClientV3Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	if o.Body != nil {
		if err := r.SetBodyParam(o.Body); err != nil {
			return err
		}
	}

	// path param clientId
	if err := r.SetPathParam("clientId", o.ClientID); err != nil {
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

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}

	return nil
}
