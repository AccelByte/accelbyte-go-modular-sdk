// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package user_profile

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

// NewUpdateMyPrivateCustomAttributesPartiallyParams creates a new UpdateMyPrivateCustomAttributesPartiallyParams object
// with the default values initialized.
func NewUpdateMyPrivateCustomAttributesPartiallyParams() *UpdateMyPrivateCustomAttributesPartiallyParams {
	var ()
	return &UpdateMyPrivateCustomAttributesPartiallyParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewUpdateMyPrivateCustomAttributesPartiallyParamsWithTimeout creates a new UpdateMyPrivateCustomAttributesPartiallyParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewUpdateMyPrivateCustomAttributesPartiallyParamsWithTimeout(timeout time.Duration) *UpdateMyPrivateCustomAttributesPartiallyParams {
	var ()
	return &UpdateMyPrivateCustomAttributesPartiallyParams{

		timeout: timeout,
	}
}

// NewUpdateMyPrivateCustomAttributesPartiallyParamsWithContext creates a new UpdateMyPrivateCustomAttributesPartiallyParams object
// with the default values initialized, and the ability to set a context for a request
func NewUpdateMyPrivateCustomAttributesPartiallyParamsWithContext(ctx context.Context) *UpdateMyPrivateCustomAttributesPartiallyParams {
	var ()
	return &UpdateMyPrivateCustomAttributesPartiallyParams{

		Context: ctx,
	}
}

// NewUpdateMyPrivateCustomAttributesPartiallyParamsWithHTTPClient creates a new UpdateMyPrivateCustomAttributesPartiallyParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewUpdateMyPrivateCustomAttributesPartiallyParamsWithHTTPClient(client *http.Client) *UpdateMyPrivateCustomAttributesPartiallyParams {
	var ()
	return &UpdateMyPrivateCustomAttributesPartiallyParams{
		HTTPClient: client,
	}
}

/*UpdateMyPrivateCustomAttributesPartiallyParams contains all the parameters to send to the API endpoint
for the update my private custom attributes partially operation typically these are written to a http.Request
*/
type UpdateMyPrivateCustomAttributesPartiallyParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body map[string]interface{}
	/*Namespace
	  namespace, only accept alphabet and numeric

	*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the update my private custom attributes partially params
func (o *UpdateMyPrivateCustomAttributesPartiallyParams) WithTimeout(timeout time.Duration) *UpdateMyPrivateCustomAttributesPartiallyParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the update my private custom attributes partially params
func (o *UpdateMyPrivateCustomAttributesPartiallyParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the update my private custom attributes partially params
func (o *UpdateMyPrivateCustomAttributesPartiallyParams) WithContext(ctx context.Context) *UpdateMyPrivateCustomAttributesPartiallyParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the update my private custom attributes partially params
func (o *UpdateMyPrivateCustomAttributesPartiallyParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the update my private custom attributes partially params
func (o *UpdateMyPrivateCustomAttributesPartiallyParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the update my private custom attributes partially params
func (o *UpdateMyPrivateCustomAttributesPartiallyParams) WithHTTPClient(client *http.Client) *UpdateMyPrivateCustomAttributesPartiallyParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the update my private custom attributes partially params
func (o *UpdateMyPrivateCustomAttributesPartiallyParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the update my private custom attributes partially params
func (o *UpdateMyPrivateCustomAttributesPartiallyParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithBody adds the body to the update my private custom attributes partially params
func (o *UpdateMyPrivateCustomAttributesPartiallyParams) WithBody(body map[string]interface{}) *UpdateMyPrivateCustomAttributesPartiallyParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the update my private custom attributes partially params
func (o *UpdateMyPrivateCustomAttributesPartiallyParams) SetBody(body map[string]interface{}) {
	o.Body = body
}

// WithNamespace adds the namespace to the update my private custom attributes partially params
func (o *UpdateMyPrivateCustomAttributesPartiallyParams) WithNamespace(namespace string) *UpdateMyPrivateCustomAttributesPartiallyParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the update my private custom attributes partially params
func (o *UpdateMyPrivateCustomAttributesPartiallyParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *UpdateMyPrivateCustomAttributesPartiallyParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}

	return nil
}
