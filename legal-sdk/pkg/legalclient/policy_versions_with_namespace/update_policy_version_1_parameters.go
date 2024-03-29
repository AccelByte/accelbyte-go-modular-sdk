// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package policy_versions_with_namespace

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

// NewUpdatePolicyVersion1Params creates a new UpdatePolicyVersion1Params object
// with the default values initialized.
func NewUpdatePolicyVersion1Params() *UpdatePolicyVersion1Params {
	var ()
	return &UpdatePolicyVersion1Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewUpdatePolicyVersion1ParamsWithTimeout creates a new UpdatePolicyVersion1Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewUpdatePolicyVersion1ParamsWithTimeout(timeout time.Duration) *UpdatePolicyVersion1Params {
	var ()
	return &UpdatePolicyVersion1Params{

		timeout: timeout,
	}
}

// NewUpdatePolicyVersion1ParamsWithContext creates a new UpdatePolicyVersion1Params object
// with the default values initialized, and the ability to set a context for a request
func NewUpdatePolicyVersion1ParamsWithContext(ctx context.Context) *UpdatePolicyVersion1Params {
	var ()
	return &UpdatePolicyVersion1Params{

		Context: ctx,
	}
}

// NewUpdatePolicyVersion1ParamsWithHTTPClient creates a new UpdatePolicyVersion1Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewUpdatePolicyVersion1ParamsWithHTTPClient(client *http.Client) *UpdatePolicyVersion1Params {
	var ()
	return &UpdatePolicyVersion1Params{
		HTTPClient: client,
	}
}

/*UpdatePolicyVersion1Params contains all the parameters to send to the API endpoint
for the update policy version 1 operation typically these are written to a http.Request
*/
type UpdatePolicyVersion1Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *legalclientmodels.UpdatePolicyVersionRequest
	/*Namespace
	  Namespace

	*/
	Namespace string
	/*PolicyVersionID
	  Policy Version Id

	*/
	PolicyVersionID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the update policy version 1 params
func (o *UpdatePolicyVersion1Params) WithTimeout(timeout time.Duration) *UpdatePolicyVersion1Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the update policy version 1 params
func (o *UpdatePolicyVersion1Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the update policy version 1 params
func (o *UpdatePolicyVersion1Params) WithContext(ctx context.Context) *UpdatePolicyVersion1Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the update policy version 1 params
func (o *UpdatePolicyVersion1Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the update policy version 1 params
func (o *UpdatePolicyVersion1Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the update policy version 1 params
func (o *UpdatePolicyVersion1Params) WithHTTPClient(client *http.Client) *UpdatePolicyVersion1Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the update policy version 1 params
func (o *UpdatePolicyVersion1Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the update policy version 1 params
func (o *UpdatePolicyVersion1Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *UpdatePolicyVersion1Params) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the update policy version 1 params
func (o *UpdatePolicyVersion1Params) WithBody(body *legalclientmodels.UpdatePolicyVersionRequest) *UpdatePolicyVersion1Params {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the update policy version 1 params
func (o *UpdatePolicyVersion1Params) SetBody(body *legalclientmodels.UpdatePolicyVersionRequest) {
	o.Body = body
}

// WithNamespace adds the namespace to the update policy version 1 params
func (o *UpdatePolicyVersion1Params) WithNamespace(namespace string) *UpdatePolicyVersion1Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the update policy version 1 params
func (o *UpdatePolicyVersion1Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithPolicyVersionID adds the policyVersionID to the update policy version 1 params
func (o *UpdatePolicyVersion1Params) WithPolicyVersionID(policyVersionID string) *UpdatePolicyVersion1Params {
	o.SetPolicyVersionID(policyVersionID)
	return o
}

// SetPolicyVersionID adds the policyVersionId to the update policy version 1 params
func (o *UpdatePolicyVersion1Params) SetPolicyVersionID(policyVersionID string) {
	o.PolicyVersionID = policyVersionID
}

// WriteToRequest writes these params to a swagger request
func (o *UpdatePolicyVersion1Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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

	// path param policyVersionId
	if err := r.SetPathParam("policyVersionId", o.PolicyVersionID); err != nil {
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
