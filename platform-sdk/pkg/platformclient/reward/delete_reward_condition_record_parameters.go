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

// NewDeleteRewardConditionRecordParams creates a new DeleteRewardConditionRecordParams object
// with the default values initialized.
func NewDeleteRewardConditionRecordParams() *DeleteRewardConditionRecordParams {
	var ()
	return &DeleteRewardConditionRecordParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewDeleteRewardConditionRecordParamsWithTimeout creates a new DeleteRewardConditionRecordParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewDeleteRewardConditionRecordParamsWithTimeout(timeout time.Duration) *DeleteRewardConditionRecordParams {
	var ()
	return &DeleteRewardConditionRecordParams{

		timeout: timeout,
	}
}

// NewDeleteRewardConditionRecordParamsWithContext creates a new DeleteRewardConditionRecordParams object
// with the default values initialized, and the ability to set a context for a request
func NewDeleteRewardConditionRecordParamsWithContext(ctx context.Context) *DeleteRewardConditionRecordParams {
	var ()
	return &DeleteRewardConditionRecordParams{

		Context: ctx,
	}
}

// NewDeleteRewardConditionRecordParamsWithHTTPClient creates a new DeleteRewardConditionRecordParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewDeleteRewardConditionRecordParamsWithHTTPClient(client *http.Client) *DeleteRewardConditionRecordParams {
	var ()
	return &DeleteRewardConditionRecordParams{
		HTTPClient: client,
	}
}

/*DeleteRewardConditionRecordParams contains all the parameters to send to the API endpoint
for the delete reward condition record operation typically these are written to a http.Request
*/
type DeleteRewardConditionRecordParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *platformclientmodels.DeleteRewardConditionRequest
	/*Namespace
	  Namespace

	*/
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

// WithTimeout adds the timeout to the delete reward condition record params
func (o *DeleteRewardConditionRecordParams) WithTimeout(timeout time.Duration) *DeleteRewardConditionRecordParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the delete reward condition record params
func (o *DeleteRewardConditionRecordParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the delete reward condition record params
func (o *DeleteRewardConditionRecordParams) WithContext(ctx context.Context) *DeleteRewardConditionRecordParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the delete reward condition record params
func (o *DeleteRewardConditionRecordParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the delete reward condition record params
func (o *DeleteRewardConditionRecordParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the delete reward condition record params
func (o *DeleteRewardConditionRecordParams) WithHTTPClient(client *http.Client) *DeleteRewardConditionRecordParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the delete reward condition record params
func (o *DeleteRewardConditionRecordParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the delete reward condition record params
func (o *DeleteRewardConditionRecordParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *DeleteRewardConditionRecordParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the delete reward condition record params
func (o *DeleteRewardConditionRecordParams) WithBody(body *platformclientmodels.DeleteRewardConditionRequest) *DeleteRewardConditionRecordParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the delete reward condition record params
func (o *DeleteRewardConditionRecordParams) SetBody(body *platformclientmodels.DeleteRewardConditionRequest) {
	o.Body = body
}

// WithNamespace adds the namespace to the delete reward condition record params
func (o *DeleteRewardConditionRecordParams) WithNamespace(namespace string) *DeleteRewardConditionRecordParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the delete reward condition record params
func (o *DeleteRewardConditionRecordParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithRewardID adds the rewardID to the delete reward condition record params
func (o *DeleteRewardConditionRecordParams) WithRewardID(rewardID string) *DeleteRewardConditionRecordParams {
	o.SetRewardID(rewardID)
	return o
}

// SetRewardID adds the rewardId to the delete reward condition record params
func (o *DeleteRewardConditionRecordParams) SetRewardID(rewardID string) {
	o.RewardID = rewardID
}

// WriteToRequest writes these params to a swagger request
func (o *DeleteRewardConditionRecordParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
