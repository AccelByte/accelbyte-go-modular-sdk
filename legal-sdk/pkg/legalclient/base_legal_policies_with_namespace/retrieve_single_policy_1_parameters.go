// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package base_legal_policies_with_namespace

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

// NewRetrieveSinglePolicy1Params creates a new RetrieveSinglePolicy1Params object
// with the default values initialized.
func NewRetrieveSinglePolicy1Params() *RetrieveSinglePolicy1Params {
	var ()
	return &RetrieveSinglePolicy1Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewRetrieveSinglePolicy1ParamsWithTimeout creates a new RetrieveSinglePolicy1Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewRetrieveSinglePolicy1ParamsWithTimeout(timeout time.Duration) *RetrieveSinglePolicy1Params {
	var ()
	return &RetrieveSinglePolicy1Params{

		timeout: timeout,
	}
}

// NewRetrieveSinglePolicy1ParamsWithContext creates a new RetrieveSinglePolicy1Params object
// with the default values initialized, and the ability to set a context for a request
func NewRetrieveSinglePolicy1ParamsWithContext(ctx context.Context) *RetrieveSinglePolicy1Params {
	var ()
	return &RetrieveSinglePolicy1Params{

		Context: ctx,
	}
}

// NewRetrieveSinglePolicy1ParamsWithHTTPClient creates a new RetrieveSinglePolicy1Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewRetrieveSinglePolicy1ParamsWithHTTPClient(client *http.Client) *RetrieveSinglePolicy1Params {
	var ()
	return &RetrieveSinglePolicy1Params{
		HTTPClient: client,
	}
}

/*RetrieveSinglePolicy1Params contains all the parameters to send to the API endpoint
for the retrieve single policy 1 operation typically these are written to a http.Request
*/
type RetrieveSinglePolicy1Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*BasePolicyID
	  BasePolicy Id

	*/
	BasePolicyID string
	/*Namespace
	  Namespace

	*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the retrieve single policy 1 params
func (o *RetrieveSinglePolicy1Params) WithTimeout(timeout time.Duration) *RetrieveSinglePolicy1Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the retrieve single policy 1 params
func (o *RetrieveSinglePolicy1Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the retrieve single policy 1 params
func (o *RetrieveSinglePolicy1Params) WithContext(ctx context.Context) *RetrieveSinglePolicy1Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the retrieve single policy 1 params
func (o *RetrieveSinglePolicy1Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the retrieve single policy 1 params
func (o *RetrieveSinglePolicy1Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the retrieve single policy 1 params
func (o *RetrieveSinglePolicy1Params) WithHTTPClient(client *http.Client) *RetrieveSinglePolicy1Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the retrieve single policy 1 params
func (o *RetrieveSinglePolicy1Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the retrieve single policy 1 params
func (o *RetrieveSinglePolicy1Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithBasePolicyID adds the basePolicyID to the retrieve single policy 1 params
func (o *RetrieveSinglePolicy1Params) WithBasePolicyID(basePolicyID string) *RetrieveSinglePolicy1Params {
	o.SetBasePolicyID(basePolicyID)
	return o
}

// SetBasePolicyID adds the basePolicyId to the retrieve single policy 1 params
func (o *RetrieveSinglePolicy1Params) SetBasePolicyID(basePolicyID string) {
	o.BasePolicyID = basePolicyID
}

// WithNamespace adds the namespace to the retrieve single policy 1 params
func (o *RetrieveSinglePolicy1Params) WithNamespace(namespace string) *RetrieveSinglePolicy1Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the retrieve single policy 1 params
func (o *RetrieveSinglePolicy1Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *RetrieveSinglePolicy1Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param basePolicyId
	if err := r.SetPathParam("basePolicyId", o.BasePolicyID); err != nil {
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
