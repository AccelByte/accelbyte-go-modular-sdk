// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package group_member

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

// NewLeaveGroupPublicV2Params creates a new LeaveGroupPublicV2Params object
// with the default values initialized.
func NewLeaveGroupPublicV2Params() *LeaveGroupPublicV2Params {
	var ()
	return &LeaveGroupPublicV2Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewLeaveGroupPublicV2ParamsWithTimeout creates a new LeaveGroupPublicV2Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewLeaveGroupPublicV2ParamsWithTimeout(timeout time.Duration) *LeaveGroupPublicV2Params {
	var ()
	return &LeaveGroupPublicV2Params{

		timeout: timeout,
	}
}

// NewLeaveGroupPublicV2ParamsWithContext creates a new LeaveGroupPublicV2Params object
// with the default values initialized, and the ability to set a context for a request
func NewLeaveGroupPublicV2ParamsWithContext(ctx context.Context) *LeaveGroupPublicV2Params {
	var ()
	return &LeaveGroupPublicV2Params{

		Context: ctx,
	}
}

// NewLeaveGroupPublicV2ParamsWithHTTPClient creates a new LeaveGroupPublicV2Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewLeaveGroupPublicV2ParamsWithHTTPClient(client *http.Client) *LeaveGroupPublicV2Params {
	var ()
	return &LeaveGroupPublicV2Params{
		HTTPClient: client,
	}
}

/*LeaveGroupPublicV2Params contains all the parameters to send to the API endpoint
for the leave group public v2 operation typically these are written to a http.Request
*/
type LeaveGroupPublicV2Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*GroupID
	  Group ID

	*/
	GroupID string
	/*Namespace
	  namespace

	*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the leave group public v2 params
func (o *LeaveGroupPublicV2Params) WithTimeout(timeout time.Duration) *LeaveGroupPublicV2Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the leave group public v2 params
func (o *LeaveGroupPublicV2Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the leave group public v2 params
func (o *LeaveGroupPublicV2Params) WithContext(ctx context.Context) *LeaveGroupPublicV2Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the leave group public v2 params
func (o *LeaveGroupPublicV2Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the leave group public v2 params
func (o *LeaveGroupPublicV2Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the leave group public v2 params
func (o *LeaveGroupPublicV2Params) WithHTTPClient(client *http.Client) *LeaveGroupPublicV2Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the leave group public v2 params
func (o *LeaveGroupPublicV2Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the leave group public v2 params
func (o *LeaveGroupPublicV2Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *LeaveGroupPublicV2Params) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithGroupID adds the groupID to the leave group public v2 params
func (o *LeaveGroupPublicV2Params) WithGroupID(groupID string) *LeaveGroupPublicV2Params {
	o.SetGroupID(groupID)
	return o
}

// SetGroupID adds the groupId to the leave group public v2 params
func (o *LeaveGroupPublicV2Params) SetGroupID(groupID string) {
	o.GroupID = groupID
}

// WithNamespace adds the namespace to the leave group public v2 params
func (o *LeaveGroupPublicV2Params) WithNamespace(namespace string) *LeaveGroupPublicV2Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the leave group public v2 params
func (o *LeaveGroupPublicV2Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *LeaveGroupPublicV2Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param groupId
	if err := r.SetPathParam("groupId", o.GroupID); err != nil {
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
