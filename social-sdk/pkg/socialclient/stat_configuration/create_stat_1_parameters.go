// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package stat_configuration

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

// NewCreateStat1Params creates a new CreateStat1Params object
// with the default values initialized.
func NewCreateStat1Params() *CreateStat1Params {
	var ()
	return &CreateStat1Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewCreateStat1ParamsWithTimeout creates a new CreateStat1Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewCreateStat1ParamsWithTimeout(timeout time.Duration) *CreateStat1Params {
	var ()
	return &CreateStat1Params{

		timeout: timeout,
	}
}

// NewCreateStat1ParamsWithContext creates a new CreateStat1Params object
// with the default values initialized, and the ability to set a context for a request
func NewCreateStat1ParamsWithContext(ctx context.Context) *CreateStat1Params {
	var ()
	return &CreateStat1Params{

		Context: ctx,
	}
}

// NewCreateStat1ParamsWithHTTPClient creates a new CreateStat1Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewCreateStat1ParamsWithHTTPClient(client *http.Client) *CreateStat1Params {
	var ()
	return &CreateStat1Params{
		HTTPClient: client,
	}
}

/*CreateStat1Params contains all the parameters to send to the API endpoint
for the create stat 1 operation typically these are written to a http.Request
*/
type CreateStat1Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *socialclientmodels.StatCreate
	/*Namespace
	  namespace

	*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the create stat 1 params
func (o *CreateStat1Params) WithTimeout(timeout time.Duration) *CreateStat1Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the create stat 1 params
func (o *CreateStat1Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the create stat 1 params
func (o *CreateStat1Params) WithContext(ctx context.Context) *CreateStat1Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the create stat 1 params
func (o *CreateStat1Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the create stat 1 params
func (o *CreateStat1Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the create stat 1 params
func (o *CreateStat1Params) WithHTTPClient(client *http.Client) *CreateStat1Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the create stat 1 params
func (o *CreateStat1Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the create stat 1 params
func (o *CreateStat1Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithBody adds the body to the create stat 1 params
func (o *CreateStat1Params) WithBody(body *socialclientmodels.StatCreate) *CreateStat1Params {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the create stat 1 params
func (o *CreateStat1Params) SetBody(body *socialclientmodels.StatCreate) {
	o.Body = body
}

// WithNamespace adds the namespace to the create stat 1 params
func (o *CreateStat1Params) WithNamespace(namespace string) *CreateStat1Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the create stat 1 params
func (o *CreateStat1Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *CreateStat1Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
