// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package topic

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-modular-sdk/chat-sdk/pkg/chatclientmodels"
)

// NewAdminCreateNamespaceTopicParams creates a new AdminCreateNamespaceTopicParams object
// with the default values initialized.
func NewAdminCreateNamespaceTopicParams() *AdminCreateNamespaceTopicParams {
	var ()
	return &AdminCreateNamespaceTopicParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminCreateNamespaceTopicParamsWithTimeout creates a new AdminCreateNamespaceTopicParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminCreateNamespaceTopicParamsWithTimeout(timeout time.Duration) *AdminCreateNamespaceTopicParams {
	var ()
	return &AdminCreateNamespaceTopicParams{

		timeout: timeout,
	}
}

// NewAdminCreateNamespaceTopicParamsWithContext creates a new AdminCreateNamespaceTopicParams object
// with the default values initialized, and the ability to set a context for a request
func NewAdminCreateNamespaceTopicParamsWithContext(ctx context.Context) *AdminCreateNamespaceTopicParams {
	var ()
	return &AdminCreateNamespaceTopicParams{

		Context: ctx,
	}
}

// NewAdminCreateNamespaceTopicParamsWithHTTPClient creates a new AdminCreateNamespaceTopicParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminCreateNamespaceTopicParamsWithHTTPClient(client *http.Client) *AdminCreateNamespaceTopicParams {
	var ()
	return &AdminCreateNamespaceTopicParams{
		HTTPClient: client,
	}
}

/*AdminCreateNamespaceTopicParams contains all the parameters to send to the API endpoint
for the admin create namespace topic operation typically these are written to a http.Request
*/
type AdminCreateNamespaceTopicParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *chatclientmodels.APICreateNamespaceTopicParams
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

// WithTimeout adds the timeout to the admin create namespace topic params
func (o *AdminCreateNamespaceTopicParams) WithTimeout(timeout time.Duration) *AdminCreateNamespaceTopicParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin create namespace topic params
func (o *AdminCreateNamespaceTopicParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin create namespace topic params
func (o *AdminCreateNamespaceTopicParams) WithContext(ctx context.Context) *AdminCreateNamespaceTopicParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin create namespace topic params
func (o *AdminCreateNamespaceTopicParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin create namespace topic params
func (o *AdminCreateNamespaceTopicParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin create namespace topic params
func (o *AdminCreateNamespaceTopicParams) WithHTTPClient(client *http.Client) *AdminCreateNamespaceTopicParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin create namespace topic params
func (o *AdminCreateNamespaceTopicParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin create namespace topic params
func (o *AdminCreateNamespaceTopicParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *AdminCreateNamespaceTopicParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the admin create namespace topic params
func (o *AdminCreateNamespaceTopicParams) WithBody(body *chatclientmodels.APICreateNamespaceTopicParams) *AdminCreateNamespaceTopicParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the admin create namespace topic params
func (o *AdminCreateNamespaceTopicParams) SetBody(body *chatclientmodels.APICreateNamespaceTopicParams) {
	o.Body = body
}

// WithNamespace adds the namespace to the admin create namespace topic params
func (o *AdminCreateNamespaceTopicParams) WithNamespace(namespace string) *AdminCreateNamespaceTopicParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin create namespace topic params
func (o *AdminCreateNamespaceTopicParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *AdminCreateNamespaceTopicParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
