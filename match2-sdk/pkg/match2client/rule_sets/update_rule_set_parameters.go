// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package rule_sets

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-modular-sdk/match2-sdk/pkg/match2clientmodels"
)

// NewUpdateRuleSetParams creates a new UpdateRuleSetParams object
// with the default values initialized.
func NewUpdateRuleSetParams() *UpdateRuleSetParams {
	var ()
	return &UpdateRuleSetParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewUpdateRuleSetParamsWithTimeout creates a new UpdateRuleSetParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewUpdateRuleSetParamsWithTimeout(timeout time.Duration) *UpdateRuleSetParams {
	var ()
	return &UpdateRuleSetParams{

		timeout: timeout,
	}
}

// NewUpdateRuleSetParamsWithContext creates a new UpdateRuleSetParams object
// with the default values initialized, and the ability to set a context for a request
func NewUpdateRuleSetParamsWithContext(ctx context.Context) *UpdateRuleSetParams {
	var ()
	return &UpdateRuleSetParams{

		Context: ctx,
	}
}

// NewUpdateRuleSetParamsWithHTTPClient creates a new UpdateRuleSetParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewUpdateRuleSetParamsWithHTTPClient(client *http.Client) *UpdateRuleSetParams {
	var ()
	return &UpdateRuleSetParams{
		HTTPClient: client,
	}
}

/*UpdateRuleSetParams contains all the parameters to send to the API endpoint
for the update rule set operation typically these are written to a http.Request
*/
type UpdateRuleSetParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *match2clientmodels.APIRuleSetPayload
	/*Namespace
	  namespace of the game

	*/
	Namespace string
	/*Ruleset
	  Name of the match rule set

	*/
	Ruleset string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the update rule set params
func (o *UpdateRuleSetParams) WithTimeout(timeout time.Duration) *UpdateRuleSetParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the update rule set params
func (o *UpdateRuleSetParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the update rule set params
func (o *UpdateRuleSetParams) WithContext(ctx context.Context) *UpdateRuleSetParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the update rule set params
func (o *UpdateRuleSetParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the update rule set params
func (o *UpdateRuleSetParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the update rule set params
func (o *UpdateRuleSetParams) WithHTTPClient(client *http.Client) *UpdateRuleSetParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the update rule set params
func (o *UpdateRuleSetParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the update rule set params
func (o *UpdateRuleSetParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *UpdateRuleSetParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the update rule set params
func (o *UpdateRuleSetParams) WithBody(body *match2clientmodels.APIRuleSetPayload) *UpdateRuleSetParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the update rule set params
func (o *UpdateRuleSetParams) SetBody(body *match2clientmodels.APIRuleSetPayload) {
	o.Body = body
}

// WithNamespace adds the namespace to the update rule set params
func (o *UpdateRuleSetParams) WithNamespace(namespace string) *UpdateRuleSetParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the update rule set params
func (o *UpdateRuleSetParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithRuleset adds the ruleset to the update rule set params
func (o *UpdateRuleSetParams) WithRuleset(ruleset string) *UpdateRuleSetParams {
	o.SetRuleset(ruleset)
	return o
}

// SetRuleset adds the ruleset to the update rule set params
func (o *UpdateRuleSetParams) SetRuleset(ruleset string) {
	o.Ruleset = ruleset
}

// WriteToRequest writes these params to a swagger request
func (o *UpdateRuleSetParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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

	// path param ruleset
	if err := r.SetPathParam("ruleset", o.Ruleset); err != nil {
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
