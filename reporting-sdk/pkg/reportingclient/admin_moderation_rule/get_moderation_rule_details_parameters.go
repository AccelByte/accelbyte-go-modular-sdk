// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package admin_moderation_rule

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

// NewGetModerationRuleDetailsParams creates a new GetModerationRuleDetailsParams object
// with the default values initialized.
func NewGetModerationRuleDetailsParams() *GetModerationRuleDetailsParams {
	var ()
	return &GetModerationRuleDetailsParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewGetModerationRuleDetailsParamsWithTimeout creates a new GetModerationRuleDetailsParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewGetModerationRuleDetailsParamsWithTimeout(timeout time.Duration) *GetModerationRuleDetailsParams {
	var ()
	return &GetModerationRuleDetailsParams{

		timeout: timeout,
	}
}

// NewGetModerationRuleDetailsParamsWithContext creates a new GetModerationRuleDetailsParams object
// with the default values initialized, and the ability to set a context for a request
func NewGetModerationRuleDetailsParamsWithContext(ctx context.Context) *GetModerationRuleDetailsParams {
	var ()
	return &GetModerationRuleDetailsParams{

		Context: ctx,
	}
}

// NewGetModerationRuleDetailsParamsWithHTTPClient creates a new GetModerationRuleDetailsParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewGetModerationRuleDetailsParamsWithHTTPClient(client *http.Client) *GetModerationRuleDetailsParams {
	var ()
	return &GetModerationRuleDetailsParams{
		HTTPClient: client,
	}
}

/*GetModerationRuleDetailsParams contains all the parameters to send to the API endpoint
for the get moderation rule details operation typically these are written to a http.Request
*/
type GetModerationRuleDetailsParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace*/
	Namespace string
	/*RuleID*/
	RuleID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the get moderation rule details params
func (o *GetModerationRuleDetailsParams) WithTimeout(timeout time.Duration) *GetModerationRuleDetailsParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the get moderation rule details params
func (o *GetModerationRuleDetailsParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the get moderation rule details params
func (o *GetModerationRuleDetailsParams) WithContext(ctx context.Context) *GetModerationRuleDetailsParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the get moderation rule details params
func (o *GetModerationRuleDetailsParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the get moderation rule details params
func (o *GetModerationRuleDetailsParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the get moderation rule details params
func (o *GetModerationRuleDetailsParams) WithHTTPClient(client *http.Client) *GetModerationRuleDetailsParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the get moderation rule details params
func (o *GetModerationRuleDetailsParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the get moderation rule details params
func (o *GetModerationRuleDetailsParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *GetModerationRuleDetailsParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the get moderation rule details params
func (o *GetModerationRuleDetailsParams) WithNamespace(namespace string) *GetModerationRuleDetailsParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the get moderation rule details params
func (o *GetModerationRuleDetailsParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithRuleID adds the ruleID to the get moderation rule details params
func (o *GetModerationRuleDetailsParams) WithRuleID(ruleID string) *GetModerationRuleDetailsParams {
	o.SetRuleID(ruleID)
	return o
}

// SetRuleID adds the ruleId to the get moderation rule details params
func (o *GetModerationRuleDetailsParams) SetRuleID(ruleID string) {
	o.RuleID = ruleID
}

// WriteToRequest writes these params to a swagger request
func (o *GetModerationRuleDetailsParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	// path param ruleId
	if err := r.SetPathParam("ruleId", o.RuleID); err != nil {
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
