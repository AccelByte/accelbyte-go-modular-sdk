// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package group

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-modular-sdk/group-sdk/pkg/groupclientmodels"
)

// NewCreateNewGroupPublicV2Params creates a new CreateNewGroupPublicV2Params object
// with the default values initialized.
func NewCreateNewGroupPublicV2Params() *CreateNewGroupPublicV2Params {
	var ()
	return &CreateNewGroupPublicV2Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewCreateNewGroupPublicV2ParamsWithTimeout creates a new CreateNewGroupPublicV2Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewCreateNewGroupPublicV2ParamsWithTimeout(timeout time.Duration) *CreateNewGroupPublicV2Params {
	var ()
	return &CreateNewGroupPublicV2Params{

		timeout: timeout,
	}
}

// NewCreateNewGroupPublicV2ParamsWithContext creates a new CreateNewGroupPublicV2Params object
// with the default values initialized, and the ability to set a context for a request
func NewCreateNewGroupPublicV2ParamsWithContext(ctx context.Context) *CreateNewGroupPublicV2Params {
	var ()
	return &CreateNewGroupPublicV2Params{

		Context: ctx,
	}
}

// NewCreateNewGroupPublicV2ParamsWithHTTPClient creates a new CreateNewGroupPublicV2Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewCreateNewGroupPublicV2ParamsWithHTTPClient(client *http.Client) *CreateNewGroupPublicV2Params {
	var ()
	return &CreateNewGroupPublicV2Params{
		HTTPClient: client,
	}
}

/*CreateNewGroupPublicV2Params contains all the parameters to send to the API endpoint
for the create new group public v2 operation typically these are written to a http.Request
*/
type CreateNewGroupPublicV2Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *groupclientmodels.ModelsPublicCreateNewGroupRequestV1
	/*Namespace
	  namespace

	*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the create new group public v2 params
func (o *CreateNewGroupPublicV2Params) WithTimeout(timeout time.Duration) *CreateNewGroupPublicV2Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the create new group public v2 params
func (o *CreateNewGroupPublicV2Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the create new group public v2 params
func (o *CreateNewGroupPublicV2Params) WithContext(ctx context.Context) *CreateNewGroupPublicV2Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the create new group public v2 params
func (o *CreateNewGroupPublicV2Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the create new group public v2 params
func (o *CreateNewGroupPublicV2Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the create new group public v2 params
func (o *CreateNewGroupPublicV2Params) WithHTTPClient(client *http.Client) *CreateNewGroupPublicV2Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the create new group public v2 params
func (o *CreateNewGroupPublicV2Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the create new group public v2 params
func (o *CreateNewGroupPublicV2Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithBody adds the body to the create new group public v2 params
func (o *CreateNewGroupPublicV2Params) WithBody(body *groupclientmodels.ModelsPublicCreateNewGroupRequestV1) *CreateNewGroupPublicV2Params {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the create new group public v2 params
func (o *CreateNewGroupPublicV2Params) SetBody(body *groupclientmodels.ModelsPublicCreateNewGroupRequestV1) {
	o.Body = body
}

// WithNamespace adds the namespace to the create new group public v2 params
func (o *CreateNewGroupPublicV2Params) WithNamespace(namespace string) *CreateNewGroupPublicV2Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the create new group public v2 params
func (o *CreateNewGroupPublicV2Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *CreateNewGroupPublicV2Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
