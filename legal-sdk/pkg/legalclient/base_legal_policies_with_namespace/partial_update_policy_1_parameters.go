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

	"github.com/AccelByte/accelbyte-go-modular-sdk/legal-sdk/pkg/legalclientmodels"
)

// NewPartialUpdatePolicy1Params creates a new PartialUpdatePolicy1Params object
// with the default values initialized.
func NewPartialUpdatePolicy1Params() *PartialUpdatePolicy1Params {
	var ()
	return &PartialUpdatePolicy1Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewPartialUpdatePolicy1ParamsWithTimeout creates a new PartialUpdatePolicy1Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewPartialUpdatePolicy1ParamsWithTimeout(timeout time.Duration) *PartialUpdatePolicy1Params {
	var ()
	return &PartialUpdatePolicy1Params{

		timeout: timeout,
	}
}

// NewPartialUpdatePolicy1ParamsWithContext creates a new PartialUpdatePolicy1Params object
// with the default values initialized, and the ability to set a context for a request
func NewPartialUpdatePolicy1ParamsWithContext(ctx context.Context) *PartialUpdatePolicy1Params {
	var ()
	return &PartialUpdatePolicy1Params{

		Context: ctx,
	}
}

// NewPartialUpdatePolicy1ParamsWithHTTPClient creates a new PartialUpdatePolicy1Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPartialUpdatePolicy1ParamsWithHTTPClient(client *http.Client) *PartialUpdatePolicy1Params {
	var ()
	return &PartialUpdatePolicy1Params{
		HTTPClient: client,
	}
}

/*PartialUpdatePolicy1Params contains all the parameters to send to the API endpoint
for the partial update policy 1 operation typically these are written to a http.Request
*/
type PartialUpdatePolicy1Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *legalclientmodels.UpdateBasePolicyRequestV2
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

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the partial update policy 1 params
func (o *PartialUpdatePolicy1Params) WithTimeout(timeout time.Duration) *PartialUpdatePolicy1Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the partial update policy 1 params
func (o *PartialUpdatePolicy1Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the partial update policy 1 params
func (o *PartialUpdatePolicy1Params) WithContext(ctx context.Context) *PartialUpdatePolicy1Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the partial update policy 1 params
func (o *PartialUpdatePolicy1Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the partial update policy 1 params
func (o *PartialUpdatePolicy1Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the partial update policy 1 params
func (o *PartialUpdatePolicy1Params) WithHTTPClient(client *http.Client) *PartialUpdatePolicy1Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the partial update policy 1 params
func (o *PartialUpdatePolicy1Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the partial update policy 1 params
func (o *PartialUpdatePolicy1Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *PartialUpdatePolicy1Params) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the partial update policy 1 params
func (o *PartialUpdatePolicy1Params) WithBody(body *legalclientmodels.UpdateBasePolicyRequestV2) *PartialUpdatePolicy1Params {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the partial update policy 1 params
func (o *PartialUpdatePolicy1Params) SetBody(body *legalclientmodels.UpdateBasePolicyRequestV2) {
	o.Body = body
}

// WithBasePolicyID adds the basePolicyID to the partial update policy 1 params
func (o *PartialUpdatePolicy1Params) WithBasePolicyID(basePolicyID string) *PartialUpdatePolicy1Params {
	o.SetBasePolicyID(basePolicyID)
	return o
}

// SetBasePolicyID adds the basePolicyId to the partial update policy 1 params
func (o *PartialUpdatePolicy1Params) SetBasePolicyID(basePolicyID string) {
	o.BasePolicyID = basePolicyID
}

// WithNamespace adds the namespace to the partial update policy 1 params
func (o *PartialUpdatePolicy1Params) WithNamespace(namespace string) *PartialUpdatePolicy1Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the partial update policy 1 params
func (o *PartialUpdatePolicy1Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *PartialUpdatePolicy1Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	if o.Body != nil {
		if err := r.SetBodyParam(o.Body); err != nil {
			return err
		}
	}

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
