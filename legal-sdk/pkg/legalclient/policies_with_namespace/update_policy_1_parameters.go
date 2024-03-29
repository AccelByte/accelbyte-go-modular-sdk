// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package policies_with_namespace

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-modular-sdk/legal-sdk/pkg/legalclientmodels"
)

// NewUpdatePolicy1Params creates a new UpdatePolicy1Params object
// with the default values initialized.
func NewUpdatePolicy1Params() *UpdatePolicy1Params {
	var ()
	return &UpdatePolicy1Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewUpdatePolicy1ParamsWithTimeout creates a new UpdatePolicy1Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewUpdatePolicy1ParamsWithTimeout(timeout time.Duration) *UpdatePolicy1Params {
	var ()
	return &UpdatePolicy1Params{

		timeout: timeout,
	}
}

// NewUpdatePolicy1ParamsWithContext creates a new UpdatePolicy1Params object
// with the default values initialized, and the ability to set a context for a request
func NewUpdatePolicy1ParamsWithContext(ctx context.Context) *UpdatePolicy1Params {
	var ()
	return &UpdatePolicy1Params{

		Context: ctx,
	}
}

// NewUpdatePolicy1ParamsWithHTTPClient creates a new UpdatePolicy1Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewUpdatePolicy1ParamsWithHTTPClient(client *http.Client) *UpdatePolicy1Params {
	var ()
	return &UpdatePolicy1Params{
		HTTPClient: client,
	}
}

/*UpdatePolicy1Params contains all the parameters to send to the API endpoint
for the update policy 1 operation typically these are written to a http.Request
*/
type UpdatePolicy1Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *legalclientmodels.UpdatePolicyRequest
	/*Namespace
	  Namespace

	*/
	Namespace string
	/*PolicyID
	  Policy Id

	*/
	PolicyID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the update policy 1 params
func (o *UpdatePolicy1Params) WithTimeout(timeout time.Duration) *UpdatePolicy1Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the update policy 1 params
func (o *UpdatePolicy1Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the update policy 1 params
func (o *UpdatePolicy1Params) WithContext(ctx context.Context) *UpdatePolicy1Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the update policy 1 params
func (o *UpdatePolicy1Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the update policy 1 params
func (o *UpdatePolicy1Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the update policy 1 params
func (o *UpdatePolicy1Params) WithHTTPClient(client *http.Client) *UpdatePolicy1Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the update policy 1 params
func (o *UpdatePolicy1Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the update policy 1 params
func (o *UpdatePolicy1Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *UpdatePolicy1Params) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the update policy 1 params
func (o *UpdatePolicy1Params) WithBody(body *legalclientmodels.UpdatePolicyRequest) *UpdatePolicy1Params {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the update policy 1 params
func (o *UpdatePolicy1Params) SetBody(body *legalclientmodels.UpdatePolicyRequest) {
	o.Body = body
}

// WithNamespace adds the namespace to the update policy 1 params
func (o *UpdatePolicy1Params) WithNamespace(namespace string) *UpdatePolicy1Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the update policy 1 params
func (o *UpdatePolicy1Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithPolicyID adds the policyID to the update policy 1 params
func (o *UpdatePolicy1Params) WithPolicyID(policyID string) *UpdatePolicy1Params {
	o.SetPolicyID(policyID)
	return o
}

// SetPolicyID adds the policyId to the update policy 1 params
func (o *UpdatePolicy1Params) SetPolicyID(policyID string) {
	o.PolicyID = policyID
}

// WriteToRequest writes these params to a swagger request
func (o *UpdatePolicy1Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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

	// path param policyId
	if err := r.SetPathParam("policyId", o.PolicyID); err != nil {
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
