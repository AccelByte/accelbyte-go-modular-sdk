// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package reward

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-modular-sdk/platform-sdk/pkg/platformclientmodels"
)

// NewCheckEventConditionParams creates a new CheckEventConditionParams object
// with the default values initialized.
func NewCheckEventConditionParams() *CheckEventConditionParams {
	var ()
	return &CheckEventConditionParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewCheckEventConditionParamsWithTimeout creates a new CheckEventConditionParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewCheckEventConditionParamsWithTimeout(timeout time.Duration) *CheckEventConditionParams {
	var ()
	return &CheckEventConditionParams{

		timeout: timeout,
	}
}

// NewCheckEventConditionParamsWithContext creates a new CheckEventConditionParams object
// with the default values initialized, and the ability to set a context for a request
func NewCheckEventConditionParamsWithContext(ctx context.Context) *CheckEventConditionParams {
	var ()
	return &CheckEventConditionParams{

		Context: ctx,
	}
}

// NewCheckEventConditionParamsWithHTTPClient creates a new CheckEventConditionParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewCheckEventConditionParamsWithHTTPClient(client *http.Client) *CheckEventConditionParams {
	var ()
	return &CheckEventConditionParams{
		HTTPClient: client,
	}
}

/*CheckEventConditionParams contains all the parameters to send to the API endpoint
for the check event condition operation typically these are written to a http.Request
*/
type CheckEventConditionParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *platformclientmodels.EventPayload
	/*Namespace*/
	Namespace string
	/*RewardID*/
	RewardID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the check event condition params
func (o *CheckEventConditionParams) WithTimeout(timeout time.Duration) *CheckEventConditionParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the check event condition params
func (o *CheckEventConditionParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the check event condition params
func (o *CheckEventConditionParams) WithContext(ctx context.Context) *CheckEventConditionParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the check event condition params
func (o *CheckEventConditionParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the check event condition params
func (o *CheckEventConditionParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the check event condition params
func (o *CheckEventConditionParams) WithHTTPClient(client *http.Client) *CheckEventConditionParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the check event condition params
func (o *CheckEventConditionParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the check event condition params
func (o *CheckEventConditionParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *CheckEventConditionParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the check event condition params
func (o *CheckEventConditionParams) WithBody(body *platformclientmodels.EventPayload) *CheckEventConditionParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the check event condition params
func (o *CheckEventConditionParams) SetBody(body *platformclientmodels.EventPayload) {
	o.Body = body
}

// WithNamespace adds the namespace to the check event condition params
func (o *CheckEventConditionParams) WithNamespace(namespace string) *CheckEventConditionParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the check event condition params
func (o *CheckEventConditionParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithRewardID adds the rewardID to the check event condition params
func (o *CheckEventConditionParams) WithRewardID(rewardID string) *CheckEventConditionParams {
	o.SetRewardID(rewardID)
	return o
}

// SetRewardID adds the rewardId to the check event condition params
func (o *CheckEventConditionParams) SetRewardID(rewardID string) {
	o.RewardID = rewardID
}

// WriteToRequest writes these params to a swagger request
func (o *CheckEventConditionParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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

	// path param rewardId
	if err := r.SetPathParam("rewardId", o.RewardID); err != nil {
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
